module WinAppIndex
export newapp, change_notes!, change_download!
export WinApp, WIN_APP_INDEX, WAI
using URIs
using Nettle

WAI = WinAppIndex

primitive type WinAppId 256 end
WinAppId(idname::String) = reinterpret(WinAppId, reverse(UInt8.(Int64.([hexdigest("md5", idname)...]))))[1]

mutable struct WinAppInfo
    idname      ::  String
    #using underline for displacing space
    #在遵循原作英文名的前提下，尽可能的采取首字母大写的形式。
    names       ::  Set{String}
    #names is for non-ascii-characters/full-name/nick-name
    #shouldn't be lowercase/uppercase/Camel-Case/UnderScoreCase/Pascal-Case
    #exceptable, if app's shortname is not by word, then you may need to add it in names
    download    ::  URI
    #以最直接下载页面为主，流程略复杂时以下载说明主页为主
    notes       ::  String
    #For anything need be mentioned
end

WinApp = Pair{WinAppId, WinAppInfo}
check(app::WinApp) = app[1]!=WinAppId(app[2].idname) ? throw(ErrorException("AppId and idname mismatched!")) :  nothing
function check(wai::Dict{WinAppId, WinAppInfo})
    for app in wai
        try
            check(app)
        catch
            throw(ErrorException("AppId and idname mismatched! idname:$(app[2].idname)"))
        end
    end
end

WIN_APP_INDEX = Dict{WinAppId, WinAppInfo}()
function Base.getindex(dict::Dict{WinAppId, WinAppInfo}, key::String)
    getindex(dict, WinAppId(key))
end

function newapp(idname::String, download::String, names::String...; notes::String="")
    id = WinAppId(idname)
    info = WinAppInfo(
        idname,
        Set(names),
        URI(download),
        notes,
    )
    return WinApp(id, info)
end
newapp(app::NTuple) = newapp(app...)

function change_notes!(appinfo::WinAppInfo, notes::String)
    appinfo.notes != "" ? throw(ErrorException("notes in appinfo is not empty")) : nothing
    appinfo.notes = notes
end
change_notes!(app::WinApp, notes::String) = change_notes!(app[2], notes)

function change_download!(appinfo::WinAppInfo, download::String)
    appinfo.download = URI(download)
end
change_download!(app::WinApp, download::String) = change_download!(app[2], download)

end