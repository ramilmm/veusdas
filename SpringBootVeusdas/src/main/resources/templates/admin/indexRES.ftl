<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8"/>

    <title>Admin page</title>
    <link rel="stylesheet" href="css/admin/style.css"/>
    <link rel="stylesheet" href="css/admin/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body class="admin">

<div class="container">
    <div class="row">
            <div class="col-md-12">
                <span class="tittle">Управление сайтом Veusdas</span>
                <ul class="nav nav-tabs">
                    <li><a class="menu active" href="#" data-id="publicList">Список пабликов</a></li>
                    <li><a class="menu" href="#" data-id="inst">Instagram</a></li>
                    <li><a class="menu" href="#" data-id="ads">Объявления</a></li>
                    <#--<li><a class="menu" href="#" data-id="questions">Вопросы</a></li>-->
                    <li><a href="/">Главная страница</a></li>
                </ul>
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

                                                  <#include "spisokApp.ftl">

                                                  <#list publicApplications as q>
                                                      <@public app=q />
                                                  </#list>

                                                  <#--<#list publicApplications as app>-->
        <#---->
                                                      <#--<tr class="row${app.id}">-->
                                                          <#--<td>${app.name}</td>-->
                                                          <#--<td>${app.stat_link}</td>-->
                                                          <#--<td>${app.subscribes}</td>-->
                                                          <#--<td>${app.cost}</td>-->
                                                          <#--<td>${app.admin_link}</td>-->
                                                          <#--<td>-->
                                                            <#--<div class="buttons">-->
                                                               <#--<a href="#" class="accept acceptSpisok" data-id="${app.id}">Принять</a>-->
                                                               <#--<a href="#"  class="delete deleteSpisok" data-id="${app.id}">Отклонить</a>-->
                                                            <#--</div>-->
                                                          <#--</td>-->
                                                      <#--</tr>-->
                                                  <#--</#list>-->
                                              <#else >
                                                <span style="text-align: center">Новых заявок нет</span>
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
                                                <th>Топ</th>
                                                <th>Название</th>
                                                <th width="150">Статистика</th>
                                                <th width="150">Подписчиков</th>
                                                <th width="150">Категория охвата</th>
                                                <th width="180">Цена (руб.)</th>
                                                <th width="180">Администратор</th>
                                                <th>Действие</th>
                                              </tr>
                                              <#if spisok??>

                                                  <#--<#include "public.ftl">-->

                                                  <#list spisok as public>
                                                      <#--<@spisok public=q />-->


                                                      <tr class="row${public.id}">
                                                          <td>
                                                              <a href="#" class="onTopWeek" data-id="${public.id}">Поднять на</a>
                                                              <#--<input type="text" placeholder="1" id="countWeeks">-->
                                                              <select id="countWeeks">
                                                                  <option value>- количество недель -</option>
                                                                  <option value="1">1</option>
                                                                  <option value="2">2</option>
                                                                  <option value="3">3</option>
                                                              </select>
                                                              <a href="#" class="onTopMonth" data-id="${public.id}">Поднять на</a>
                                                              <select id="countMonths">
                                                                  <option value>- количество месяцев -</option>
                                                                  <option value="1">1</option>
                                                                  <option value="2">2</option>
                                                                  <option value="3">3</option>
                                                              </select>
                                                              <#--<input type="text" placeholder="1" id="countMonths">-->
                                                          </td>
                                                          <td><input type="text" id="nameSpisok${public.id}"  value="${public.name}" maxlength="60"></td>
                                                          <td><input type="text" id="stat_linkSpisok${public.id}"  value="${public.stat_link}" maxlength="70"></td>
                                                          <td><input type="text" id="subscribesSpisok${public.id}"  value="${public.subscribes}" maxlength="20"></td>
                                                          <td><select id="okhvatSpisok${public.id}" class="okhvat${public.id}" >
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
                                                          <td><input type="text" id="costSpisok${public.id}" value="${public.cost}" maxlength="10"></td>
                                                          <td><input type="text" id="admin_linkSpisok${public.id}"  value="${public.admin_link}" maxlength="100"></td>
                                                          <td>
                                                              <div class="buttons">
                                                                  <a href="#"  class="accept acceptEditing" data-id="${public.id}">Сохранить</a>
                                                                  <a href="#"  class="delete deletePublic" data-id="${public.id}">Удалить</a>
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
                <#--inst-->
                <div id="inst" class="inst" style="display:none">
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
                                                    <th width="150">Подписчиков</th>
                                                    <th width="180">Цена (руб.)</th>
                                                    <th width="180">Администратор</th>
                                                    <th>Действие</th>
                                                </tr>

                                            <#if instApplications??>

                                                <#include "instApp.ftl">

                                                <#list instApplications as q>
                                                    <@inst inst=q />
                                                </#list>
                                            <#else >
                                                <span style="text-align: center">Новых заявок нет</span>
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
                                                    <th width="150">Подписчиков</th>
                                                    <th width="180">Цена (руб.)</th>
                                                    <th width="180">Администратор</th>
                                                    <th>Действие</th>
                                                </tr>

                                            <#if instList??>

                                            <#--<#include "public.ftl">-->

                                                <#list instList as inst>
                                                <#--<@spisok public=q />-->


                                                    <tr class="row${inst.id}">
                                                        <td><input type="text" id="nameInst${inst.id}" value="${inst.name}" maxlength="60"></td>
                                                        <td><input type="text" id="subscribesInst${inst.id}" value="${inst.subscribes}" maxlength="20"></td>
                                                        <td><input type="text" id="costInst${inst.id}" value="${inst.cost}" maxlength="10"></td>
                                                        <td><input type="text" id="admin_linkInst${inst.id}" value="${inst.admin_link}" maxlength="100"></td>
                                                        <td>
                                                            <div class="buttons">
                                                                <a href="#"  class="accept acceptEditingInst" data-id="${inst.id}">Сохранить</a>
                                                                <a href="#"  class="delete deleteInst" data-id="${inst.id}">Удалить</a>
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

                                                  <#include "advert.ftl">

                                                  <#list advertsApplications as q>
                                                      <@advert adv=q />
                                                  </#list>

                                                  <#--<#list advertsApplications as adv>-->

                                                      <#--<tr>-->
                                                          <#--<td>${adv.advert_name}</td>-->
                                                          <#--<td><a href="${adv.profile_link}">Профиль вк</a></td>-->
                                                          <#--<td>${adv.cost}</td>-->
                                                          <#--<td>${adv.advert_type}</td>-->
                                                          <#--<td>${adv.comment}</td>-->
                                                          <#--<td>-->
                                                            <#--<div class="buttons">-->
                                                               <#--<span class="accept acceptAppAdv" data-id="${adv.id}">Принять</span>-->
                                                               <#--<span class="delete deleteAppAdv" data-id="${adv.id}">Отклонить</span>-->
                                                            <#--</div>-->
                                                          <#--</td>-->
                                                      <#--</tr>-->
                                                  <#--</#list>-->
                                              <#else >
                                                  <span style="text-align: center">Новых заявок нет</span>
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

                                                  <#include "advertList.ftl">

                                                  <#list adverts as q>
                                                      <@advertList ad=q />
                                                  </#list>

                                                  <#--<#list adverts as ad>-->
                                                      <#--<tr>-->
                                                          <#--<td><input type="text" value="${ad.advert_name}" maxlength="60"></td>-->
                                                          <#--<td><input type="text" value="${ad.profile_link}" maxlength="220"></td>-->
                                                          <#--<td><input type="text" value="${ad.cost}" maxlength="12"></td>-->
                                                          <#--<td><input type="text" value="${ad.advert_type}" maxlength="60"></td>-->
                                                          <#--<td><input type="text" value="${ad.comment}"  maxlength="200"></td>-->
                                                          <#--<td>-->
                                                            <#--<div class="buttons">-->
                                                               <#--<span class="accept acceptEditingAdv" data-id="${ad.id}">Сохранить</span>-->
                                                               <#--<span class="delete deleteAdv" data-id="${ad.id}">Удалить</span>-->
                                                            <#--</div>-->
                                                          <#--</td>-->
                                                      <#--</tr>-->
                                                  <#--</#list>-->
                                              </#if>
                                           </table>
                                         </div>
                                   </div>
                               </div>
                            </div>
                        </div>
                    </div>
                </div>
                <#--<div id="youtube" class="youtube" style="display:none">-->
                    <#--aaaaaaaaaaaaaaaaa-->
                <#--</div>-->
                <#--<div id="questions" class="questions" style="display:none">-->
                    <#--<div class="container">-->
                        <#--<div class="row">-->
                            <#--<div class="col-md-12 col-xs-12">-->
                                <#--<div class="questions">-->
                                    <#--<div id="community">-->
                                      <#--<div class="group">-->
                                          <#--<table class="site_list site_list_big">-->
                                              <#--<tr>-->
                                                <#--<th>Вопрос</th>-->
                                                <#--<th width="100">Имя</th>-->
                                                <#--<th width="100">Email</th>-->
                                                <#--<th width="200">Ваш ответ</th>-->
                                                <#--<th width="100">Действие</th>-->
                                              <#--</tr>-->
                                              <#--<#include "question.ftl">-->

                                              <#--<#list questions as q>-->
                                                  <#--<@question question=q />-->
                                              <#--</#list>-->

                                              <#--&lt;#&ndash;<#list questions as question>&ndash;&gt;-->
                                                  <#--&lt;#&ndash;<tr class="row${question.id}">&ndash;&gt;-->
                                                      <#--&lt;#&ndash;<td>${question.question}</td>&ndash;&gt;-->
                                                      <#--&lt;#&ndash;<td>${question.name}</td>&ndash;&gt;-->
                                                      <#--&lt;#&ndash;<td>${question.email}</td>&ndash;&gt;-->
                                                      <#--&lt;#&ndash;<td>&ndash;&gt;-->
                                                          <#--&lt;#&ndash;<textarea name="reply" id="reply${question.id}" cols="30" rows="1"></textarea>&ndash;&gt;-->
                                                      <#--&lt;#&ndash;</td>&ndash;&gt;-->
                                                      <#--&lt;#&ndash;<td><a href="#" class="sendReply" data-id="${question.id}">Ответить</a></td>&ndash;&gt;-->
                                                  <#--&lt;#&ndash;</tr>&ndash;&gt;-->
                                              <#--&lt;#&ndash;</#list>&ndash;&gt;-->
                                           <#--</table>-->
                                         <#--</div>-->
                                   <#--</div>-->
                                <#--</div>-->
                            <#--</div>-->
                        <#--</div>-->
                    <#--</div>-->
                <#--</div>-->
                <div class="alert alert-success alert-dismissable" style="display:none">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <strong>Отлично!</strong> Обработано.
                </div>
            </div>
    </div>
