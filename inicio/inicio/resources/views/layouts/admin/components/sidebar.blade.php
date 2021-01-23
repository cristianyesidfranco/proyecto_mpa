
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>MPA</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
 <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.4.2/cjs/popper-base.min.js">

  <!-- Custom styles for this template-->
  

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->

        <br>
        <li class="nav-item active">
            <a class="nav-link" href="{{route('home')}}"><i class="fas fa-home"></i> Home <span class="sr-only">(current)</span></a>
        </li>
        <div class="sidebar-heading">
        </div>
        <br>
        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <hr class="sidebar-divider my-0">
        <div class="sidebar-heading">
            Administracion
        </div>

        <!-- Nav Item - Pages Collapse Menu -->
      
        
        
      
      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">
      <ul class="sub-menu" aria-expanded="false">
            @can('users.index') 
              <a class="dropdown-item" href="{{route('users.index')}}">Usuarios</a>
            @endcan
            @can('roles.index')
              <a class="dropdown-item" href="{{route('roles.index')}}">Roles</a>
            @endcan
            @can('productos.index')
              <a class="dropdown-item" href="{{route('productos.index')}}">Productos</a>
            @endcan
            @can('categorias.index')
              <a class="dropdown-item" href="{{route('categorias.index')}}">Categorias</a>
            @endcan
            @can('marcas.index') 
              <a class="dropdown-item" href="{{route('marcas.index')}}">Marcas</a>
            @endcan 
           
        </ul>
      

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->