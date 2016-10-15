<#macro question question >
<tr class="row${question.id}">
    <td>${question.question}</td>
    <td>${question.name}</td>
    <td>${question.email}</td>
    <td>
        <textarea name="reply" id="reply${question.id}" cols="30" rows="1"></textarea>
    </td>
    <td id="rep"><a href="#" class="sendReply" data-id="${question.id}">Ответить</a></td>
</tr>

</#macro>