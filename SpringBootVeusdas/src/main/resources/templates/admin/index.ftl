<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8"/>

    <title>Admin page</title>
    <script src="../../static/admin/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="../../static/admin/css/style.css"/>
    <link rel="stylesheet" href="../../static/admin/css/bootstrap.min.css"/>
</head>
<body class="admin">

<div class="container">
    <div class="row">
            <div class="col-md-12">
                <div class="head">
                    <span class="tittle">Управление сайтом Veusdas</span>
                    <ul class="head-list">
                        <li><a class="menu active" href="#" data-id="publicList">Список пабликов</a></li>
                        <li><a class="menu" href="#" data-id="ads">Объявления</a></li>
                        <li><a class="menu" href="#" data-id="youtube">Youtube каналы</a></li>
                        <li><a class="menu" href="#" data-id="questions">Вопросы</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-12">
                <div id="publicList" class="publicList">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-xs-12">
                              <h2 class="header" style="text-align:center;font-weight:700">Новые заявки</h2>
                               <div class="applications">
                                 <div id="community">
                                      <div class="group">
                                          <table class="site_list site_list_big">
                                              <tr>
                                                <th>Название</th>
                                                <th width="150">Статистика</th>
                                                <th width="150">Подписчиков</th>
                                                <th width="180">Цена (руб.)</th>
                                                <th width="180">Администратор</th>
                                                <th>Действие</th>
                                              </tr>
                                              <#if publicApplications??>
                                                  <#list publicApplications as app>
                                                      <tr>
                                                          <td>${app.name}</td>
                                                          <td>${app.stat_link}</td>
                                                          <td>${app.subscribes}</td>
                                                          <td>${app.cost}</td>
                                                          <td>${app.admin_link}</td>
                                                          <td>
                                                            <div class="buttons">
                                                               <span class="accept acceptSpisok" data-id="${app.id}">Принять</span>
                                                               <span class="delete deleteSpissok" data-id="${app.id}">Отклонить</span>
                                                            </div>
                                                          </td>
                                                      </tr>
                                                  </#list>
                                              </#if>
                                           </table>
                                         </div>
                                   </div>
                               </div>
                            </div>
                            <div class="col-md-12 col-xs-12">
                              <h2 class="header" style="text-align:center;font-weight:700">Редактирование информации</h2>
                               <div class="editing">
                                 <div id="community">
                                      <div class="group">
                                          <table class="site_list site_list_big">
                                              <tr>
                                                <th>Название</th>
                                                <th width="150">Статистика</th>
                                                <th width="150">Подписчиков</th>
                                                <th width="180">Цена (руб.)</th>
                                                <th width="180">Администратор</th>
                                                <th>Действие</th>
                                              </tr>
                                              <#if spisok??>
                                                  <#list spisok as public>
                                                      <tr>
                                                          <td><input type="text" value="${public.name}" maxlength="60"></td>
                                                          <td><input type="text" value="${public.stat_link}" maxlength="70"></td>
                                                          <td><input type="text" value="${public.subscribes}" maxlength="20"></td>
                                                          <td><input type="text" value="${public.cost}" maxlength="10"></td>
                                                          <td><input type="text" value="${public.admin_link}" maxlength="100"></td>
                                                          <td>
                                                            <div class="buttons">
                                                               <span class="accept acceptEditing" data-id="${public.id}">Сохранить</span>
                                                               <span class="delete deletePublic" data-id="${public.id}">Удалить</span>
                                                            </div>
                                                          </td>
                                                      </tr>
                                                  </#list>
                                              </#if>
                                           </table>
                                         </div>
                                   </div>
                               </div>
                            </div>
                        </div>
                    </div>
                    <div class="active-pub"></div>
                </div>
                <div id="ads" class="ads" style="display:none">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-xs-12">
                              <h2 class="header" style="text-align:center;font-weight:700">Новые заявки</h2>
                               <div class="adverts">
                                 <div id="community">
                                      <div class="group">
                                          <table class="site_list site_list_big">
                                              <tr>
                                                <th>Название</th>
                                                <th width="150">Профиль вк</th>
                                                <th width="180">Цена (руб.)</th>
                                                <th width="180">Тип объявления</th>
                                                <th width="180">Комментарий</th>
                                                <th>Действие</th>
                                              </tr>
                                              <#if advertsApplications??>
                                                  <#list advertsApplications as adv>
                                                      <tr>
                                                          <td>${adv.advert_name}</td>
                                                          <td><a href="${adv.profile_link}">Профиль вк</a></td>
                                                          <td>${adv.cost}</td>
                                                          <td>${adv.advert_type}</td>
                                                          <td>${adv.comment}</td>
                                                          <td>
                                                            <div class="buttons">
                                                               <span class="accept acceptApplAdv" data-id="${adv.id}">Принять</span>
                                                               <span class="delete deleteAppAdv" data-id="${adv.id}">Отклонить</span>
                                                            </div>
                                                          </td>
                                                      </tr>
                                                  </#list>
                                              </#if>
                                           </table>
                                         </div>
                                   </div>
                               </div>
                            </div>
                            <div class="col-md-12 col-xs-12">
                              <h2 class="header" style="text-align:center;font-weight:700">Редактирование объявлений</h2>
                               <div class="adverts">
                                 <div id="community">
                                      <div class="group">
                                          <table class="site_list site_list_big">
                                              <tr>
                                                <th>Название</th>
                                                <th width="150">Профиль вк</th>
                                                <th width="180">Цена (руб.)</th>
                                                <th width="180">Тип объявления</th>
                                                <th width="180">Комментарий</th>
                                                <th>Действие</th>
                                              </tr>
                                              <#if adverts??>
                                                  <#list adverts as ad>
                                                      <tr>
                                                          <td><input type="text" value="${ad.advert_name}" maxlength="60"></td>
                                                          <td><input type="text" value="${ad.profile_link}" maxlength="220"></td>
                                                          <td><input type="text" value="${ad.cost}" maxlength="12"></td>
                                                          <td><input type="text" value="${ad.advert_type}" maxlength="60"></td>
                                                          <td><input type="text" value="${ad.comment}"  maxlength="200"></td>
                                                          <td>
                                                            <div class="buttons">
                                                               <span class="accept acceptEditingAdv" data-id="${ad.id}">Сохранить</span>
                                                               <span class="delete deleteAdv" data-id="${ad.id}">Удалить</span>
                                                            </div>
                                                          </td>
                                                      </tr>
                                                  </#list>
                                              </#if>
                                           </table>
                                         </div>
                                   </div>
                               </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="youtube" class="youtube" style="display:none">
                    aaaaaaaaaaaaaaaaa
                </div>
                <div id="questions" class="questions" style="display:none">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-xs-12">
                                <div class="questions">
                                    <div id="community">
                                      <div class="group">
                                          <table class="site_list site_list_big">
                                              <tr>
                                                <th>Вопрос</th>
                                                <th width="100">Имя</th>
                                                <th width="100">Email</th>
                                                <th width="200">Ваш ответ</th>
                                                <th width="100">Действие</th>
                                              </tr>
                                              <#--<#include "question.ftl">-->

                                              <#--<#list questions as q>-->
                                                  <#--<@question question=q />-->
                                              <#--</#list>-->

                                              <#list questions as question>
                                                  <tr class="row${question.id}">
                                                      <td>${question.question}</td>
                                                      <td>${question.name}</td>
                                                      <td>${question.email}</td>
                                                      <td>
                                                          <textarea name="reply" id="reply${question.id}" cols="30" rows="1"></textarea>
                                                      </td>
                                                      <td><a href="#" class="sendReply" data-id="${question.id}">Ответить</a></td>
                                                  </tr>
                                              </#list>
                                           </table>
                                         </div>
                                   </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="alert alert-success alert-dismissable" style="display:none">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <strong>Отлично!</strong> Сообщение отправлено.
                </div>
            </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
   
    $(document).on('click', '.menu', function () {
        var oldPage = '#'+$('.active').data('id');
        var newPage = '#'+$(this).data('id');
        
        $('.active').removeClass('active');
        $(this).addClass('active');
        
        $(oldPage).css('display','none');
        $(newPage).css('display','block');
    });



        $(document).on('click', '.sendReply', function () {
            event.preventDefault();
            var $this = $(this);
            var questionID = $this.data('id');
            var textarea = $('#reply' + questionID).val();
            var row = '.row' + questionID;
            $.ajax({
                type: 'POST',
                url: '/admin/questionReply',
                data: {
                    question: questionID,
                    reply: textarea
                },
                success: function (data, status) {  // успешное завершение работы
                    $this.hide();
                    $(row).css('display','none');
                    $('.alert').css('display','block');
                },
                error: function () {    // На сервере произошла ошибка
                    // console.log(data);
                    alert('Приносим извинения.<br/>На сервере произошла ошибка');
                }
            });
        });

});
</script>
</body>
</html>