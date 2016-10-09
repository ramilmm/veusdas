<#include "spisokApp.ftl">
<#if publicApplications?? && publicApplications?has_content>
    <#list publicApplications as q>
        <@public app=q />
    </#list>
</#if>