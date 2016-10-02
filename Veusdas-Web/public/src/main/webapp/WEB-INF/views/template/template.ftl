<#macro mainTemplate title="Veusdas" styles=[] scripts=[] headerBannerClass="banner" >
<!DOCTYPE HTML>
<html lang="ru">
<head>
    <title>${title}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">


    <#list styles as css>
        <link rel="stylesheet" href="/resources/${css}" type="text/css" />
    </#list>

    <script type="text/javascript" src="/resources/js/jquery-1.9.1.min.js"></script>

    <#list scripts as js>
        <script src="/resources/${js}" type="text/javascript" defer></script>
    </#list>
</head>
    <@m_body />
</html>
</#macro>