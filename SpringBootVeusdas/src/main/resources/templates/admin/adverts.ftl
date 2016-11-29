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
        Список объявлений
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
            

          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Объявления</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Название</th>
                  <th>Профиль вк</th>
                  <th>Цена</th>
                  <th>Тип объявления</th>
                  <th>Комментарий</th>
                  <th>Действие</th>
                </tr>
                </thead>
                <tbody>

                <#if adverts??>
                    <#list adverts as ad>
                <tr class="row${ad.id}">
                    <td><input type="text" id="nameAdvert${ad.id}" value="${ad.advert_name}" maxlength="60"></td>
                    <td><input type="text" id="profileAdvert${ad.id}" value="${ad.profile_link}" maxlength="220"></td>
                    <td><input type="text" id="costAdvert${ad.id}" value="${ad.cost}" maxlength="12"></td>
                    <td>
                        <select name="type" id="typeAdvert${ad.id}" class="type${ad.id}">
                            <option value>- Тип объявления -</option>
                            <option value="1">Продажа</option>
                            <option value="2">Аренда</option>
                            <option value="3">ВПШЕР</option>
                            <option value="4">Дизайнер</option>
                            <option value="5">Менеджер по рекламе</option>
                            <option value="6">Заливщик</option>
                            <option value="7">Прочее</option>
                        </select>
                        <script>
                            $(document).ready(function () {
                                var type = '${ad.advert_type}';
                                if (type){
                                    $('.type${ad.id}').val(7);
                                }
                                switch ("${ad.advert_type}"){
                                    case "Продажа":
                                        $('.type${ad.id}').val(1);
                                        break;
                                    case "Аренда":
                                        $('.type${ad.id}').val(2);
                                        break;
                                    case "ВПШЕР":
                                        $('.type${ad.id}').val(3);
                                        break;
                                    case "Дизайнер":
                                        $('.type${ad.id}').val(4);
                                        break;
                                    case "Менеджер по рекламе":
                                        $('.type${ad.id}').val(5);
                                        break;
                                    case "Заливщик":
                                        $('.type${ad.id}').val(6);
                                        break;
                                    case "Прочее":
                                        $('.type${ad.id}').val(7);
                                        break;
                                }
                            });
                        </script>
                    </td>
                    <td><input type="text" id="commentAdvert${ad.id}" value="${ad.comment}"  maxlength="200"></td>
                    <td>
                        <div class="buttons">
                            <a href="#"  class="btn btn-success accept acceptEditingAdv" data-id="${ad.id}">Сохранить</a> <br/>
                            <a href="#"  class="btn btn-danger delete deleteAdv" data-id="${ad.id}">Удалить</a>
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
    $(document).on('click', '.acceptEditingAdv', function () {
        event.preventDefault();
        var $this = $(this);
        var advertID = $this.data('id');
        var h_name = '#nameAdvert'+advertID;
        var h_profile = '#profileAdvert'+advertID;
        var h_cost = '#costAdvert'+advertID;
        var h_type = '#typeAdvert'+advertID;
        var h_comment = '#commentAdvert'+advertID;
        var name = $(h_name).val();
        var profile = $(h_profile).val();
        var cost = $(h_cost).val();
        var type = $(h_type).val();
        var comment = $(h_comment).val();
        var row = '.row' + advertID;
        $.ajax({
            type: 'POST',
            url: '/admin/editAdvert',
            data: {
                id:advertID,
                name:name,
                profile:profile,
                cost:cost,
                type:type,
                comment:comment
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

    $(document).on('click', '.deleteAdv', function () {
        event.preventDefault();
        var $this = $(this);
        var advertID = $this.data('id');
        var row = '.row' + advertID;
        $.ajax({
            type: 'POST',
            url: '/admin/deleteAdvert',
            data: {
                id:advertID
            },
            success: function (data, status) {  // успешное завершение работы
                $('.alert').css('display','block');
                $(row).css('display','none');
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