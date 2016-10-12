<#macro spisok public>
<tr class="row${public.id}">
    <td><input type="text" id="nameSpisok"  value="${public.name}" maxlength="60"></td>
    <td><input type="text" id="stat_linkSpisok"  value="${public.stat_link}" maxlength="70"></td>
    <td><input type="text" id="subscribesSpisok"  value="${public.subscribes}" maxlength="20"></td>
    <td><select id="okhvatSpisok" class="okhvat${public.id}" >
        <option value>- Охват пабликa -</option>
        <option value="20">>20.000</option>
        <option value="50">>50.000</option>
        <option value="100">>100.000</option>
    </select></td>
    <script>
        $(document).ready(function () {
            $('.okhvat${public.id}').val('${public.public_category}');
        });
    </script>
    <td><input type="text" value="${public.cost}" maxlength="10"></td>
    <td><input type="text" id="admin_linkSpisok"  value="${public.admin_link}" maxlength="100"></td>
    <td>
        <div class="buttons">
            <a href="#" class="accept acceptEditing" data-id="${public.id}">Сохранить</a>
            <a href="#" class="delete deletePublic" data-id="${public.id}">Удалить</a>
        </div>
    </td>
</tr>
</#macro>