<#--页脚ok-->
<footer class="py-4 border-top bg-white">
    <div class="container d-flex flex-md-row flex-column justify-content-between align-items-center px-lg-2">
        <div>
            <span class="text-muted"><@global.footer/></span>
            <span><a class="text-dark" href="https://langjialing.com">郎家岭伯爵</a></span>
        </div>
        <div>
            <span class="text-muted font-weight-bold " style="text-align: center"><a href="https://beian.miit.gov.cn/" target="_blank">晋ICP备2022007258号</a></span>
        </div>
        <div class="link-info mt-md-0 mt-4">
            <#--RSS-->
            <#if (settings.open_rss)?? && settings.open_rss?c == 'true'>
                <a class="text-dark mr-3" target="_blank" href="${atom_url!}">
                    <i class="fas fa-rss"></i>
                </a>
            </#if>
            <#--Github-->
            <#if (settings.github_url)?? && settings.github_url?trim != ''>
                <a class="text-dark mr-3" target="_blank"
                   href="${settings.github_url!}">
                    <i class="fab fa-github"></i>
                </a>
            </#if>
            <#-- QQ账号
            <#if (settings.qq_number)?? && settings.qq_number?trim != ''>
                <a class="text-dark mr-3" target="_blank"
                   href="http://wpa.qq.com/msgrd?v=3&uin=${settings.qq_number!}&site=qq&menu=yes">
                    <i class="fab fa-qq"></i>
                </a>
            </#if>
            -->
            <#--新浪微博-->
            <#if (settings.weibo_url)?? && settings.weibo_url?trim != ''>
                <a class="text-dark mr-3" target="_blank"
                   href="${settings.weibo_url!}">
                    <i class="fab fa-weibo"></i>
                </a>
            </#if>
            <#--推特账号-->
            <#if (settings.twitter_account)?? && settings.twitter_account?trim != ''>
                <a class="text-dark mr-3" target="_blank"
                   href="https://twitter.com/${settings.twitter_account!}">
                    <i class="fab fa-twitter"></i>
                </a>
            </#if>
            <#--邮箱地址-->
            <#if (settings.email_address)?? && settings.email_address?trim != ''>
                <a class="text-dark" href="mailto:${settings.email_address!}">
                    <i class="fas fa-envelope"></i>
                </a>
            </#if>
        </div>
    </div>

    <p class="text-muted" style=" font-size: 14px; text-align: center; padding: 23px;">
        Copyright &copy; 2021 - 2023
        <a href="https://langjialing.com" class="text-muted">
            郎家岭伯爵
        </a>.
        <span>All Rights Reserved.</span>
    </p>
</footer>
