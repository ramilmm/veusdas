<#include "question.ftl">
<#if questions?? && questions?has_content>
    <#list questions as q>
        <@question question=q />
    </#list>
</#if>