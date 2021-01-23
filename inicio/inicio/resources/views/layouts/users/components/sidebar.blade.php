
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>MPA</title>

 
  

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
            <a class="nav-link" href="{{route('catalogo')}}"><i class="fas fa-home"></i> Home <span class="sr-only">(current)</span></a>
        </li>
        <div class="sidebar-heading">
        </div>
        <br>
        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <hr class="sidebar-divider my-0">
        <div class="sidebar-heading">
            Productos
        </div>

        

        <!-- Nav Item - Pages Collapse Menu -->
      
        
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"  aria-expanded="true" aria-controls="collapsePages">
            
                <span>Categorias</span>
            </a>
            <div id="collapsePages" class="collapse" aria-labelledby="headingPages" >
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item" href="{{route('web.teclado')}}"><span>Gamers</span></a>   
                    <a class="collapse-item" href="{{route('web.teclado')}}"><span>Teclados</span></a>
                    <a class="collapse-item" href="{{route('web.mouse')}}"><span>Mouse</span></a>
                    <a class="collapse-item" href="{{route('web.sonido')}}"><span>Sonido</span></a>
                    <a class="collapse-item" href="{{route('web.camaras')}}"><span>Camaras</span></a> 
                    <a class="collapse-item" href="{{route('web.video')}}"><span>Video</span></a>
                    <a class="collapse-item" href="{{route('web.accesorios')}}"><span>Accesorios</span></a>
                    <a class="collapse-item" href="{{route('web.nuevo')}}"><span>Nuevo</span></a> 
                </div>
        </li>


  <!-- Nav Item - Utilities Collapse Menu -->

      <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"  aria-expanded="true" aria-controls="collapsePages">
            
                <span>Celulares</span>
            </a>
            <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">   
                  <a class="dropdown-item" href="{{route('web.celular')}}">Samsung</a>
                  <a class="dropdown-item" href="{{route('web.celular')}}">Iphone</a>
                  <a class="dropdown-item" href="{{route('web.celular')}}">Lenovo</a>
                  <a class="dropdown-item" href="">ACCESORIOS</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="">PROMOCIONES</a>
                </div> 
            </div>
      </li>
  <!-- Nav Item - Utilities Collapse  -->
      <li class="nav-item active">
        <a class="nav-link" href="">
        <i class="fas fa-chalkboard-teacher"></i>
          <span>Portatiles</span></a>
      </li>
  <!-- Nav Item - Utilities Collapse  -->
    <li class="nav-item active">
        <a class="nav-link" href="{{route('web.periferico')}}">
        <i class="fas fa-keyboard"></i>
        
        <span>Pelifericos</span></a>
    </li>
  
  <!-- Nav Item - Utilities Collapse  -->
    <li class="nav-item active">
        <a class="nav-link" href="">
        <i class="fas fa-id-badge"></i>
          <span>Tablets</span></a>
      </li>
      
      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Nosotros
      </div>

      <!-- Nav Item - Utilities Collapse  -->
    <li class="nav-item active">
        <a class="nav-link" href="?clase=teclados&method=teclado">
          <i class="fas fa-seedling"></i>
          <span>Conocenos</span></a>
      </li>
      <!-- Nav Item - Utilities Collapse  -->
    <li class="nav-item active">
        <a class="nav-link" href="?clase=teclados&method=teclado">
          <i class="fas fa-gift"></i>
          <span>Promociones</span></a>
      </li>
      
      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">
      <ul class="sub-menu" aria-expanded="false">
            <li><a class="dropdown-item " href="{{route('web.celular')}}"><span>Celulares</span></a></li>
            <li><a class="dropdown-item " href="{{route('web.teclado')}}"><span>Teclados</span></a></li>
            <li><a class="dropdown-item " href="{{route('web.mouse')}}"><span>Mouses</span></a></li>
            <li><a class="dropdown-item " href="{{route('web.accesorios')}}"><span>Gamers</span></a></li>
            <li><a class="dropdown-item " href="{{route('web.camaras')}}"><span>Camaras</span></a></li>
            
            <li><a class="dropdown-item " href="{{route('web.sonido')}}"><span>sonido</a></li>
            <li><a class="dropdown-item " href="{{route('web.nuevo')}}"><span>Nuevo</span></a></li>
        </ul>
      

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->