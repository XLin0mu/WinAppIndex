















include("./WinAppIndex.jl")
using Main.WinAppIndex

apps = newapp.([
    ("QQ", "https://im.qq.com/pcqq", "TencentQQ"),
    ("QQMusic", "https://y.qq.com/download/download.html", "QQ音乐"),
    ("Git", "https://git-scm.com/download/win"),
    ("Python", "https://www.python.org/downloads/windows/"),
    ("DBBrowser", "http://www.sqlitebrowser.org/dl/"),
    ("OfficeToolPlus", "https://otp.landian.vip/zh-cn/download.html"),
    ("StarRail", "https://sr.mihoyo.com", "崩坏：星穹铁道", "星铁", "崩铁"),
    ("GenshinImpact", "https://ys.mihoyo.com/", "YuanShen", "原神"),
    ("VSCode", "https://code.visualstudio.com/Download", "MicrosoftVisualStudioCode"),
    ("QQBrowser", "https://browser.qq.com/", "QQ浏览器"),
    ("QQPCMgr", "https://guanjia.qq.com/", "腾讯电脑管家"),
    ("WinRAR", "https://www.winrar.com/"),
    ("SogouInput", "https://shurufa.sogou.com/", "sougoushurufa", "搜狗输入法", "sogoupinyin", "搜狗拼音"),
    ("DobotStudio", "http://dobot.cn/service/download-center", "DobotStudio Pro"),
    ("DobotLab", "http://dobot.cn/service/download-center", "DobotLab Win"),
    ("Bilibili", "https://app.bilibili.com/"),
    ("Julia", "https://julialang.org/downloads/"),
    ("StrongVPN", "https://strongvpn.com/vpn-apps/windows/"),
    ("Real-ESRGAN", "https://github.com/xinntao/Real-ESRGAN"),
    ("Real-ESRGAN-GUI", "https://github.com/TransparentLC/realesrgan-gui/releases"),
    ("steamcommunity_302", "https://www.dogfight360.com/blog/686/"),
    ("FastGitHub", "https://github.com/dotnetcore/FastGithub/releases"),
    ("TEdit", "https://github.com/TEdit/Terraria-Map-Editor/releases", "Terraria-Map-Editor"),
    ("SpaceSniffer", "https://github.com/redtrillix/SpaceSniffer/releases"),
    ("SpaceSnifferCHS", "https://github.com/Xlin0mu/TinysWinAppZhMirror/"),
    ("xunkong", "https://xunkong.cc/download/xunkong.html", "寻空"),
    ("Starward", "https://github.com/Scighost/Starward/releases"),
    ("Collapse", "https://github.com/neon-nyan/Collapse/releases", "米家启动器"),
    ("FindGlobalHotKey", "https://www.zhihu.com/question/21020398/answer/989951735", "全局热键查找", "热键查看"),
    ("IDM", "https://www.internetdownloadmanager.com/download.html", "InternetDownloadManager"),
    ("Steam++", "https://github.com/BeyondDimension/SteamTools/releases", "Watt Toolkit", "Steam Tools"),
    ("Honeyview", "https://en.bandisoft.com/honeyview/", "蜂蜜看图器", "蜂蜜浏览器"),
    ("Snipaste", "https://www.snipaste.com/"),
    ("Everything", "https://voidtools.com/"),
    ("CheatEngine", "https://www.cheatengine.org/downloads.php"),
    ("ContextMenuManager", "https://github.com/BluePointLilac/ContextMenuManager/releases"),
    ("ffmpeg", "https://ffmpeg.org/download.html#build-windows"),
    ("GenP", "https://www.cybermania.ws/software/adobe-genp/"),
    ("Notepad++", "https://notepad-plus-plus.org/downloads/"),
    ("SublimeText", "https://www.sublimetext.com/download"),
    ("WinNTSetup", "https://msfn.org/board/profile/314753-jfx/"),
    ("PointerFocus", "https://www.pointerfocus.com/"),
    ("DiskGenius", "https://www.diskgenius.cn/", "DiskMan"),
    ("KPS-CKAN", "https://github.com/KSP-CKAN/CKAN/releases", "Comprehensive Kerbal Archive Network"),
    ("Typora", "https://typora.io/"),
    ("Nodejs", "https://nodejs.org/en", "Node.js"),
    ("MinGW-w64", "https://github.com/niXman/mingw-builds-binaries/releases"),
    ("COSBrowser", "https://cloud.tencent.com/document/product/436/38103"),
    ("AIDA64", "https://www.aida64.com/downloads"),
    ("CPU-Z", "https://www.cpuid.com/softwares/cpu-z.html"),
    ("Thaiphoon", "http://www.softnology.biz/files.html", "Thaiphoon Burner"),
    ("GAOMANG22driver", "https://www.gaomon.cn/Pen_Display/G22.html"),
    ("OBS-Studio", "https://obsproject.com/"),
    ("BiliLive", "https://live.bilibili.com/liveHime/download", "livehime"),
    ("WeGame", "https://www.wegame.com.cn/client/"),
    ("WeChat", "https://pc.weixin.qq.com/", "微信", "weixin"),
    ("WXWork", "https://work.weixin.qq.com/#indexDownload", "企业微信", "WeCom"),
    ("Thunder", "https://www.xunlei.com", "迅雷", "xunlei"),
    ("TencentMeeting", "https://meeting.tencent.com/download/", "腾讯会议", "WeMeet"),
    ("QQLive", "https://v.qq.com/download.html", "腾讯视频"),
    ("BaiduNetdisk", "https://pan.baidu.com/download#win", "百度云管家", "百度网盘", "百度云"),
    ("CCTalk", "https://www.cctalk.com/download"),
    ("Microvirt", "https://www.xyaz.cn/", "逍遥模拟器"),
    ("DingTalk", "https://page.dingtalk.com/wow/z/dingtalk/simple/ddhomedownload#/", "DingDing", "钉钉"),
    ("Steam", "https://store.steampowered.com/about/"),
    ("SteamChina", "https://store.steamchina.com/about/", "蒸汽平台"),
    ("Adobe", "https://creativecloud.adobe.com/apps/download/creative-cloud"),
    ("Mathematica", "https://www.wolfram.com/mathematica/", "mma"),
    ("AutoDesk", "https://manage.autodesk.com/products", "欧特克"),
    ("7-Zip", "https://www.7-zip.org/"),
    ("NanaZip", "https://sourceforge.net/projects/nanazip/"),
    ("BCut", "https://bcut.bilibili.cn/", "必剪"),
    ("Honkai Impact 3", "https://www.bh3.com/", "崩坏3", "BH3"),
    ("LeiGod_ACC", "https://www.leigod.com/download-win.html", "雷神加速器"),
    ("Java8", "https://www.java.com/en/download/manual.jsp"),
    ("NavicatPremium", "https://www.navicat.com.cn/download/navicat-premium"),
    ("MySQLCommunity", "https://dev.mysql.com/downloads/installer/"),
    ("Superposition Benchmark", "https://benchmark.unigine.com/superposition"),
    ("ToDesk", "https://www.todesk.com/download.html"),
    ("Zotero", "https://www.zotero.org/download/"),
    ("按键精灵", "http://download.myanjian.com/", ""),
    ("GitHubDesktop", "https://desktop.github.com/"),
    ("ProcessExplorer", "https://learn.microsoft.com/en-us/sysinternals/downloads/process-explorer"),
    ("MWorks.SysLab", "https://www.tongyuan.cc/download"),
    ("Geogebra", "https://www.geogebra.org/download"),
    ("FileFormatViewer", "https://github.com/Xlin0mu/TinysWinAppZhMirror/", "文件格式查看器", "文件格式识别"),
    ("Discord", "https://discord.com/"),
    ("Fiddler", "https://www.telerik.com/download/fiddler"),
    ("YuewenEdit", "https://write.qq.com/download")
])

