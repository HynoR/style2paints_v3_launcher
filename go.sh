;不要随意改变关键字，否则会导致出错

;设置规则标志位
surge_ruleset=DIRECT,rules/ConnersHua/Surge/Ruleset/Unbreak.list
surge_ruleset=🛑 全球拦截,rules/NobyDa/Surge/AdRule.list
surge_ruleset=🛑 全球拦截,rules/ConnersHua/Surge/Ruleset/Hijacking.list
surge_ruleset=🌍 国外媒体,https://raw.githubusercontent.com/ConnersHua/Profiles/master/Surge/Ruleset/GlobalMedia.list
surge_ruleset=🌏 国内媒体,rules/lhie1/Surge3/Domestic.list
surge_ruleset=🔰 节点选择,rules/ConnersHua/Surge/Ruleset/Global.list
surge_ruleset=DIRECT,rules/ConnersHua/Surge/Ruleset/China.list
surge_ruleset=DIRECT,rules/NobyDa/Surge/Download.list
surge_ruleset=DIRECT,[]GEOIP,CN
surge_ruleset=🐟 漏网之鱼,[]FINAL
;设置规则标志位

;设置分组标志位
custom_proxy_group=🔰 节点选择`select`[]✈ 手动选择`[]✈ 延迟最低`[]DIRECT`(公告|地址)
custom_proxy_group=📲 香港5倍`select`[]🔰 节点选择`[]✈ 手动选择`[]✈ 延迟最低`(香港HKT-5倍)
custom_proxy_group=📹 香港1倍`select`[]🔰 节点选择`[]✈ 手动选择`[]✈ 延迟最低`(香港HKT-A|香港HKT-B|香港HGC)
custom_proxy_group=🎥 台湾`select`[]🔰 节点选择`[]✈ 手动选择`[]✈ 延迟最低`(台湾)
custom_proxy_group=📺 美国`select`[]🔰 节点选择`[]✈ 手动选择`[]✈ 延迟最低`(美国)
custom_proxy_group=📺 日本`select`[]🔰 节点选择`[]✈ 手动选择`[]✈ 延迟最低`(日本)
custom_proxy_group=📺 新加坡`select`[]🔰 节点选择`[]✈ 手动选择`[]✈ 延迟最低`(新加坡)
custom_proxy_group=🌍 国外媒体`select`[]🔰 节点选择`[]✈ 手动选择`[]✈ 延迟最低`[]DIRECT
custom_proxy_group=🌏 国内媒体`select`[]DIRECT`[]🔰 节点选择`[]✈ 手动选择`[]✈ 延迟最低
custom_proxy_group=🍎 苹果服务`select`[]DIRECT`[]🔰 节点选择`[]✈ 手动选择`[]✈ 延迟最低`[]✈ 故障切换
custom_proxy_group=🛑 全球拦截`select`[]REJECT`[]DIRECT
custom_proxy_group=🐟 漏网之鱼`select`🔰 节点选择`select`[]✈ 手动选择`[]✈ 延迟最低`[]DIRECT
custom_proxy_group=✈ 手动选择`select`.*
custom_proxy_group=✈ 延迟最低`url-test`.*`http://www.gstatic.com/generate_204`500
;设置分组标志位
;1
