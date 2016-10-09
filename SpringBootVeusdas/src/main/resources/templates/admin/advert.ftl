<#macro advert adv>
<tr class="row${adv.id}">
    <td>${adv.advert_name}</td>
    <td><a href="${adv.profile_link}">Профиль вк</a></td>
    <td>${adv.cost}</td>
    <td>${adv.advert_type}</td>
    <td>${adv.comment}</td>
    <td>
        <div class="buttons">
            <span class="accept acceptAppAdv" data-id="${adv.id}">Принять</span>
            <span class="delete deleteAppAdv" data-id="${adv.id}">Отклонить</span>
        </div>
    </td>
</tr>
</#macro>