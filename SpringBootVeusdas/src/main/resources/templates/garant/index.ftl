<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Veusdas garant</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />

    <link rel="stylesheet" href="css/garant/skel.css" />
    <link rel="stylesheet" href="css/garant/style.css" />
    <link rel="stylesheet" href="css/garant/style-xlarge.css" />
    <!--[if lte IE 8]>
    <link rel="stylesheet" href="css/garant/ie/v8.css"/><![endif]-->
</head>
<body class="landing">

<!-- Header -->
<header id="header">
    <h1><a href="/">VEUSDAS</a></h1>
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
                    border-radius: 18px;
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


<!-- Banner -->
<section id="banner">
    <h2>Агентство Veusdas</h2>
    <p>Официальный гарант агенства</p>
    <ul class="actions">
        <li>
            <a href="#garant" class="button big">Подробнее</a>
        </li>
    </ul>
</section>

<section id="garant" class="wrapper style2 align-center">
    <div class="container">
        <header>
            <h2>Наше агенство предоставляет услуги гаранта.</h2>
            <p>Для чего нужен гарант? Гарант - третья сторона в продаже/обмене. Он следит за сторонами сделки, чтобы те не нарушали договорённости.</p>
        </header>
    </div>
</section>

<!-- One -->
<section id="one" class="wrapper style1 align-center">
    <div class="container">
        <header>
            <h2>Почему люди выбирают нас?</h2>
        </header>
        <div class="row 200%">
            <section class="3u 12u$(small)">
                <i class="icon big rounded fa-clock-o"></i>
                <h4><strong>Опыт работы</strong></h4>
                <p>Наш гарант провёл более 500 успешных сделок</p>
            </section>
            <section class="3u 12u$(small)">
                <i class="icon big rounded fa-comments"></i>
                <h4><strong>Гуманность</strong></h4>
                <p>Все люди не роботы, и каждый вправе допускать ошибки. Если что-то пойдёт не так, то мы всегда войдём в положение</p>
            </section>
            <section class="3u 12u$(small)">
                <i class="icon big rounded fa-shield"></i>
                <h4><strong>Профессионализм</strong></h4>
                <p>Мы тчательно следим за каждой деталью сделки и не допускаем ошибок</p>
            </section>
            <section class="3u$ 12u$(small)">
                <i class="icon big rounded fa-user"></i>
                <h4><strong>Уважение</strong></h4>
                <p>Мы имеем большое количество отзывов, и все из них положительные</p>
            </section>
        </div>
    </div>
</section>

<section id="three" class="wrapper style2 align-center">
    <div class="container">
        <div class="row">
            <div class="6u 12u$(xsmall) price-list">
                <header>
                    <h2>Прайс-лист</h2>
                    <p>Сумма до 3000 рублей - <strong>100 руб.</strong> <br/>
                        Сумма от 3000 рублей - <strong>3% от суммы сделки</strong> <br/><br/>
                    </p>
                </header>
            </div>
            <div class="6u$ 12u$(xsmall) requisites">
                <header>
                    <h2>Реквизиты</h2>
                    <p><i>Webmoney:</i> <strong>R539951970544 </strong> <br/>
                        <i>Sberbank:</i> <strong>4276 4000 4442 2559</strong>
                    </p>
                </header>
            </div>
        </div>
    </div>
</section>

<section id="four" class="wrapper style3 special">
    <div class="container">
        <header class="major">
            <h2>Честность - наше второе имя</h2>
            <p>Воспользуйтесь услугами нашего гаранта</p>
        </header>
        <ul class="actions">
            <li><a href="https://vk.com/id400280408" class="button special big">Написать гаранту</a></li>
        </ul>
    </div>
</section>


<!-- Footer -->
<footer id="footer">
    <div class="container">
        <ul class="icons">
            <li>
                <a href="https://vk.com/id258993255" target="_blank" class="icon fa-vk fa-2x"></a>
            </li>
        </ul>
        <ul class="copyright">
            <li>&copy; Veusdas 2016.</li>
            <li>Design: <a href="https://vk.com/kalemb">Katya Kovaleva</a></li>
        </ul>
    </div>
</footer>

<script src="css/garant/ie/html5shiv.js"></script><![endif]-->
<script src="js/jquery.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/garant/skel-layers.min.js"></script>
<script src="js/garant/init.js"></script>
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