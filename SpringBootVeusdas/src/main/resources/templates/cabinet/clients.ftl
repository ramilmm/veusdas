<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Личный кабинет | Рефералы</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="../css/admin/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- DataTables -->
    <!--  <link rel="stylesheet" href="../../plugins/datatables/dataTables.bootstrap.css">-->
    <!-- Theme style -->
    <link rel="stylesheet" href="../css/admin/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../css/admin/skins/_all-skins.min.css">

    <!-- jQuery 2.2.3 -->
    <script src="../js/admin/jQuery/jquery-2.2.3.min.js"></script>

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
                            <span id="avatar" class="user-photo"></span>
                            <span id="name" class="hidden-xs">${user.getUsername()}</span>
                        </a>
                        <style>
                            #avatar, #avatar2 {
                                display: inline-block;
                                padding: 4px;
                                font-size: 20px;
                                width: 31px;
                                height: 26px;
                                line-height: 15px;
                                border-radius: 25px;
                                text-align: center;
                                margin-right: 8px;
                                color: white;
                            }
                            #avatar3 {
                                display: inline-block;
                                padding: 4px;
                                font-size: 32px;
                                width: 47px;
                                height: 43px;
                                line-height: 35px;
                                border-radius: 25px;
                                text-align: center;
                                margin-right: 8px;
                                color: white;
                                background-color: rgb(17, 225, 43);
                            }
                        </style>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <span id="avatar2"></span>

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
                    <span id="avatar3"></span>
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
    </aside>

    <script>
        var stringToColor = function stringToColor(str) {
            var hash = 0;
            var color = '#';
            var i;
            var value;
            var strLength;

            if(!str) {
                return color + '333333';
            }

            strLength = str.length;

            for (i = 0; i < strLength; i++) {
                hash = str.charCodeAt(i) + ((hash << 5) - hash);
            }

            for (i = 0; i < 3; i++) {
                value = (hash >> (i * 8)) & 0xFF;
                color += ('00' + value.toString(16)).substr(-2);
            }

            return color;
        };

        var name = '${user.username}';
        var letter = name.substr(0, 1).toUpperCase();
        var backgroundColor = stringToColor(name);
        var elementAvatar = document.getElementById('avatar');
        var elementAvatar2 = document.getElementById('avatar2');
        var elementAvatar3 = document.getElementById('avatar3');
        var elementName = document.getElementById('name');



        elementName.innerHTML = name;
        elementAvatar.innerHTML = letter;
        elementAvatar.style.backgroundColor = backgroundColor;

        elementAvatar2.innerHTML = letter;
        elementAvatar2.style.backgroundColor = backgroundColor;

        elementAvatar3.innerHTML = letter;
        elementAvatar3.style.backgroundColor = backgroundColor;
    </script>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Список пользователей
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">

            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Ваша реферальная ссылка</h3>
                    <h5>Друзья, и участники проекта. У нас действует партнерская программа, приглашая друзей на наш сайт, вы получаете 19% от стоимости их рекламы. Не забудьте предупредить своих друзей.</h5>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <span style="background-color: #FAFFBD;
                                    padding: 20px;
                                    font-size: 20px;
                                    margin-left: 13%;">http://www.veusdas.com/ref?id=${userId}</span>
                </div>
                <!-- /.box-body -->
            </div>

          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Пользователи</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Логин</th>
                </tr>
                </thead>
                <tbody>
                <#if referals??>
                <#list referals as user>
                    <tr>
                        <td>
                            ${user.getUsername()}
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
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <style>
    .box-body{
          width: 100%;
          overflow-y: auto;
          overflow: auto;
          margin: 0 0 1em;
        }
    </style>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.3.8
    </div>
    <strong>Copyright &copy; 2016 <a href="http://www.veusdas.com">Veusdas</a>.</strong> All rights
    reserved.
  </footer>

</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="../js/admin/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="../css/admin/bootstrap/js/bootstrap.min.js"></script>
<script src="../js/admin/app.min.js"></script>
</body>
</html>
