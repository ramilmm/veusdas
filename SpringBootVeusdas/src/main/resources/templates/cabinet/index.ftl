<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Личный кабинет</title>
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

    <header class="main-header">
        <!-- Logo -->
        <a href="/cabinet" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>cab</b></span>
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
                            <span class="hidden-xs">${user.getUsername()}</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="images/admin/user2-160x160.jpg" class="img-circle" alt="User Image">

                                <p>
                                ${user.getUsername()}
                                </p>
                            </li>
                            <!-- Menu Body -->
                            <li class="user-body">
                                <div class="row">
                                    <div class="col-xs-12 text-center">
                                        Счёт: ${userAccount}
                                    </div>
                                </div>
                                <!-- /.row -->
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
                    <p>${user.getUsername()}</p>
                    <a ><i class="fa fa-circle text-success"></i> Online</a>
                </div>
            </div>
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">
                <li class="header">Меню</li>
                <li class="active treeview">
                    <a href="/cabinet">
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
                    <a href="/cabinet/vk">
                        <i class="fa fa-vk"></i> <span>VK</span>
                    </a>
                </li>
                <li class="treeview">
                    <a href="/cabinet/instagram">
                        <i class="fa fa-instagram"></i> <span>Instagram</span>
                    </a>
                </li>
                <li class="treeview">
                    <a href="/cabinet/adverts">
                        <i class="fa fa-table"></i> <span>Объявления</span>
                    </a>
                </li>
                <li class="treeview">
                    <a href="/cabinet/ref">
                        <i class="fa fa-user"></i> <span>Рефералы</span>
                    </a>
                </li>

            </ul>
        </section>
        <!-- /.sidebar -->
    </aside
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="/cabinet"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-lg-4 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3>${adCount}</h3>

              <p>Объявлений</p>
            </div>
            <div class="icon">
              <i class="ion ion-bag"></i>
            </div>
            <a href="/cabinet/adverts" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-4 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3>${pubCount}</h3>

              <p>Пабликов</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
            <a href="/cabinet/vk" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-4 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner">
              <h3>${instCount}</h3>

              <p>Страниц instagram</p>
            </div>
            <div class="icon">
              <i class="ion ion-social-instagram-outline"></i>
            </div>
            <a href="/cabinet/instagram" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
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
              <h3 class="box-title">Настройка профиля</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <div class="editProfile">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                                        <div class="col-sm-10">
                                            <input type="email" class="form-control" value="${user.getUsername()}" id="inputEmail3">
                                        </div>
                                    </div>
                                    <#--<div class="form-group">-->
                                        <#--<label for="inputPassword3" class="col-sm-2 control-label">Новый пароль</label>-->
                                        <#--<div class="col-sm-10">-->
                                            <#--<input type="password" class="form-control" id="inputPassword3" placeholder="Новый пароль">-->
                                        <#--</div>-->
                                    <#--</div>-->
                                    <div class="form-group">
                                        <label for="requisites" class="col-sm-2 control-label">Номер кошелька(WEBMONEY,QIWI,СБЕРБАНК)</label>
                                        <div class="col-sm-10">
                                            <#if userReq??>
                                                <input type="text" class="form-control" id="requisites" value="${userReq}">
                                            <#else>
                                                <input type="text" class="form-control" id="requisites" placeholder="реквизиты">
                                            </#if>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="vk" class="col-sm-2 control-label">Профиль вконтакте</label>
                                        <div class="col-sm-10">
                                            <#if userVk??>
                                                <input type="text" class="form-control" id="vk" value="${userVk}">
                                                <#else>
                                                <input type="text" class="form-control" id="vk" placeholder="vk.com/id717165712">
                                            </#if>
                                        </div>
                                    </div>
                                    <a href="#" class="btn btn-info btn-lg" id="save" data-username="${user.getUsername()}">Сохранить изменения</a>
                                </div>
                                <style>
                                    #inputEmail3,
                                    #requisites,
                                    #vk {
                                        width: 226px;
                                    }
                                </style>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
          </div>
        </div>

    
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

        $(document).on('click', '#save', function () {
            event.preventDefault();
            var $this = $(this);
            var user = $this.data('username');
            var username = $('#inputEmail3').val();
            var req = $('#requisites').val();
            var vk = $('#vk').val();
            $.ajax({
                type: 'POST',
                url: '/cabinet/saveProfile',
                data: {
                    username:user,
                    newUsername: username,
                    req:req,
                    vk:vk
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
