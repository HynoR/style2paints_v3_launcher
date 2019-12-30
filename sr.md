;不要随意改变关键字，否则会导致出错--hypeneko

;设置规则标志位
surge_ruleset=DIRECT,rules/ConnersHua/Surge/Ruleset/Unbreak.list
surge_ruleset=🛑 全球拦截,rules/NobyDa/Surge/AdRule.list
surge_ruleset=🛑 全球拦截,rules/ConnersHua/Surge/Ruleset/Hijacking.list
surge_ruleset=📹 YouTube,rules/ConnersHua/Surge/Ruleset/Media/YouTube.list
surge_ruleset=🎥 NETFLIX,rules/ConnersHua/Surge/Ruleset/Media/Netflix.list
surge_ruleset=🌍 国外媒体,https://raw.githubusercontent.com/ConnersHua/Profiles/master/Surge/Ruleset/GlobalMedia.list
surge_ruleset=🌏 国内媒体,rules/lhie1/Surge3/Domestic.list
surge_ruleset=📲 电报代理,rules/ConnersHua/Surge/Ruleset/Telegram.list
surge_ruleset=🔰 线路选择,rules/ConnersHua/Surge/Ruleset/Global.list
surge_ruleset=DIRECT,rules/ConnersHua/Surge/Ruleset/China.list
surge_ruleset=DIRECT,rules/NobyDa/Surge/Download.list
surge_ruleset=DIRECT,[]GEOIP,CN
surge_ruleset=🐟 漏网之鱼,[]FINAL
;设置规则标志位

;设置分组标志位
custom_proxy_group=🔰 线路选择`select`[]🚀 CN2节点`[]🛰 IPLC节点`[]DIRECT
custom_proxy_group=🚀 CN2节点`select`[]✈ 自动cn2`(CN2|HINET)
custom_proxy_group=🛰 IPLC节点`select`[]✈ 自动iplc`(IPLC)
custom_proxy_group=📲 电报代理`select`[]🔰 线路选择`[]🛰 IPLC节点`[]DIRECT
custom_proxy_group=📹 YouTube`select`[]🔰 线路选择`[]🛸 BGP隧道节点`[]🚀 CN2节点`[]DIRECT
custom_proxy_group=🌍 国外媒体`select`[]🔰 线路选择`[]DIRECT
custom_proxy_group=🌏 国内媒体`select`[]DIRECT`[]🔰 线路选择
custom_proxy_group=🛑 全球拦截`select`[]REJECT`[]DIRECT
custom_proxy_group=🐟 漏网之鱼`select`[]🔰 线路选择`[]DIRECT
custom_proxy_group=✈ 自动cn2`url-test`(CN2|HINET)`http://www.gstatic.com/generate_204`500
custom_proxy_group=✈ 自动iplc`url-test`(IPLC)`http://www.gstatic.com/generate_204`500
custom_proxy_group=✈ 故障切换`select`[]DIRECT
custom_proxy_group=✈ 延迟最低`select`[]DIRECT
;设置分组标志位
