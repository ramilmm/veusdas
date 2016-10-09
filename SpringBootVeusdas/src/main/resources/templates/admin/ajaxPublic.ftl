<#include "public.ftl">
<#if spisok?? && spisok?has_content>
    <#list spisok as q>
        <@spisok public=q />
    </#list>
</#if>