<!DOCTYPE HTML>

<html lang="ru" xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Instagram VEUSDAS</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="css/ListOfPublic/main.css" />
    <script src="js/jquery.min.js"></script>

</head>
<body class="landing">


<!-- Header -->
<header id="header" class="alt">
    <h1><strong><a href="/">VEUSDAS</a></strong></h1>
    <nav id="nav" style="font-size: 14px">
        <ul>
            <li><a href="/">Главная</a></li>
            <li><a href="/ads">Объявления</a></li>
            <li><a href="/garant">Гарант</a></li>
            <li><a href="/web">Создание сайтов</a></li>
            <li><a href="/services">Наши услуги</a></li>
        <#if user??>
            <li><a href="/cabinet" class="userLink">Личный кабинет</a></li>
        <#else>
            <li><a href="/login" class="userLink">Войти</a></li>
        </#if>
            <style>
                #header nav ul li a.userLink {
                    border: 2px solid;
                    padding-left: 15px;
                    border-radius: 24px;
                    padding-right: 15px;
                    background-color: rgba(0,0,0,.0005);
                    color: #fff;
                }
                #header nav ul li a.userLink:hover {
                    background-color: #fff;
                    color: #000;
                }

            </style>
        </ul>
    </nav>
</header>

<a href="#menu" class="navPanelToggle"><span class="fa fa-bars"></span></a>

<!-- Banner -->
<section id="banner">
    <h2>Список instagram <strong>VEUSDAS</strong></h2>
    <p>Мы поможем продать вашу рекламу.</p>
    <ul class="actions" id="menu">
        <li><button class="button special big" data-id="#form">Подать заявку</button></li>
        <li><a href="#six" class="button big">Посмотреть список</a></li>
    </ul>
</section>

<!-- Info Area
        ===================================== -->

<div class="row modal-dialog search">
    <div class="8u 12u$(small)">
        <form method="POST" action="/instagram/add" th:action="@{/instagram/add}" th:object="@{InstForm}">
            <div class="row uniform 50%">
                <div class="6u"></div>
                <div class="4u 12u$(xsmall)">
                    <select name="category" th:field="*{category}" id="category">
                        <option value>Выберите тематику</option>
                        <option value="1">Видео</option>
                        <option value="2">Спорт </option>
                        <option value="3">Дизайн</option>
                        <option value="4">Животные</option>
                        <option value="5">Путешествия</option>
                        <option value="6">Личная страница</option>
                        <option value="7">Кино</option>
                        <option value="8">Фотографии</option>
                        <option value="9">Женские сообщества</option>
                        <option value="10">Мужские сообщества</option>
                        <option value="11">Творчество</option>
                        <option value="12">Мода</option>
                        <option value="13">Наука</option>
                        <option value="14">Гороскоп</option>
                        <option value="15">Прочее</option>
                    </select>

                </div>
                <div class="2u$ 12u$(xsmall)">
                    <input id="submit_type" type="submit" class="order button small" value="Подобрать"/>
                </div>
            </div>
        </form>

        <script>
            $(document).ready(function(){

                $("#submit_type").on("click", function (event) {
                    event.preventDefault();
                    var selected_type  = $('#category').val();
                    var className = '.inst' + selected_type;

                    console.log(selected_type);
                    console.log(className);

                    $('.inst').hide();
                    $(className).show();
                });

            });
        </script>

    </div>
</div>

<!-- Three -->
<section id="six" class="wrapper style1">
    <div class="container">
        <div class="row">
            <div class="12u$ 12u$(small) 12u$(xsmall)">
                <div id="community">
                    <div class="group">
                        <table class="site_list site_list_big">
                            <tr>
                                <th>Название</th>
                                <th>Тематика</th>
                                <th width="150">Подписчиков</th>
                                <th width="180">Цена (руб.)</th>
                                <th width="180">Администратор</th>
                            </tr>

                            <#if instList??>
                                <#list instList as inst>
                                    <tr id="/sites/3/" class="click inst inst${inst.instagram_type}" style="cursor: pointer">
                                        <td>
                                            <div class="image">
                                                <a href="${inst.link}" target="_blank"><img id="avatar" src="${inst.avatar_link}" width="30" height="30" alt="${inst.name}" /></a>
                                            </div>
                                            <a href="${inst.link}">${inst.name}</a>
                                        </td>
                                        <script>
                                            $(document).ready(function () {
                                                var type = '${inst.instagram_type}';
                                                if (!type){
                                                    $('#inst_type${inst.id}').text("Прочее");
                                                }
                                                switch (${inst.instagram_type}){
                                                    case 1: {
                                                        $('#inst_type${inst.id}').text("Видео");
                                                        break;
                                                    }
                                                    case 2: {
                                                        $('#inst_type${inst.id}').text("Спорт");
                                                        break;
                                                    }
                                                    case 3: {
                                                        $('#inst_type${inst.id}').text("Дизайн");
                                                        break;
                                                    }
                                                    case 4: {
                                                        $('#inst_type${inst.id}').text("Животные");
                                                        break;
                                                    }
                                                    case 5: {
                                                        $('#inst_type${inst.id}').text("Путешествия");
                                                        break;
                                                    }
                                                    case 7: {
                                                        $('#inst_type${inst.id}').text("Кино");
                                                        break;
                                                    }
                                                    case 8: {
                                                        $('#inst_type${inst.id}').text("Фотографии");
                                                        break;
                                                    }
                                                    case 9: {
                                                        $('#inst_type${inst.id}').text("Женские сообщества");
                                                        break;
                                                    }
                                                    case 10: {
                                                        $('#inst_type${inst.id}').text("Мужские сообщества");
                                                        break;
                                                    }
                                                    case 11: {
                                                        $('#inst_type${inst.id}').text("Творчество");
                                                        break;
                                                    }
                                                    case 12: {
                                                        $('#inst_type${inst.id}').text("Мода");
                                                        break;
                                                    }
                                                    case 13: {
                                                        $('#inst_type${inst.id}').text("Наука");
                                                        break;
                                                    }
                                                    case 14: {
                                                        $('#inst_type${inst.id}').text("Гороскоп");
                                                        break;
                                                    }
                                                    case 15: {
                                                        $('#inst_type${inst.id}').text("Прочее");
                                                        break;
                                                    }
                                                    case 6: {
                                                        $('#inst_type${inst.id}').text("Личная страница");
                                                        break;
                                                    }
                                                }
                                            });
                                        </script>
                                        <td id="inst_type${inst.id}"></td>
                                        <td>${inst.subscribes}</td>
                                        <td style="text-transform: lowercase">
                                        ${inst.cost}
                                        </td>
                                        <td class="btn"><a href="${inst.admin_link}" class="order button small" target="_blank">Заказать</a></td>
                                    </tr>
                                </#list>
                            </#if>

                        </table>

                    </div>

                </div>
            </div>
        </div>
    </div>
