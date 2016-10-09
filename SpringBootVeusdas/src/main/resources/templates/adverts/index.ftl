<#-- @ftlvariable name="adverts" type="java.util.List<ru.veusdas.Model.Adverts>"-->
<!DOCTYPE HTML>

<html lang="ru">
	<head>
		<title>Доска объявлений VEUSDAS</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="../../static/adverts/assets/css/main.css" />
		<link rel="stylesheet" href="../../static/adverts/assets/css/animate.css" />
		<script src="../../static/adverts/assets/js/wow.min.js"></script>
		
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
				<h2>Доска объявлений <strong>VEUSDAS</strong></h2>
				<p>Мы поможем продать вашу услугу.</p>
				<ul class="actions" id="menu">
                    <li><button class="button special big" data-id="#form">Подать объявление</button></li>
                    <li><a href="#six" class="button big">Посмотреть объявления</a></li>
				</ul>
			</section>

			
			<!-- Three -->
				<section id="six" class="wrapper style1">
					<div class="container">
					    <div class="row">
							<#list adverts as ad>
								<div class="4u 6u(small) 12u$(xsmall) wow fadeInLeft">
									<div class="image rounded"><a href="${ad.public_link}" target="_blank"><img src="${ad.avatar_link}" alt="${ad.advert_name}" /></a></div>
									<div class="content">
										<header>
											<h4>${ad.advert_name}</h4>
											<p>${ad.advert_type}</p>
											<span class="cost">300 рублей</span>
										</header>
                                            <a href="${ad.profile_link}" class="button special small">Написать</a>
										<p>${ad.comment}</p>
									</div>
								</div>
							</#list>
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
										<div class="9u 12u$(xsmall)"><input type="text" name="ava" th:field="*{ava}" id="ava" placeholder="Ссылка на аватарку объявления (Аватарка группы, личной страницы и т.д.)" /></div>
										<div class="3u$ 12u$(xsmall)"><input type="text" name="cost" th:field="*{cost}" id="cost" placeholder="Цена" maxlength="10"></div>
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
										<div class="7u$ 12u$(xsmall)"><input type="text" name="dopLink" th:field="*{dopLink}" id="dop-link" placeholder="Ссылка на паблик или статистику (Необязательно)"></div>
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
			<script src="../../static/adverts/assets/js/jquery.min.js"></script>
			<script src="../../static/adverts/assets/js/skel.min.js"></script>
			<script src="../../static/adverts/assets/js/util.js"></script>
			<script src="../../static/adverts/assets/js/main.js"></script>
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
<script src="../../static/adverts/assets/js/wow.min.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="../../static/adverts/assets/js/common.js"></script>
<script>new WOW().init();</script>
	</body>
</html>