<#include "advert.ftl">
<#if advertsApplications?? && advertsApplications?has_content>
    <#list advertsApplications as q>
        <@advert adv=q />
    </#list>
</#if>