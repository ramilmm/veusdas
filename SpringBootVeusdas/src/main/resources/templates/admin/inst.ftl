<#macro inst inst>
<tr class="row${inst.id}">
    <td><input type="text" id="nameInst" value="${inst.name}" maxlength="60"></td>
    <td><input type="text" id="subscribesInst" value="${inst.subscribes}" maxlength="20"></td>
    <td><input type="text" id="costInst" value="${inst.cost}" maxlength="10"></td>
    <td><input type="text" id="admin_linkInst" value="${inst.admin_link}" maxlength="100"></td>
    <td>
        <div class="buttons">
            <a href="#"  class="accept acceptEditingInst" data-id="${inst.id}">Сохранить</a>
            <a href="#"  class="delete deleteInst" data-id="${inst.id}">Удалить</a>
        </div>
    </td>
</tr>
</#macro>