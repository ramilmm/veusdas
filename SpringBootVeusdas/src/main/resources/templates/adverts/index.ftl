<#-- @ftlvariable name="adverts" type="java.util.List<ru.veusdas.Model.Adverts>"-->
<!DOCTYPE HTML>

<html lang="ru">
<head>
    <title>Доска объявлений VEUSDAS</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <#--<link rel="stylesheet" href="css/objavleniya/main.css" />-->
    <link rel="stylesheet" href="css/objavleniya/animate.css" />
    <link rel="stylesheet" href="css/ListOfPublic/main.css">
    <script src="js/jquery.min.js"></script>

</head>
<body class="landing">


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
    <h2>Доска объявлений <strong>VEUSDAS</strong></h2>
    <p>Мы поможем продать вашу услугу.</p>
    <ul class="actions" id="menu">
        <li><button class="button special big" data-id="#form">Подать объявление</button></li>
        <li><a href="#six" class="button big">Посмотреть объявления</a></li>
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
                        <option value>- Тип объявления -</option>
                        <option id="category_item" value="1">Продажа</option>
                        <option id="category_item" value="2">Аренда</option>
                        <option id="category_item" value="3">ВПШЕР</option>
                        <option id="category_item" value="4">Дизайнер</option>
                        <option id="category_item" value="5">Менеджер по рекламе</option>
                        <option id="category_item" value="6">Заливщик</option>
                        <option id="category_item" value="7">Прочее</option>
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
                    var className = '.adv' + selected_type;

                    console.log(selected_type);
                    console.log(className);

                        $('.advert').hide();
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
                                <th width="150"></th>
                                <th>Описание</th>
                                <th width="180">Цена (руб.)</th>
                                <th width="180">Контакт</th>
                            </tr>

                        <#if adverts ??>
                            <#list adverts as adv>
                                <tr id="/sites/3/" class="click advert advert${adv.id}" style="cursor: pointer">
                                    <td>
                                        <div class="image">
                                            <a href="${adv.profile_link}" target="_blank"><img id="avatar" src="${adv.avatar_link}" width="30" height="30" alt="${adv.advert_name}" /></a>
                                        </div>
                                        <a href="${adv.profile_link}">${adv.advert_name}</a>
                                    </td>
                                    <td class="advert_type">${adv.advert_type}</td>
                                    <td class="comment">${adv.comment}</td>
                                    <td style="text-transform: lowercase">
                                    ${adv.cost}
                                    </td>
                                    <td class="btn"><a href="${adv.profile_link}" class="order button small" target="_blank">Написать</a></td>
                                </tr>
                                <script>
                                    $(document).ready(function() {
                                        switch ("${adv.advert_type}") {
                                            case "Продажа":
                                                $('.advert${adv.id}').addClass('adv'+1);
                                                break;
                                            case "Аренда":
                                                $('.advert${adv.id}').addClass('adv'+2);
                                                break;
                                            case "ВПШЕР":
                                                $('.advert${adv.id}').addClass('adv'+3);
                                                break;
                                            case "Дизайнер":
                                                $('.advert${adv.id}').addClass('adv'+4);
                                                break;
                                            case "Менеджер по рекламе":
                                                $('.advert${adv.id}').addClass('adv'+5);
                                                break;
                                            case "Заливщик":
                                                $('.advert${adv.id}').addClass('adv'+6);
                                                break;
                                            case "Прочее":
                                                $('.advert${adv.id}').addClass('adv'+7);
                                                break;
                                        }
                                    });
                                </script>
                            </#list>
                        </#if>

                        </table>
                        <style>
                            .comment {
                                max-width: 300px;
                                word-wrap: break-word;
                                line-height: 20px;
                            }
                            .advert_type {
                                min-width: 189px;
                            }
                        </style>
                    </div>

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
        <h2>Разместите объявление на нашем сайте!</h2>
        <div class="row modal-dialog">
            <div class="8u 12u$(small)">
                <form method="post" action="/ads/add" th:action="@{/ads/add}" th:object="@{AdvertForm}">
                    <div class="row uniform 50%">
                        <div class="6u 12u$(xsmall)"><input type="text" name="link" th:field="*{link}" id="link" placeholder="Ссылка на ваш профиль ВКонтакте" /></div>
                        <div class="6u$ 12u$(xsmall)"><input type="text" name="name" th:field="*{name}" id="name" placeholder="Название объявления" /></div>
                        <div class="5u 12u$(xsmall)">
                            <select name="category" th:field="*{category}" id="category">
                                <option value>- Тип объявления -</option>
                                <option value="1">Продажа</option>
                                <option value="2">Аренда</option>
                                <option value="3">ВПШЕР</option>
                                <option value="4">Дизайнер</option>
                                <option value="5">Менеджер по рекламе</option>
                                <option value="6">Заливщик</option>
                                <option value="7">Прочее</option>
                            </select>
                        </div>
                        <script type="text/javascript">
                            $(document).ready(function(){
                                $(document).on('click','#category', function(){
                                    var radio = $('#category').val();
                                    var $this = $('#ava');
                                    if (radio == 1){
                                        $this.val('https://pp.vk.me/c837730/v837730597/90d3/Ag3lrgd7kec.jpg');
                                    }else if (radio == 2){
                                        $this.val('https://pp.vk.me/c837730/v837730597/90f1/D2ID5CQ6WYI.jpg');
                                    }else if (radio == 3){
                                        $this.val('https://pp.vk.me/c623816/v623816298/45d98/zBbJ2wM31Vw.jpg');
                                    }else if (radio == 4){
                                        $this.val('http://iklife.ru/wp-content/uploads/2016/02/chem-zanimaetsja-graficheskij-dizajner.jpg');
                                    }else if (radio == 5){
                                        $this.val('http://101million.com/wp-content/uploads/2014/11/DETAIL_PICTURE__29718419.jpg');
                                    }else if (radio == 6){
                                        $this.val('http://orthodoxbj.com/wp-content/uploads/2016/09/16092014_0.jpg');
                                    }else {
                                        $this.val('http://orthodoxbj.com/wp-content/uploads/2016/09/16092014_0.jpg');
                                    }
                                });
                            });
                        </script>
                        <div class="7u$ 12u$(xsmall)"><input type="text" name="dopLink" th:field="*{dopLink}" id="dop-link" placeholder="Ссылка на паблик или статистику (Необязательно)"></div>
                        <div class="9u 12u$(xsmall)"><input type="text" name="ava" th:field="*{ava}" id="ava" placeholder="Ссылка на аватарку объявления (Аватарка группы, личной страницы и т.д.)" /></div>
                        <div class="3u$ 12u$(xsmall)"><input type="text" name="cost" th:field="*{cost}" id="cost" placeholder="Цена" maxlength="10"></div>
                        <div class="12u$"><textarea name="message" th:field="*{message}" id="message" placeholder="Комментарии. Описание услуги. Максимум 200 символов " maxlength="200" rows="4"></textarea></div>
                    </div>
                    <ul class="actions">
                        <li><input type="submit" value="Отправить сообщение" /></li>
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
            <li>
                <a href="https://vk.com/id365105597" target="_blank" class="icon fa-vk fa-2x"></a>
            </li>
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
<script src="js/objavleniya/util.js"></script>
<script src="js/objavleniya/main.js"></script>
<script src="js/objavleniya/wow.min.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/objavleniya/common.js"></script>
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