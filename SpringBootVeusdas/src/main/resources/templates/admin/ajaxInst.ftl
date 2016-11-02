<#include "inst.ftl">
<#if inst?? && inst?has_content>
    <#list inst as q>
        <@inst inst=q />
    </#list>
</#if>