</div>

<script src="js/admin/bootstrap.min.js"></script>
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

        $(document).on('click', '.acceptSpisok', function () {
            event.preventDefault();
            var $this = $(this);
            var publicID = $this.data('id');
            var row = '.row' + publicID;
            $.ajax({
                type: 'POST',
                url: '/admin/setActive',
                data: {
                    id:publicID
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

        $(document).on('click', '.deleteSpisok', function () {
            event.preventDefault();
            var $this = $(this);
            var publicID = $this.data('id');
            var row = '.row' + publicID;
            $.ajax({
                type: 'POST',
                url: '/admin/cancel',
                data: {
                    id:publicID
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
        $(document).on('click', '.acceptEditing', function () {
            event.preventDefault();
            var $this = $(this);
            var publicID = $this.data('id');
            var h_name = '#nameSpisok'+publicID;
            var h_stat = '#stat_linkSpisok'+publicID;
            var h_sub = '#subscribesSpisok'+publicID;
            var h_okhvat = '#okhvatSpisok'+publicID;
            var h_cost = '#costSpisok'+publicID;
            var h_admin = '#admin_linkSpisok'+publicID;
            var name = $(h_name).val();
            var stat = $(h_stat).val();
            var subscribes = $(h_sub).val();
            var okhvat = $(h_okhvat).val();
            var cost = $(h_cost).val();
            var admin = $(h_admin).val();
            var row = '.row' + publicID;
            $.ajax({
                type: 'POST',
                url: '/admin/editPublic',
                data: {
                    id:publicID,
                    name:name,
                    stat:stat,
                    subscribes:subscribes,
                    oxvat:okhvat,
                    cost:cost,
                    admin:admin
                },
                success: function (data, status) {  // успешное завершение работы
                    $('.alert').css('display','block');
                },
                error: function () {    // На сервере произошла ошибка
                    alert('Приносим извинения.<br/>На сервере произошла ошибка');
                }
            });
        });


        $(document).on('click', '.onTopWeek', function () {
            event.preventDefault();
            var $this = $(this);
            var publicID = $this.data('id');
            var weeks = $('#countWeeks').val();
            $.ajax({
                type: 'POST',
                url: '/admin/topWeek',
                data: {
                    id:publicID,
                    weeks: weeks
                },
                success: function (data, status) {  // успешное завершение работы
                    $('.alert').css('display','block');
                },
                error: function () {    // На сервере произошла ошибка
                    alert('Приносим извинения.<br/>На сервере произошла ошибка');
                }
            });
        });

        $(document).on('click', '.onTopMonth', function () {
            event.preventDefault();
            var $this = $(this);
            var publicID = $this.data('id');
            var months = $('#countMonths').val();
            $.ajax({
                type: 'POST',
                url: '/admin/topMonth',
                data: {
                    id:publicID,
                    months: months
                },
                success: function (data, status) {  // успешное завершение работы
                    $('.alert').css('display','block');
                },
                error: function () {    // На сервере произошла ошибка
                    alert('Приносим извинения.<br/>На сервере произошла ошибка');
                }
            });
        });


        $(document).on('click', '.deletePublic', function () {
            event.preventDefault();
            var $this = $(this);
            var publicID = $this.data('id');
            var row = '.row' + publicID;
            $.ajax({
                type: 'POST',
                url: '/admin/deletePublic',
                data: {
                    id:publicID
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

//        instagram

        $(document).on('click', '.acceptInst', function () {
            event.preventDefault();
            var $this = $(this);
            var publicID = $this.data('id');
            var row = '.row' + publicID;
            $.ajax({
                type: 'POST',
                url: '/admin/setActiveInst',
                data: {
                    id:publicID
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


        $(document).on('click', '.acceptEditingInst', function () {
            event.preventDefault();
            var $this = $(this);
            var publicID = $this.data('id');
            var h_name = '#nameInst'+publicID;
            var h_sub = '#subscribesInst'+publicID;
            var h_cost = '#costInst'+publicID;
            var h_admin = '#admin_linkInst'+publicID;
            var name = $(h_name).val();
            var subscribes = $(h_sub).val();
            var cost = $(h_cost).val();
            var admin = $(h_admin).val();
            var row = '.row' + publicID;
            $.ajax({
                type: 'POST',
                url: '/admin/editInst',
                data: {
                    id:publicID,
                    name:name,
                    subscribes:subscribes,
                    cost:cost,
                    admin:admin
                },
                success: function (data, status) {  // успешное завершение работы
                    $('.alert').css('display','block');
                },
                error: function () {    // На сервере произошла ошибка
//                    alert('Приносим извинения.<br/>На сервере произошла ошибка');
                }
            });
        });

        $(document).on('click', '.deleteInst', function () {
            event.preventDefault();
            var $this = $(this);
            var publicID = $this.data('id');
            var row = '.row' + publicID;
            $.ajax({
                type: 'POST',
                url: '/admin/deleteInst',
                data: {
                    id:publicID
                },
                success: function (data, status) {  // успешное завершение работы
                    $this.hide();
                    $(row).css('display','none');
                    $('.alert').css('display','block');
                },
                error: function () {    // На сервере произошла ошибка
                    // console.log(data);
//                    alert('Приносим извинения.<br/>На сервере произошла ошибка');
                }
            });
        });

        $(document).on('click', '.acceptAppAdv', function () {
            event.preventDefault();
            var $this = $(this);
            var advertID = $this.data('id');
            var row = '.row' + advertID;
            $.ajax({
                type: 'POST',
                url: '/admin/acceptAdvert',
                data: {
                    id:advertID
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

        $(document).on('click', '.deleteAppAdv', function () {
            event.preventDefault();
            var $this = $(this);
            var advertID = $this.data('id');
            var row = '.row' + advertID;
            $.ajax({
                type: 'POST',
                url: '/admin/cancelAdvert',
                data: {
                    id:advertID
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

        $(document).on('click', '.acceptEditingAdv', function () {
            event.preventDefault();
            var $this = $(this);
            var advertID = $this.data('id');
            var h_name = '#nameAdvert'+advertID;
            var h_profile = '#profileAdvert'+advertID;
            var h_cost = '#costAdvert'+advertID;
            var h_type = '#typeAdvert'+advertID;
            var h_comment = '#commentAdvert'+advertID;
            var name = $(h_name).val();
            var profile = $(h_profile).val();
            var cost = $(h_cost).val();
            var type = $(h_type).val();
            var comment = $(h_comment).val();
            var row = '.row' + advertID;
            $.ajax({
                type: 'POST',
                url: '/admin/editAdvert',
                data: {
                    id:advertID,
                    name:name,
                    profile:profile,
                    cost:cost,
                    type:type,
                    comment:comment
                },
                success: function (data, status) {  // успешное завершение работы
                    $('.alert').css('display','block');
                },
                error: function () {    // На сервере произошла ошибка
                    // console.log(data);
                    alert('Приносим извинения.<br/>На сервере произошла ошибка');
                }
            });
        });

        $(document).on('click', '.deleteAdv', function () {
            event.preventDefault();
            var $this = $(this);
            var advertID = $this.data('id');
            var row = '.row' + advertID;
            $.ajax({
                type: 'POST',
                url: '/admin/deleteAdvert',
                data: {
                    id:advertID
                },
                success: function (data, status) {  // успешное завершение работы
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