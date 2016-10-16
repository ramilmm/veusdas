<#macro advert adv>
<tr class="row${adv.id}">
    <td>
        <#if adv.avatar_link??>
            ${adv.avatar_link}
        <#else >
           null
        </#if>

    </td>
    <td>${adv.advert_name}</td>
    <td><a href="${adv.profile_link}">Профиль вк</a></td>
    <td>${adv.cost}</td>
    <td>${adv.advert_type}</td>
    <td>${adv.comment}</td>
    <td>
        <div class="buttons">
            <a href="#" class="accept acceptAppAdv" data-id="${adv.id}">Принять</a>
            <a href="#" class="delete deleteAppAdv" data-id="${adv.id}">Отклонить</a>
        </div>
    </td>
</tr>
</#macro>