</section>

<#--<!-- Four &ndash;&gt;-->
<section id="four" class="wrapper style3 special">
    <div class="container">
        <header class="major">
            <h2>Совершите любую сделку безопасно</h2>
            <p>Воспользуйтесь услугами нашего гаранта</p>
        </header>
        <ul class="actions">
            <li><a href="https://vk.com/id258993255" class="button special big">Написать гаранту</a></li>
        </ul>
    </div>
</section>


<section id="form">
    <div class="form">
        <h2>Добавь свой instagram в этот список!</h2>
        <p>Просто оставь заявку и мы рассмотрим её в ближайшее время!</p>
        <div class="row modal-dialog">
            <div class="8u 12u$(small)">
                <form method="POST" action="/instagram/add" th:action="@{/instagram/add}" th:object="@{InstForm}">
                    <div class="row uniform 50%">
                        <div class="4u 12u$(xsmall)">
                            <input type="text" name="link" th:field="*{link}" id="link" placeholder="Ссылка на ваш  профиль ВКонтакте" />
                        </div>
                        <div class="8u$ 12u$(xsmall)">
                            <input type="text" name="pub" th:field="*{pub}" id="pub" placeholder="Ссылка на instagram" />
                        </div>
                        <div class="3u 12u$(xsmall)">
                            <input type="text" name="cost" th:field="*{cost}" id="cost" placeholder="Цена" maxlength="10">
                        </div>
                        <div class="3u 12u$(xsmall)">
                            <select name="instagram_type" th:field="*{instagram_type}" id="category">
                                <option value>Выберите тематику</option>
                                <option value="1">Видео</option>
                                <option value="2">Спорт </option>
                                <option value="3">Дизайн</option>
                                <option value="4">Животные</option>
                                <option value="5">Путешествия</option>
                                <option value="6">Личная страница</option>
                                <option value="7">Кино</option>
                                <option value="8">Фотографии</option>
                                <option value="9">Женские сообщества</option>
                                <option value="10">Мужские сообщества</option>
                                <option value="11">Творчество</option>
                                <option value="12">Мода</option>
                                <option value="13">Наука</option>
                                <option value="14">Гороскоп</option>
                                <option value="15">Прочее</option>
                            </select>
                        </div>
                        <div class="6u$ 12u$(xsmall)">
                            <input type="text" name="subscribes" th:field="*{subscribes}" id="sub" placeholder="Количество подписчиков" maxlength="10">
                        </div>
                    </div>
                    <ul class="actions">
                        <li><input type="submit" value="Отправить заявку"/></li>
                    </ul>
                </form>

            </div>
        </div>
    </div>
</section>
<!-- Footer -->
<footer id="footer">
    <div class="container">
        <ul class="icons">
            <li><a href="https://vk.com/id365105597" target="_blank" class="icon fa-vk"></a></li>
        </ul>
        <ul class="copyright">
            <li>&copy; Veusdas 2016</li>
            <li>Design: <a href="https://vk.com/kalemb">Katya Kovaleva</a></li>
        </ul>
    </div>
</footer>

<!-- Scripts -->
<script src="js/jquery.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/ListOfPublic/wow.min.js"></script>
<script src="js/ListOfPublic/util.js"></script>
<script src="js/ListOfPublic/main.js"></script>
<script src="js/ListOfPublic/wow.min.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/ListOfPublic/common.js"></script>

<script>
    $(document).ready(function(){

        $("#menu").on("click","button", function (event) {
            event.preventDefault();
            var id  = $(this).attr('data-id'),
                    onTop = $(id).offset().onTop;
            $('body,html').animate({scrollTop: onTop}, 800);
        });

        $("#menu").on("click","a", function (event) {
            event.preventDefault();
            var id  = $(this).attr('href'),
                    onTop = $(id).offset().onTop;
            $('body,html').animate({scrollTop: onTop}, 800);
        });


    });
</script>
<script>new WOW().init();</script>
</body>
</html>