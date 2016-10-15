<!DOCTYPE HTML>

<html lang="ru">
<head>
    <title>Список сообществ VEUSDAS</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="../css/ListOfPublic/main.css" />

</head>
<body class="landing">


<!-- Header -->
<header id="header" class="alt">
    <h1><strong><a href="/">VEUSDAS</a></strong></h1>
    <nav id="nav">
        <ul>
            <li><a href="/">Главная</a></li>
            <li><a href="/ads">Объявления</a></li>
            <li><a href="/garant">Гарант</a></li>
            <li><a href="/youtube">YouTube каналы</a></li>
        </ul>
    </nav>
</header>

<a href="#menu" class="navPanelToggle"><span class="fa fa-bars"></span></a>

<!-- Banner -->
<section id="banner">
    <h2>Список сообществ <strong>VEUSDAS</strong></h2>
    <p>Мы поможем продать вашу рекламу.</p>
    <ul class="actions" id="menu">
        <li><button class="button special big" data-id="#form">Подать заявку</button></li>
        <li><a href="#six" class="button big">Посмотреть список</a></li>
    </ul>
</section>


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
                                <th width="150">Статистика</th>
                                <th width="150">Подписчиков</th>
                                <th width="180">Цена (руб.)</th>
                                <th width="180">Администратор</th>
                            </tr>

                        <#list publicList as public>
                            <tr id="/sites/3/" class="click" style="cursor: pointer">
                                <td>
                                    <div class="image">
                                        <a href="${public.link}" target="_blank"><img id="avatar" src="${public.avatar_link}" width="30" height="30" alt="${public.name}" /></a>
                                    </div>
                                    <a href="${public.link}">${public.name}</a>
                                </td>

                                <td><span class="statistic"><a href="${public.stat_link}" target="_blank"><img id="statistic" src="../images/profits.png" alt="statistic"></a></span></td>
                                <td>${public.subscribes}</td>
                                <td style="text-transform: lowercase">
                                ${public.cost}
                                </td>
                                <td class="btn"><a href="${public.admin_link}" class="order button small" target="_blank">Заказать</a></td>
                            </tr>
                        </#list>

                        </table>

                    </div>

                </div>
            </div>
        </div>
    </div>
</section>

<section id="five" class="wrapper style1 public">
    <div class="container">
        <div class="row">
            <header class="12u$ 12u$(xsmall)">
                <h2>Список сообществ</h2>
            </header>
            <div class="4u 6u(small) 12u$(xsmall)">
                <div class="nameusl 20k buzz">
                    <a href="/publiclist/20" >>20.000 охвата</a>
                </div>
            </div>
            <div class="4u 6u$(small) 12u$(xsmall)">
                <div  class="nameusl 50k buzz">
                    <a href="/publiclist/50" >>50.000 охвата</a>
                </div>
            </div>
            <div class="4u 6u(small) 12u$(xsmall)">
                <div class="nameusl 100k buzz">
                    <a href="/publiclist/100" >>100.000 охвата</a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Four -->
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
        <h2>Добавь своё сообщество в этот список!</h2>
        <p>Существует одно и единственное условие попадания в наш список! <br/>
        Вы дожны разместить на своей стене <a href="https://vk.com/page-110924774_51186843?from=wall365105597_129">ЭТУ СТРАНИЦУ</a>
        и держать её не ниже второго местa на стене! <br/>
        Если остались вопросы, пишите основателю проекта - <a href="https://vk.com/id365105597">Vladislav Leus</a>
        </p>
        <div class="row modal-dialog">
            <div class="8u 12u$(small)">
                <form method="POST" action="/publiclist/add" th:action="@{/publiclist/add}" th:object="@{PublicForm}">
                    <div class="row uniform 50%">
                        <div class="4u 12u$(xsmall)">
                            <input type="text" name="name" th:field="*{name}" id="name" placeholder="Название паблика" />
                            <#--<div th:if="${#fields.hasErrors('name')}" th:errors="*{name}">Name Error</div>-->
                        </div>
                        <div class="4u 12u$(xsmall)">
                            <input type="text" name="link" th:field="*{link}" id="link" placeholder="Рекламный контакт" />
                            <#--<div th:if="${#fields.hasErrors('link')}" th:errors="*{link}">Link Error</div>-->
                        </div>
                        <div class="4u$ 12u$(xsmall)">
                            <input type="text" name="pub" th:field="*{pub}" id="pub" placeholder="Ссылка на паблик" />
                            <#--<div th:if="${#fields.hasErrors('pub')}" th:errors="*{pub}">Public link Error</div>-->
                        </div>
                        <div class="9u 12u$(xsmall)">
                            <input type="text" name="ava" th:field="*{ava}" id="ava" placeholder="Ссылка на аватарку паблика" />
                            <#--<div th:if="${#fields.hasErrors('ava')}" th:errors="*{ava}">Avatar link Error</div>-->
                        </div>
                        <div class="3u$ 12u$(xsmall)">
                            <input type="text" name="cost" th:field="*{cost}" id="cost" placeholder="Цена" maxlength="10">
                            <#--<div th:if="${#fields.hasErrors('cost')}" th:errors="*{cost}">Cost Error</div>-->
                        </div>
                        <div class="6u 12u$(xsmall)">
                            <select name="category" th:field="*{category}" id="category">
                                <option value>- Охват пабликa -</option>
                                <option value="20">>20.000</option>
                                <option value="50">>50.000</option>
                                <option value="100">>100.000</option>
                            </select>
                            <#--<div th:if="${#fields.hasErrors('category')}" th:errors="*{category}">Category Error</div>-->
                        </div>
                        <div class="6u$ 12u$(xsmall)">
                            <input type="text" name="subscribes" th:field="*{subscribes}" id="sub" placeholder="Количество подписчиков" maxlength="10">
                        <#--<div th:if="${#fields.hasErrors('cost')}" th:errors="*{cost}">Cost Error</div>-->
                        </div>
                        <div class="12u$ 12u$(xsmall)">
                            <input type="text" name="stat" th:field="*{stat}" id="dop-link" placeholder="Ссылка на статистику паблика">
                            <#--<div th:if="${#fields.hasErrors('stat')}" th:errors="*{stat}">Statistic link Error</div>-->
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
<script src="../js/jquery.min.js"></script>
<script src="../js/skel.min.js"></script>
<script src="../js/ListOfPublic/wow.min.js"></script>
<script src="../js/ListOfPublic/util.js"></script>
<script src="../js/ListOfPublic/main.js"></script>
<script src="../js/ListOfPublic/wow.min.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="../js/ListOfPublic/common.js"></script>

<script>
    $(document).ready(function(){

        $("#menu").on("click","button", function (event) {
            event.preventDefault();
            var id  = $(this).attr('data-id'),
                    top = $(id).offset().top;
            $('body,html').animate({scrollTop: top}, 800);
        });

        $("#menu").on("click","a", function (event) {
            event.preventDefault();
            var id  = $(this).attr('href'),
                    top = $(id).offset().top;
            $('body,html').animate({scrollTop: top}, 800);
        });


    });
</script>
<script>new WOW().init();</script>
</body>
</html>