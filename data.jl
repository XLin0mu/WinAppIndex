include("./WinAppIndex.jl")
using Main.WinAppIndex
using JSON

include("./data.json")

apps = newapp.(JSON.parsefile("./data.json"))

for app in apps
    push!(WIN_APP_INDEX, app)
end

change_notes!(WIN_APP_INDEX["Julia"], "注意环境配置mind for environment, 中科大镜像https://mirrors.ustc.edu.cn/julia-releases/bin/winnt/x64/")
change_notes!(WIN_APP_INDEX["QQPCMgr"], "个人建议下V15 recommend")
change_notes!(WIN_APP_INDEX["WinRAR"], "cn版官网https://www.winrar.com.cn/, 终身免费有广�?, en原版为试用版")
change_notes!(WIN_APP_INDEX["FindGlobalHotKey"], "github没有, google也搜不到, 原来是自己人写的, 其他渠道获取的软件发布时�?20200129T23:17, 回答时间同日23:25/23:47大概率保�?")
change_notes!(WIN_APP_INDEX["IDM"], "中文破解https://github.com/System3206/IDM")
change_notes!(WIN_APP_INDEX["Git"], "汉化https://github.com/stayor/git-gui-zh")
change_notes!(WIN_APP_INDEX["CheatEngine"], "官方Installer里面捆绑东西�?, 安完以后记得删东西attention to bundle install(md一天天tm好的不学学的什么b东西)")
change_notes!(WIN_APP_INDEX["ffmpeg"], "注意环境配置mind for environment")
change_notes!(WIN_APP_INDEX["DiskGenius"], "又是一颗国产良�?. English Version at https://www.diskgenius.com")
change_notes!(WIN_APP_INDEX["KPS-CKAN"], "爱发电换源https://kerbcat.com/articles/27209")
change_notes!(WIN_APP_INDEX["Typora"], "中文官网https://typoraio.cn/")
change_notes!(WIN_APP_INDEX["AutoDesk"], "建议安装到默认路�?, 之后再做硬链�?, 不然很tm容易出Bug")
change_notes!(WIN_APP_INDEX["Adobe"], "建议先在里面下载所有要下的Adobe家产�?, 然后再上GenP")
change_notes!(WIN_APP_INDEX["Mathematica"], "不买的话去贴�?")
change_notes!(WIN_APP_INDEX["Geogebra"], "跑一遍以后会安装�?/Users/XLin0mu/AppData/Local/GeoGebra_6下面")
change_notes!(WIN_APP_INDEX["FileFormatViewer"], "类似的软件有很多, 只是选了一个个人常用的")

WAI.check(WIN_APP_INDEX)