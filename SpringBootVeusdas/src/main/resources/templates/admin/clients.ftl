<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Список пользователей</title>
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
                            <span id="avatar" class="user-photo"></span>
                            <span id="name" class="hidden-xs">${user.username}</span>
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
                                ${user.username}
                                </p>
                            </li>
                        <#--<!-- Menu Body &ndash;&gt;-->
                        <#--<li class="user-body">-->
                        <#--<div class="row">-->
                        <#--<div class="col-xs-12 text-center">-->
                        <#--Счё-->
                        <#--</div>-->
                        <#--</div>-->
                        <#--<!-- /.row &ndash;&gt;-->
                        <#--</li>-->
                            <!-- Menu Footer-->
                        <#--<li class="user-footer">-->
                        <#--<div class="pull-left">-->
                        <#--<a href="#" class="btn btn-default btn-flat">Profile</a>-->
                        <#--</div>-->
                        <#--<div class="pull-right">-->
                        <#--<a href="/logout" class="btn btn-default btn-flat">Sign out</a>-->
                        <#--</div>-->
                        <#--</li>-->
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
                    <p>${user.username}</p>
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
              <h3 class="box-title">Пользователи</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Логин</th>
                  <th>Профиль вк</th>
                  <th>Реквизиты</th>
                  <th>Счёт</th>
                  <th>Оплатить</th>
                  <th>Забанить</th>
                </tr>
                </thead>
                <tbody>
                <#if users??>
                <#list users as user>
                    <tr>
                        <td>
                            ${user.username}
                        </td>
                        <td>
                            <#if user.vk??>
                                ${user.vk}
                            </#if>
                        </td>
                        <td>
                            <#if user.requisites??>
                                ${user.requisites}
                            </#if>
                        </td>
                        <td>
                           ${user.account}
                        </td>
                        <td>
                            <a class="payed" data-username="${user.username}" href="#">Оплачено</a>
                        </td>
                        <td>
                            <a class="ban" data-username="${user.username}" href="#">Забанить</a>
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
<script>
    $(document).ready(function () {
                $(document).on('click', '.payed', function () {
                    event.preventDefault();
                    var $this = $(this);
                    var user = $this.data('username');

                    $.ajax({
                        type: 'POST',
                        url: '/admin/pay',
                        data: {
                            username:user
                        },
                        success: function (data, status) {  // успешное завершение работы
                            $('.alert').css('display', 'block');
                        },
                        error: function () {    // На сервере произошла ошибка
                            alert('Приносим извинения.<br/>На сервере произошла ошибка');
                        }
                    });
                });
        $(document).on('click', '.ban', function () {
            event.preventDefault();
            var $this = $(this);
            var user = $this.data('username');

            $.ajax({
                type: 'POST',
                url: '/admin/ban',
                data: {
                    username:user
                },
                success: function (data, status) {  // успешное завершение работы
                    $('.alert').css('display', 'block');
                },
                error: function () {    // На сервере произошла ошибка
                    alert('Приносим извинения.<br/>На сервере произошла ошибка');
                }
            });
        });
            });
</script>
</body>
</html>
