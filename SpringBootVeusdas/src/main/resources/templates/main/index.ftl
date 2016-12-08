<!DOCTYPE HTML>
<html xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity4">
	<head>
		<title>VEUSDAS</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="css/main/main.css" />
		<link rel="stylesheet" href="css/main/owl.carousel.css">
        <link rel="stylesheet" href="css/web/core/bootstrap.min.css">
        <link rel="stylesheet" href="css/web/core/animate.min.css">
        <#--<link rel="stylesheet" href="css/web/main/main.css">-->
        <link rel="stylesheet" href="css/web/main/setting.css">
        <link rel="stylesheet" href="css/web/main/hover.css">
        <link rel="stylesheet" href="css/web/magnific/magic.min.css">
        <link rel="stylesheet" href="css/web/magnific/magnific-popup.css">
        <link rel="stylesheet" href="css/web/magnific/magnific-popup-zoom-gallery.css">
        <link rel="stylesheet" href="css/web/color/pasific.css">
        <link rel="stylesheet" href="css/web/icon/font-awesome.css">
        <link rel="stylesheet" href="css/web/icon/et-line-font.css">

	</head>
	<body class="landing" style="font-family: "Raleway", Arial, Helvetica, sans-serif">
		<!-- Header -->
			<header id="header" class="alt">
				<nav id="nav">
					<ul>
                        <li><a href="/instagram">Instagram</a></li>
						<li><a href="/garant">Гарант</a></li>
						<li><a href="/ads">Доска объявлений</a></li>
                        <li><a href="/web">Создание сайтов</a></li>
                        <li><a href="/services">Услуги</a></li>
                        <#if user??>
                            <li><a href="/cabinet" class="userLink">Личный кабинет</a></li>
                        <#else>
                            <li><a href="/login" class="userLink">Войти</a></li>
                        </#if>
					</ul>
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
				</nav>
			</header>

			<a href="#menu" class="navPanelToggle"><span class="fa fa-bars"></span></a>

		<!-- Banner -->
			<section id="banner">
				<h2>Veusdas</h2>
				<p>Продвижение интернет-проектов <br /> 
				Услуги дизайна <br/>
				Гарант-сервис <br/>
				Разработка сайтов</p>
				<ul class="actions">
					<li><a href="#two" class="button special big">Подробнее</a></li>
				</ul>
			</section>
			
			<!-- Two -->
			<section id="two" class="wrapper style1 special">
				<div class="container">
					<header class="major">
						<h2>Почему нас выбирают?</h2>
						<p>главные особенности нашего агенства!</p>
					</header>
					<div class="row 150%">
						<div class="4u 12u$(medium)">
							<section class="box">
								<i class="icon big rounded color1 fa-clock-o"></i>
								<h3>Опыт работы</h3>
								<p>Мы предоставляем свои услуги более 2-ух лет и по праву считаемся одними из лучших на рынке</p>
							</section>
						</div>
						<div class="4u 12u$(medium)">
							<section class="box">
								<i class="icon big rounded color9 fa-rocket"></i>
								<h3>Никаких грабберов</h3>
								<p>Мы наполним ваше сообщество оригинальным контентом, который будет соответствовать интересам Вашей аудитории.</p>
							</section>
						</div>
						<div class="4u$ 12u$(medium)">
							<section class="box">
								<i class="icon big rounded color6 fa-shield"></i>
								<h3>Гарантия качества</h3>
								<p>За всё время работы не было оставлено ни одного отрицательного отзыва</p>
							</section>
						</div>
					</div>
				</div>
			</section>
			

			<!-- One -->
				<section id="one" class="wrapper style1">
					<div class="container 75%">
						<div class="row 200%">
							<div id="aboutText" class="6u 12u$(medium)">
								<header class="major">
									<h2>о нас</h2>
                                    <img src="images/main/team.jpg" alt="Our team" style="max-width: 430px">
								</header>
							</div>
							<div class="6u$ 12u$(medium)"  style="padding-left: 100px">
								<p>С 2014 года мы создавали команду уникальных специалистов. Более 60 опытных и умелых сотрудников знают, как достигнуть результата в области интернет-маркетинга. Уже 2 года мы развиваемся вместе с рынком, поэтому мы уверены в наших знаниях. Мы – профессионалы и доказываем обоснованность этой позиции ежедневно.</p>
								<p>Мы используем только передовые технологии планирования и проведения рекламных кампаний, с помощью которых достигаем целевые показатели более 350 наших клиентов. Мы выбираем те решения, которые позволяют контролировать и эффективно управлять затратами на привлечение ваших клиентов.</p>
								<p>У нас собраны самые лучшие площадки в интернете, которые порадают вас высоким качеством и низкой ценой.</p>
							</div>
						</div>
					</div>
				</section>

			

			<!-- Three -->
			<section id="three" class="wrapper style1 special">
				<div class="inner">
					<header>
						<h2>Наша команда</h2>
					</header>
					<div class="flex flex-4">
						<div class="profile-box person">
							<div class="image round">
								<a href="https://vk.com/id390604029" target="_blank"><img src="images/main/crew-blaz-robar.jpg" alt="Person 1" /></a>
							</div>
							<h3>Владислав Леус</h3>
							<p>Директор агенства. SEO-продвижение.</p>
						</div>
						<div class="profile-box person">
							<div class="image round">
								<a href="https://vk.com/id385022409" target="_blank"><img src="images/main/crew-dude.jpg" alt="Person 2" /></a>
							</div>
							<h3>АРТУР КНЯЗЕВ</h3>
							<p>Дизайнер.</p>
						</div>
						<div class="profile-box person">
							<div class="image round">
								<a href="https://vk.com/kalemb" target="_blank"><img src="images/main/crew-mary-lou.jpg" alt="Person 3" /></a>
							</div>
							<h3>Антон Веб</h3>
							<p>Веб-разработчик.</p>
						</div>
						<div class="profile-box person">
							<div class="image round">
								<a href="https://vk.com/id258993255" target="_blank"><img src="images/main/crew-peter-finlan.jpg" alt="Person 4" /></a>
							</div>
							<h3>РУСЛАН КОДЕНЕЦ</h3>
							<p>Гарант агенства Veusdas.</p>
						</div>
					</div>
				</div>
			</section>

			<!-- Four -->
				<section id="four" class="wrapper style3 special">
						<div class="container">
						    <div class="row">
						        <div class="4u 6u(small) 12u$(xsmall) stats-container">
						            <i class="fa fa-rocket fa-3x"></i>
						            <div class="stats-info">
						                <p class="stats-number" id="success"></p>
						                <p class="stats-text">Выполненых заказов</p>
						            </div>
						        </div>
						        <div class="4u 6u$(small) 12u$(xsmall) stats-container">
						            <i class="fa fa-book fa-3x"></i>
						            <div class="stats-info">
						                <p class="stats-number" id="reply"></p>
						                <p class="stats-text">Хороших отзывов</p>
						            </div>
						        </div>
						        <div class="4u$ 6u(small) 12u$(xsmall) stats-container">
						            <i class="fa fa-male fa-3x"></i>
						            <div class="stats-info">
						                <p class="stats-number" id="clients"></p>
						                <p class="stats-text">Постоянных клиентов</p>
						            </div>
						        </div>
						    </div>
                            <style>
                                #success,#reply,#clients{
                                    text-align:left;
                                    margin: 0em 0 1em 10px;
                                    font-weight: 700;
                                }
							</style>
						
                            <ul class="actions">
                                <li><a href="https://vk.com/id390604029" class="button special big">Напишите нам</a></li>
                            </ul>
						</div>
				</section>
				
				<!-- Five -->
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

                <#--<section id="works" class="wrapper style1">-->
					<#--<div class="container 75%">-->
						<#--<div class="row 200%">-->
							<#--<div class="12u$ 12u$(medium)">-->
								<#--<header class="major">-->
									<#--<h3>Наши работы</h3>-->
								<#--</header>-->
							<#--</div>-->
							<#--<div class="12u$ 12u$(medium)">-->
								<#--<div class="owl-carousel">-->
								    <#--<div class="item">-->
								        <#--<img src="images/main/owl/freebie-03.jpg" alt="">-->
								    <#--</div>-->
								    <#--<div class="item">-->
								        <#--<img src="images/main/owl/freebie-04.jpg" alt="">-->
								    <#--</div>-->
								    <#--<div class="item">-->
								        <#--<img src="images/main/owl/img5.jpg" alt="">-->
								    <#--</div>-->
								    <#--<div class="item">    -->
								        <#--<img src="images/main/owl/img6.jpg" alt="">-->
								    <#--</div>    -->
								    <#--<div class="item">-->
								        <#--<img src="images/main/owl/img7.jpg" alt="">-->
								    <#--</div>-->
								    <#--<div class="item">-->
								        <#--<img src="images/main/owl/img8.jpg" alt="">-->
								    <#--</div>-->
								    <#--<div class="item">    -->
								        <#--<img src="images/main/owl/landio-freebie.jpg" alt="">-->
								    <#--</div>-->
								    <#--<div class="item">-->
								        <#--<img src="images/main/owl/sedna-freebie.jpg" alt="">-->
								    <#--</div>-->
								<#--</div>-->
							<#--</div>-->
						<#--</div>-->
					<#--</div>-->
				<#--</section>-->

