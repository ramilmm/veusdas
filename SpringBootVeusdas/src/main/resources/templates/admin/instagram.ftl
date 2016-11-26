<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Data Tables</title>
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
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>

        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img src="../images/admin/user2-160x160.jpg" class="user-image" alt="User Image">
                        <span class="hidden-xs">Alexander Pierce</span>
                    </a>
                    <ul class="dropdown-menu">
                        <!-- User image -->
                        <li class="user-header">
                            <img src="../images/admin/user2-160x160.jpg" class="img-circle" alt="User Image">

                            <p>
                                Alexander Pierce - Web Developer
                                <small>Member since Nov. 2012</small>
                            </p>
                        </li>
                        <!-- Menu Body -->
                        <li class="user-body">
                            <div class="row">
                                <div class="col-xs-12 text-center">
                                    <a href="#">Счёт: 500р</a>
                                </div>
                            </div>
                            <!-- /.row -->
                        </li>
                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-left">
                                <a href="/admin" class="btn btn-default btn-flat">Profile</a>
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
                    <img src="../images/admin/user2-160x160.jpg" class="img-circle" alt="User Image">
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
                      <a href="../charts/chartjs.html">
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
        Список instagram
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
            

          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Instagram</h3>
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
                <#if instList??>

                <#--<#include "public.ftl">-->

                    <#list instList as inst>

                 <tr class="row${inst.id}">
                    <td><input type="text" id="nameInst${inst.id}" value="${inst.name}" maxlength="60"></td>
                    <td><input type="text" id="subscribesInst${inst.id}" value="${inst.subscribes}" maxlength="20"></td>
                    <td><input type="text" id="costInst${inst.id}" value="${inst.cost}" maxlength="10"></td>
                    <td><input type="text" id="admin_linkInst${inst.id}" value="${inst.admin_link}" maxlength="100"></td>
                    <td>
                        <div class="buttons">
                            <a href="#"  class="btn btn-success accept acceptEditingInst" data-id="${inst.id}">Сохранить</a> <br/>
                            <a href="#"  class="btn btn-danger delete deleteInst" data-id="${inst.id}">Удалить</a>
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

        $(document).on('click', '.acceptEditingInst', function () {
            event.preventDefault();
            var $this = $(this);
            var publicID = $this.data('id');
            var h_name = '#nameInst'+publicID;
            var h_sub = '#subscribesInst'+publicID;
            var h_cost = '#costInst'+publicID;
            var h_admin = '#admin_linkInst'+publicID;
            var name = $(h_name).val();
            var subscribes = $(h_sub).val();
            var cost = $(h_cost).val();
            var admin = $(h_admin).val();
            var row = '.row' + publicID;
            $.ajax({
                type: 'POST',
                url: '/admin/editInst',
                data: {
                    id:publicID,
                    name:name,
                    subscribes:subscribes,
                    cost:cost,
                    admin:admin
                },
                success: function (data, status) {  // успешное завершение работы
                },
                error: function () {    // На сервере произошла ошибка
//                    alert('Приносим извинения.<br/>На сервере произошла ошибка');
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
                },
                error: function () {    // На сервере произошла ошибка
                    // console.log(data);
//                    alert('Приносим извинения.<br/>На сервере произошла ошибка');
                }
            });
        });

    });
</script>
</body>
</html>
