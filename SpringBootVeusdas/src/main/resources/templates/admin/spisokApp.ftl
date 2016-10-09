<#macro public app>
    <tr class="row${app.id}">
        <td>${app.name}</td>
        <td>${app.stat_link}</td>
        <td>${app.subscribes}</td>
        <td>${app.cost}</td>
        <td>${app.admin_link}</td>
        <td>
            <div class="buttons">
                <span class="accept acceptSpisok" data-id="${app.id}">Принять</span>
                <span class="delete deleteSpisok" data-id="${app.id}">Отклонить</span>
            </div>
        </td>
    </tr>
</#macro>