<!--
				<section class="get-started has-padding text-center" id="get-started">
                    <div class="container">
                        <div class="row">
                            <div class="12u$ like">
                                <h2>Хочешь большое количество ЛАЙКОВ и ПРОСМОТРОВ?</h2>
                                <a href="#five" class="btn-order">Заказать</a>
                            </div>
                        </div>
                    </div>
                </section>
-->
        <!-- Portfolio Area -->
        <div id="portfolioGrid">
            <div class="container-fluid bg-gray pt30">

                <div class="row">
                    <div class="col-md-12">

                        <!-- filters start -->
                        <ul class="filters text-center  mt25 mb50">
                            <li><a class="active" data-filter="*">Все работы</a></li>
                            <li><a data-filter=".html">Посты</a></li>
                            <li><a data-filter=".wordpress">Рекламные посты</a></li>
                            <li><a data-filter=".woocommerce">Аватарки</a></li>
                            <li><a data-filter=".joomla">Шапки</a></li>
                            <li><a data-filter=".magento">Стикеры</a></li>
                            <li><a data-filter=".shopify">Прайсы</a></li>
                        </ul>
                        <!-- filters end -->

                        <div class="portfolio center-block">
                            <!--Ad-->
                            <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12 wordpress html" data-category="">
                                <a href="images/web/portfolio/ad/Aq3_PbCr28E.jpg" class="magnific-popup">
                                </a>
                                <img src="images/web/portfolio/ad/Aq3_PbCr28E.jpg" alt="portfolio wordpress" class="img-responsive">
                            </div>


                            <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12 html">
                                <a href="images/web/portfolio/ad/XAdIgl8JluI.jpg" class="magnific-popup">
                                </a>
                                <img src="images/web/portfolio/ad/XAdIgl8JluI.jpg" alt="portfolio woocommerce" class="img-responsive">
                            </div>

                            <!--Avatar-->
                            <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12  woocommerce">
                                <a href="images/web/portfolio/avatar/-73F8dbzLMw.jpg" class="magnific-popup">
                                </a>
                                <img src="images/web/portfolio/avatar/-73F8dbzLMw.jpg" alt="portfolio woocommerce" class="img-responsive">
                            </div>

                            <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12 woocommerce">
                                <a href="images/web/portfolio/avatar/-T0_7l5l3Zc.jpg" class="magnific-popup">
                                </a>
                                <img src="images/web/portfolio/avatar/-T0_7l5l3Zc.jpg" alt="portfolio woocommerce" class="img-responsive">
                            </div>
                            <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12 woocommerce">
                                <a href="images/web/portfolio/avatar/bnbx6gd9aNw.jpg" class="magnific-popup">
                                </a>
                                <img src="images/web/portfolio/avatar/bnbx6gd9aNw.jpg" alt="portfolio woocommerce" class="img-responsive">
                            </div>
                            <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12 woocommerce">
                                <a href="images/web/portfolio/avatar/DqrTvn0b2OI.jpg" class="magnific-popup">
                                </a>
                                <img src="images/web/portfolio/avatar/DqrTvn0b2OI.jpg" alt="portfolio woocommerce" class="img-responsive">
                            </div>
                            <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12 woocommerce">
                                <a href="images/web/portfolio/avatar/fU_1mRoV2Bo.jpg" class="magnific-popup">
                                </a>
                                <img src="images/web/portfolio/avatar/fU_1mRoV2Bo.jpg" alt="portfolio woocommerce" class="img-responsive">
                            </div>

                            <!--Header -->
                            <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12 joomla">
                                <a href="images/web/portfolio/header/kIvFLg7XDmw.jpg" class="magnific-popup">
                                </a>
                                <img src="images/web/portfolio/header/kIvFLg7XDmw.jpg" alt="portfolio joomla" class="img-responsive">
                            </div>

                            <!--Post-->
                            <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12 html">
                                <a href="images/web/portfolio/post/4XXOH_kKMRg.jpg" class="magnific-popup">
                                </a>
                                <img src="images/web/portfolio/post/4XXOH_kKMRg.jpg" alt="portfolio html" class="img-responsive">
                            </div>
                            <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12 html">
                                <a href="images/web/portfolio/post/UBWAArS19Q8.jpg" class="magnific-popup">
                                </a>
                                <img src="images/web/portfolio/post/UBWAArS19Q8.jpg" alt="portfolio html" class="img-responsive">
                            </div>
                            <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12 html">
                                <a href="images/web/portfolio/post/wXVsR_-SRR4.jpg" class="magnific-popup">
                                </a>
                                <img src="images/web/portfolio/post/wXVsR_-SRR4.jpg" alt="portfolio html" class="img-responsive">
                            </div>

                            <!--Price-->
                            <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12 shopify">
                                <a href="images/web/portfolio/price/E0HmJ4ztAZ8.jpg" class="magnific-popup">
                                </a>
                                <img src="images/web/portfolio/price/E0HmJ4ztAZ8.jpg" alt="portfolio shopify" class="img-responsive">
                            </div>
                            <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12 shopify">
                                <a href="images/web/portfolio/price/ogm1WJul1v8.jpg" class="magnific-popup">
                                </a>
                                <img src="images/web/portfolio/price/ogm1WJul1v8.jpg" alt="portfolio shopify" class="img-responsive">
                            </div>

                            <!--Sticker-->
                            <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12 magento">
                                <a href="images/web/portfolio/stickers/2DpaDLi6LNE.jpg" class="magnific-popup">
                                </a>
                                <img src="images/web/portfolio/stickers/2DpaDLi6LNE.jpg" alt="portfolio magento" class="img-responsive">
                            </div>
                            <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12 magento">
                                <a href="images/web/portfolio/stickers/3jFkrrp3R58.jpg" class="magnific-popup">
                                </a>
                                <img src="images/web/portfolio/stickers/3jFkrrp3R58.jpg" alt="portfolio magento" class="img-responsive">
                            </div>
                            <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12 magento">
                                <a href="images/web/portfolio/stickers/7MMFtTl7ZJY.jpg" class="magnific-popup">
                                </a>
                                <img src="images/web/portfolio/stickers/7MMFtTl7ZJY.jpg" alt="portfolio magento" class="img-responsive">
                            </div>
                            <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12 magento">
                                <a href="images/web/portfolio/stickers/kC3qM4EtNTU.jpg" class="magnific-popup">
                                </a>
                                <img src="images/web/portfolio/stickers/kC3qM4EtNTU.jpg" alt="portfolio magento" class="img-responsive">
                            </div>
                            <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12 magento">
                                <a href="images/web/portfolio/stickers/zGhLwEDUxWw.jpg" class="magnific-popup">
                                </a>
                                <img src="images/web/portfolio/stickers/zGhLwEDUxWw.jpg" alt="portfolio magento" class="img-responsive">
                            </div>

                        </div><!-- portfolio end -->

                    </div><!-- col-md-12 end -->
                </div><!-- row end -->
            </div><!-- container end -->
        </div><!-- section portfolio end -->


		<!-- Footer -->
			<footer id="footer">
				<div class="container">
					<ul class="icons">
						<li><a href="https://vk.com/id390604029" class="icon fa-vk" target="_blank"></a></li>
					</ul>
					<ul class="copyright">
						<li>&copy; Veusdas 2016</li>
						<li>Design: <a href="https://vk.com/kalemb" target="_blank">Katya Kovalyova</a></li>
					</ul>
				</div>
			</footer>

		<!-- Scripts -->
			<script src="js/jquery.min.js"></script>
       		<script src="js/web/core/bootstrap.min.js"></script>
        <!-- Magnific Popup
       =====================================-->
        <script src="js/web/magnific-popup/jquery.magnific-popup.min.js"></script>
        <script src="js/web/magnific-popup/magnific-popup-zoom-gallery.js"></script>
        <!-- Progress Bars
        =====================================-->
        <#--<script src="js/web/progress-bar/bootstrap-progressbar.js"></script>-->
        <#--<script src="js/web/progress-bar/bootstrap-progressbar-main.js"></script>-->

        <!-- Typed
        =====================================-->
        <#--<script src="js/web/typed/typed.min.js"></script>-->

        <!-- JQuery Main
        =====================================-->
        <script src="js/web/main/jquery.appear.js"></script>
        <script src="js/web/main/isotope.pkgd.min.js"></script>
        <#--<script src="js/web/main/parallax.min.js"></script>-->
        <script src="js/web/main/owl.carousel.min.js"></script>
        <script src="js/web/main/jquery.sticky.js"></script>
        <#--<script src="js/web/main/jquery.backgroundvideo.js"></script>-->
        <script src="js/web/main/imagesloaded.pkgd.min.js"></script>
        <script src="js/web/main/main.js"></script>

        <#--<script src="js/main/owl.carousel.min.js"></script>-->
			<script src="js/skel.min.js"></script>
			<script src="js/main/util.js"></script>
			<script src="js/main/main.js"></script>
            <script src="js/main/jquery.countTo.js"></script>
            <script type="text/javascript">
                $(document).ready(function() {
                    $('.owl-carousel').owlCarousel({
                        loop:true, //Зацикливаем слайдер
                        lazyLoad:true,
                        margin:10, //Отступ от картино если выводите больше 1
                        nav:false, //Отключил навигацию
                        autoplay:true, //Автозапуск слайдера
                        smartSpeed:1500, //Время движения слайда
                        autoplayTimeout:2000, //Время смены слайда
                        responsive:{ //Адаптация в зависимости от разрешения экрана
                            0:{
                                items:1
                            },
                            600:{
                                items:1
                            },
                            1000:{
                                items:1
                            }
                        }
                    });
                });
            </script>
            <script type="text/javascript">
                $('#success').countTo({
                    from: 1,
                    to: 387,
                    speed: 4000,
                    refreshInterval: 50,
                });
                $('#reply').countTo({
                    from: 1,
                    to: 341,
                    speed: 4000,
                    refreshInterval: 50,
                });
                $('#clients').countTo({
                    from: 1,
                    to: 43,
                    speed: 4000,
                    refreshInterval: 50,
                });
            </script>
            <script type="text/javascript">
                $(document).ready(function(){
                    $('a[href*=#]').bind("click", function(e){
                    var anchor = $(this);
                    $('html, body').stop().animate({
                    scrollTop: $(anchor.attr('href')).offset().onTop
                    }, 1000);
                    e.preventDefault();
                    });
                    return false;
                });
            </script>

	</body>
</html>