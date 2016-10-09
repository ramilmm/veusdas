<#include "advertList.ftl">
<#if adverts?? && adverts?has_content>
    <#list adverts as q>
        <@advertList ad=q />
    </#list>
</#if>