<#macro inst inst>
<tr class="row${inst.id}">
    <td>${inst.name}</td>
    <td>${inst.subscribes}</td>
    <td>${inst.cost}</td>
    <td>${inst.admin_link}</td>
    <td>
        <div class="buttons">
            <a href="#"  class="accept acceptInst" data-id="${inst.id}">Принять</a>
            <a href="#"  class="delete deleteInst" data-id="${inst.id}">Отклонить</a>
        </div>
    </td>
</tr>
</#macro>