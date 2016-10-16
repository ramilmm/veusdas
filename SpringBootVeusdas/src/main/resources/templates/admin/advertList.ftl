<#macro advertList ad>
<tr>
    <td><input type="text" id="avatar${ad.id}" value="${ad.avatar_link}"></td>
    <td><input type="text" id="nameAdvert${ad.id}" value="${ad.advert_name}" maxlength="60"></td>
    <td><input type="text" id="profileAdvert${ad.id}" value="${ad.profile_link}" maxlength="220"></td>
    <td><input type="text" id="costAdvert${ad.id}" value="${ad.cost}" maxlength="12"></td>
    <td>
        <select name="type" id="typeAdvert${ad.id}" class="type${ad.id}">
            <option value>- Тип объявления -</option>
            <option value="1">Продажа</option>
            <option value="2">Аренда</option>
            <option value="3">ВПШЕР</option>
            <option value="4">Дизайнер</option>
            <option value="5">Менеджер по рекламе</option>
            <option value="6">Заливщик</option>
            <option value="7">Прочее</option>
        </select>
        <script>
            $(document).ready(function () {
                switch (${ad.advert_type}){
                    case "Продажа":
                        $('.type${ad.id}').val(1);
                        break;
                    case "Аренда":
                        $('.type${ad.id}').val(2);
                        break;
                    case "ВПШЕР":
                        $('.type${ad.id}').val(3);
                        break;
                    case "Дизайнер":
                        $('.type${ad.id}').val(4);
                        break;
                    case "Менеджер по рекламе":
                        $('.type${ad.id}').val(5);
                        break;
                    case "Заливщик":
                        $('.type${ad.id}').val(6);
                        break;
                    case "Прочее":
                        $('.type${ad.id}').val(7);
                        break;
                }
            });
        </script>
    </td>
    <td><input type="text" id="commentAdvert${ad.id}" value="${ad.comment}"  maxlength="200"></td>
    <td>
        <div class="buttons">
            <a href="#"  class="accept acceptEditingAdv" data-id="${ad.id}">Сохранить</a>
            <a href="#"  class="delete deleteAdv" data-id="${ad.id}">Удалить</a>
        </div>
    </td>
</tr>
</#macro>