for app in apps
    push!(WIN_APP_INDEX, app)
end

change_notes!(WIN_APP_INDEX["Julia"], "注意环境配置mind for environment, 中科大镜像https://mirrors.ustc.edu.cn/julia-releases/bin/winnt/x64/")
change_notes!(WIN_APP_INDEX["QQPCMgr"], "个人建议下V15 recommend")
change_notes!(WIN_APP_INDEX["WinRAR"], "cn版官网https://www.winrar.com.cn/, 终身免费有广告, en原版为试用版")
change_notes!(WIN_APP_INDEX["FindGlobalHotKey"], "github没有, google也搜不到, 原来是自己人写的, 其他渠道获取的软件发布时间20200129T23:17, 回答时间同日23:25/23:47大概率保真")
change_notes!(WIN_APP_INDEX["IDM"], "中文破解https://github.com/System3206/IDM")
change_notes!(WIN_APP_INDEX["Git"], "汉化https://github.com/stayor/git-gui-zh")
change_notes!(WIN_APP_INDEX["CheatEngine"], "官方Installer里面捆绑东西了, 安完以后记得删东西attention to bundle install(md一天天tm好的不学学的什么b东西)")
change_notes!(WIN_APP_INDEX["ffmpeg"], "注意环境配置mind for environment")
change_notes!(WIN_APP_INDEX["DiskGenius"], "又是一颗国产良心. English Version at https://www.diskgenius.com")
change_notes!(WIN_APP_INDEX["KPS-CKAN"], "爱发电换源https://kerbcat.com/articles/27209")
change_notes!(WIN_APP_INDEX["Typora"], "中文官网https://typoraio.cn/")
change_notes!(WIN_APP_INDEX["AutoDesk"], "建议安装到默认路径, 之后再做硬链接, 不然很tm容易出Bug")
change_notes!(WIN_APP_INDEX["Adobe"], "建议先在里面下载所有要下的Adobe家产品, 然后再上GenP")
change_notes!(WIN_APP_INDEX["Mathematica"], "不买的话去贴吧")
change_notes!(WIN_APP_INDEX["Geogebra"], "跑一遍以后会安装到/Users/XLin0mu/AppData/Local/GeoGebra_6下面")
change_notes!(WIN_APP_INDEX["FileFormatViewer"], "类似的软件有很多, 只是选了一个个人常用的")

WAI.check(WIN_APP_INDEX)