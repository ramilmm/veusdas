<#macro public app>
    <tr class="row${app.id}">
        <td>${app.name}</td>
        <td>${app.stat_link}</td>
        <td>${app.subscribes}</td>
        <td>${app.cost}</td>
        <td>${app.admin_link}</td>
        <td>
            <div class="buttons">
                <a href="#" class="accept acceptSpisok" data-id="${app.id}">Принять</a>
                <a href="#" class="delete deleteSpisok" data-id="${app.id}">Отклонить</a>
            </div>
        </td>
    </tr>
</#macro>