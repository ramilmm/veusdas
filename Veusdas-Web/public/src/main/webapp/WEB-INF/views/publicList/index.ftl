<#-- @ftlvariable name="publicList" type="java.util.List<mvc.common.PublicList>"-->
<#assign sec=JspTaglibs["http://www.springframework.org/security/tags"]>
<#include "../template/template.ftl">
<@mainTemplate title="Veusdas список сообществ"
    styles=[
        "assets/css/main.css",
        "css/ion.rangeSlider.css",
        "css/ion.rangeSlider.skinHTML5.css"
    ] scripts=[
        "css/ie/html5shiv.js",
        "js/own/takeBook.js"
]/>
<#macro m_body>
	<body class="landing">


		<!-- Header -->
			<header id="header" class="alt">
				<h1><strong><a href="index.ftl">VEUSDAS</a></strong></h1>
				<nav id="nav">
					<ul>
						<li><a href="/">Home</a></li>
						<li><a href="generic.html">Generic</a></li>
						<li><a href="elements.html">Elements</a></li>
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

                                            <a href="${public.link}" target="_blank"><img id="avatar" src="${public.avatar_link}" width="30" height="30" /></a>
-
                                        </div>
                                        <a href="${public.link}">${public.name}</a>
                                      </td>

                                        <td><span class="statistic"><a href="${public.stat_link}" target="_blank"><img id="statistic" src="images/profits.png" alt="statistic"></a></span></td>
                                      <td>185 000</td>
                                      <td style="text-transform: lowercase">
                                            ${public.cost}
                                      </td>
                                      <td class="btn"><a href="${public.admin_link}" class="order button small" target="_blank">Заказать</a></td>
                                    </tr>
                                  </#list>
                                <tr id="/sites/3/" class="click" style="cursor: pointer">
                                  <td>
                                    <div class="image">

                                        <img id="avatar" src="https://pp.vk.me/c633930/v633930378/3a008/whmr7OOCfKg.jpg" width="30" height="30" />

                                    </div>
                                    <a href="/sites/3/">Sabr.</a>
                                  </td>

                                    <td><span class="statistic"><a href="https://vk.com/stats?act=reach&gid=42045023" target="_blank"><img id="statistic" src="images/profits.png" alt="statistic" ></a></span></td>
                                  <td>824 000</td>
                                  <td style="text-transform: lowercase">
                                        650
                                  </td>
                                  <td class="btn"><a href="https://vk.com/kalemb" class="order button small" target="_blank">Заказать</a></td>
                                </tr>
                                
                                <tr id="/sites/3/" class="click" style="cursor: pointer">
                                  <td>
                                    <div class="image">

                                        <img id="avatar" src="https://pp.vk.me/c623616/v623616180/3f265/IpgvVTmGYTA.jpg" width="30" height="30" />

                                    </div>
                                    <a href="/sites/3/">Moréna.🍃</a>
                                  </td>

                                    <td><span class="statistic"><a href="https://vk.com/stats?act=reach&gid=42045023" target="_blank"><img id="statistic" src="images/profits.png" alt="statistic" ></a></span></td>
                                  <td>283 000</td>
                                  <td style="text-transform: lowercase">
                                        220
                                  </td>
                                  <td class="btn"><a href="https://vk.com/kalemb" class="order button small" target="_blank">Заказать</a></td>
                                </tr>
                                <tr id="/sites/3/" class="click" style="cursor: pointer">
                                  <td>
                                    <div class="image">

                                        <img id="avatar" src="https://pp.vk.me/c637425/v637425180/fcd9/3oGsjfDU5qo.jpg" width="30" height="30" />

                                    </div>
                                    <a href="/sites/3/">forget🍃</a>
                                  </td>

                                    <td><span class="statistic"><a href="https://vk.com/stats?act=reach&gid=42045023" target="_blank"><img id="statistic" src="images/profits.png" alt="statistic"></a></span></td>
                                  <td>53 000</td>
                                  <td style="text-transform: lowercase">
                                        50
                                  </td>
                                  <td class="btn"><a href="https://vk.com/kalemb" class="order button small" target="_blank">Заказать</a></td>
                                </tr>
                                <tr id="/sites/3/" class="click" style="cursor: pointer">
                                  <td>
                                    <div class="image">

                                        <img id="avatar" src="https://pp.vk.me/c637823/v637823378/aff9/Ut608hjj1Ks.jpg" width="30" height="30" />

                                    </div>
                                    <a href="/sites/3/">Kulamati | كلماتي</a>
                                  </td>

                                    <td><span class="statistic"><a href="https://vk.com/stats?act=reach&gid=42045023" target="_blank"><img id="statistic" src="images/profits.png" alt="statistic"></a></span></td>
                                  <td>66 000</td>
                                  <td style="text-transform: lowercase">
                                        40
                                  </td>
                                  <td class="btn"><a href="https://vk.com/kalemb" class="order button small" target="_blank">Заказать</a></td>
                                </tr>
                                 
                                  </table>

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
							<li><a href="#" class="button special big">Написать гаранту</a></li>
						</ul>
					</div>
				</section>
				
				
				<section id="form">
                    <div class="form">
                        <h2>Добавь своё сообщество в этот список!</h2>
						<p>Просто оставь заявку и мы рассмотрим её в ближайшее время!</p>
						<div class="row modal-dialog">
							<div class="8u 12u$(small)">
								<form method="post" action="#">
									<div class="row uniform 50%">
										<div class="6u 12u$(xsmall)"><input type="text" name="name" id="name" placeholder="Название паблика" /></div>
										<div class="6u$ 12u$(xsmall)"><input type="text" name="link" id="link" placeholder="Ссылка на ваш  профиль ВКонтакте" /></div>
										<div class="9u 12u$(xsmall)"><input type="text" name="ava" id="ava" placeholder="Ссылка на аватарку паблика" /></div>
										<div class="3u$ 12u$(xsmall)"><input type="text" name="cost" id="cost" placeholder="Цена" maxlength="10"></div>
										<div class="5u 12u$(xsmall)">
										    <select name="category" id="category">
										        <option value>- Охват пабликa -</option>
										        <option value="20">>20.000</option>
										        <option value="50">>50.000</option>
										        <option value="100">>100.000</option>
										    </select>
										</div>
										<div class="7u$ 12u$(xsmall)"><input type="text" name="dop-link" id="dop-link" placeholder="Ссылка на статистику паблика"></div>
										<div class="12u$"><textarea name="message" id="message" placeholder="Комментарий для администрации" maxlength="200" rows="4"></textarea></div>
									</div>
								</form>
								<ul class="actions">
									<li><input type="submit" value="Отправить заявку" data-dismiss="modal"/></li>
								</ul>
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
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
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
<script src="js/wow.min.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="assets/js/common.js"></script>
<script>new WOW().init();</script>
	</body>
</#macro>