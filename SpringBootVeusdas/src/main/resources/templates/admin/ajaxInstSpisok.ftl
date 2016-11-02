<#include "instApp.ftl">
<#if instApplications?? && instApplications?has_content>
    <#list instApplications as q>
        <@inst inst=q />
    </#list>
</#if>