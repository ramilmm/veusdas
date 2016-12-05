<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Data Tables</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="css/admin/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- DataTables -->
  <!--  <link rel="stylesheet" href="../../plugins/datatables/dataTables.bootstrap.css">-->
  <!-- Theme style -->
  <link rel="stylesheet" href="css/admin/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="css/admin/skins/_all-skins.min.css">

  <!-- jQuery 2.2.3 -->
  <script src="js/admin/jQuery/jquery-2.2.3.min.js"></script>

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <h1 th:inline="text">Hello, [[${account.fullName}]]!</h1>
    <a th:href="@{/logout}" class="btn btn-danger">Logout</a>

  <header class="main-header">
    <!-- Logo -->
    <a href="/admin" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>adm</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Veusdas</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="images/admin/user2-160x160.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs">Alexander Pierce</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="images/admin/user2-160x160.jpg" class="img-circle" alt="User Image">

                <p>
                  Alexander Pierce
                  <small>Member since Nov. 2012</small>
                </p>
              </li>
              <!-- Menu Body -->
              <li class="user-body">
                <div class="row">
                  <div class="col-xs-12 text-center">
                    Счёт: 500р
                  </div>
                </div>
                <!-- /.row -->
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="/logout" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="images/admin/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Alexander Pierce</p>
          <a ><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">Меню</li>
        <li class="active treeview">
          <a href="/admin">
            <i class="fa fa-dashboard"></i> <span>Главная</span>
          </a>
        </li>
<!--
        <li class="treeview">
          <a href="pages/charts/chartjs.html">
            <i class="fa fa-pie-chart"></i>
            <span>Статистика</span>
          </a>
        </li>
-->
        <li class="treeview">
          <a href="/admin/vk">
            <i class="fa fa-vk"></i> <span>VK</span>
          </a>
        </li>
         <li class="treeview">
          <a href="/admin/instagram">
            <i class="fa fa-instagram"></i> <span>Instagram</span>
          </a>
        </li>
         <li class="treeview">
          <a href="/admin/adverts">
            <i class="fa fa-table"></i> <span>Объявления</span>
          </a>
        </li>
         <li class="treeview">
          <a href="/admin/clients">
            <i class="fa fa-user"></i> <span>Пользователи</span>
          </a>
        </li>
        
        </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="/admin"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3>150</h3>

              <p>Объявлений</p>
            </div>
            <div class="icon">
              <i class="ion ion-bag"></i>
            </div>
            <a href="/admin/adverts" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3>250</h3>

              <p>Пабликов</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
            <a href="/admin/vk" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
              <h3>44</h3>

              <p>Пользователя</p>
            </div>
            <div class="icon">
              <i class="ion ion-person-add"></i>
            </div>
            <a href="/admin/clients" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner">
              <h3>65</h3>

              <p>Страниц instagram</p>
            </div>
            <div class="icon">
              <i class="ion ion-social-instagram-outline"></i>
            </div>
            <a href="/admin/instagram" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
<!--      </div>-->
      <!-- /.row -->
      <!-- Content Wrapper. Contains page content -->
<!--
  <div class="content-wrapper">
     Content Header (Page header) 
    <section class="content-header">
      <h1>
        Список пабликов
      </h1>
    </section>
-->
        <div class="col-xs-12">
            

          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Заявки в список пабликов</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Название</th>
                  <th>Цена</th>
                  <th>Статистика</th>
                  <th>Охват</th>
                  <th>Администратор</th>
                  <th>Действие</th>
                </tr>
                </thead>
                <tbody>
                  <#if publicApplications??>


                    <#list publicApplications as app>

                      <tr class="row${app.id}">
                        <td>${app.name}</td>
                        <td>
                            ${app.cost}
                        </td>
                        <td>
                            ${app.stat_link}
                        </td>
                        <td>
                            ${app.public_category}
                        </td>
                        <td>
                            ${app.admin_link}
                        </td>
                        <td>
                            <div class="buttons">
                              <a  class="btn btn-success accept acceptSpisok" data-id="${app.id}">Принять</a> <br/>
                              <a  class="btn btn-danger delete deleteSpisok" data-id="${app.id}">Отклонить</a>
                            </div>
                        </td>
                    </tr>
                    </#list>
                  </#if>

                </tbody>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
          </div>
        </div>
        
            

          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Заявки в список instagram</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Название</th>
                  <th>Подписчики</th>
                  <th>Цена</th>
                  <th>Администратор</th>
                  <th>Действие</th>
                </tr>
                </thead>
                <tbody>
                <#if instApplications??>


                  <#list instApplications as inst>

                      <tr class="row${inst.id}">
                        <td>${inst.name}</td>
                        <td>
                            ${inst.subscribes}
                        </td>
                        <td>
                            ${inst.cost}
                        </td>
                        <td>
                            ${inst.admin_link}
                        </td>
                        <td>
                            <div class="buttons">
                              <a class="btn btn-success accept acceptInst" data-id="${inst.id}">Принять</a> <br/>
                              <a class="btn btn-danger delete deleteInst" data-id="${inst.id}">Отклонить</a>
                          </div>
                        </td>
                    </tr>
                  </#list>
                </#if>
                </tbody>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
          
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Заявки в список объявлений</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Название</th>
                  <th>Профиль вк</th>
                  <th>Цена</th>
                  <th>Комментарий</th>
                  <th>Действие</th>
                </tr>
                </thead>
                <tbody>
                <#if advertsApplications??>


                  <#list advertsApplications as ad>

                      <tr class="row${ad.id}">
                        <td>${ad.advert_name}</td>
                        <td>
                            ${ad.profile_link}
                        </td>
                        <td>
                            ${ad.cost}
                        </td>
                        <td>
                            ${ad.comment}
                        </td>
                        <td>
                            <div class="buttons">
                              <a class="btn btn-success accept acceptAppAdv" data-id="${ad.id}">Принять</a> <br/>
                              <a class="btn btn-danger delete deleteAppAdv" data-id="${ad.id}">Отклонить</a>
                          </div>
                        </td>
                    </tr>

                    </#list>
                </#if>

                </tbody>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
    
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.3.8
    </div>
    <strong>Copyright &copy; 2016 <a href="http://www.veusdas.com">Veusdas</a>.</strong> All rights
    reserved.
  </footer>

  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="js/admin/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="css/admin/bootstrap/js/bootstrap.min.js"></script>
<script src="js/admin/app.min.js"></script>

<script>
    $(document).ready(function () {

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



    });

</script>
</body>
</html>
