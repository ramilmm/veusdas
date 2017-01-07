<!DOCTYPE HTML>

<html lang="ru">
<head>
    <title>Список сообществ VEUSDAS</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="../css/ListOfPublic/main.css" />
    <link rel="stylesheet" href="../css/ListOfPublic/jquery.remodal.css">
    


</head>
<body class="landing remodal-bg">


<!-- Header -->
<header id="header" class="alt">
    <h1><strong><a href="/">VEUSDAS</a></strong></h1>
    <nav id="nav" style="font-size: 14px">
        <ul>
            <li><a href="/ads">Объявления</a></li>
            <li><a href="/garant">Гарант</a></li>
            <li><a href="/web">Создание сайтов</a></li>
            <li><a href="/services">Наши услуги</a></li>
            <li><a href="/instagram">Instagram</a></li>
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
    <h2>Список сообществ <strong>VEUSDAS</strong></h2>
    <p>Мы поможем продать вашу рекламу.</p>
    <ul class="actions" id="menu">
        <li><a href="#form" class="button special big">Подать заявку</a></li>
        <li><a href="#six" class="button big">Посмотреть список</a></li>
    </ul>
</section>

 <div class="row modal-dialog search">
            <div class="8u 12u$(small)">
                <form>
                    <div class="row uniform 50%">
                       <div class="7u"></div>
                        <div class="2u$ 12u$(xsmall)">
                            <a href="#modal" class="order button small">Поднять сообщество в топ</a>
                        </div>
                    </div>
                </form>

            </div>
        </div>

<div class="remodal" data-remodal-id="modal">
    <h1>Выведи свой паблик в топ</h1>
    <p>
      В список ежедневно добавляется 5-20 пабликов, из-за чего ваша группа быстро уходит из поля зрения рекламодателя. Если вывести паблик в топ списка, эффективность вырастает в несколько раз, так как люди будут сразу видеть Ваш паблик попадая на сайт. <br/>
      Стоимость закрепления на неделю - <strong>299</strong> рублей. <br/>
      Стоимость закрепления на месяц   - <strong>799</strong> рублей.
    </p>
    <br>
    <a class="order button small" target="_blank" href="https://vk.com/write390604029">Напиши нашему менеджеру</a>
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

<#--<!-- Four &ndash;&gt;-->
<#--<section id="four" class="wrapper style3 special">-->
    <#--<div class="container">-->
        <#--<header class="major">-->
            <#--<h2>Совершите любую сделку безопасно</h2>-->
            <#--<p>Воспользуйтесь услугами нашего гаранта</p>-->
        <#--</header>-->
        <#--<ul class="actions">-->
            <#--<li><a href="https://vk.com/id258993255" class="button special big">Написать гаранту</a></li>-->
        <#--</ul>-->
    <#--</div>-->
<#--</section>-->


<section id="form">
    <div class="form">
        <h2>Добавь своё сообщество в этот список!</h2>
        <p>Просто оставь заявку и мы рассмотрим её в ближайшее время!</p>
        <div class="row modal-dialog">
            <div class="8u 12u$(small)">
                <form method="POST" action="/publiclist/add" th:action="@{/publiclist/add}" th:object="@{PublicForm}">
                    <div class="row uniform 50%">
                        <div class="4u 12u$(xsmall)">
                            <input type="text" name="link" th:field="*{link}" id="link" placeholder="Рекламный контакт" />
                        </div>
                        <div class="8u$ 12u$(xsmall)">
                            <input type="text" name="pub" th:field="*{pub}" id="pub" placeholder="Ссылка на паблик" />
                        </div>
                        <div class="4u 12u$(xsmall)">
                            <input type="text" name="cost" th:field="*{cost}" id="cost" placeholder="Цена" maxlength="10">
                        </div>
                        <div class="8u$ 12u$(xsmall)">
                            <select name="category" th:field="*{category}" id="category">
                                <option value>- Охват пабликa -</option>
                                <option value="20">>20.000</option>
                                <option value="50">>50.000</option>
                                <option value="100">>100.000</option>
                            </select>
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
<script src="../js/ListOfPublic/common.js"></script>
<script src="../js/ListOfPublic/jquery.remodal.js"></script>
<script>new WOW().init();</script>
<script>
    $(document).ready(function(){
        $('a[href*=#]').bind("click", function(e){
            var anchor = $(this);
            $('html, body').stop().animate({
                scrollTop: $(anchor.attr('href')).offset().top
            }, 1000);
            e.preventDefault();
        });
        return false;
    });

</script>

</body>
</html>