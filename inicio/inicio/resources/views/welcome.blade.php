@extends('layouts.users.app')

@section('content')

<div class="container">
 
        <div class="row">
            @foreach($Productos as $Producto)    
                
                
                <div class="col-md-4">
                    <div class="card">
                    @if($Producto->Imagen)
                        <img src="{{$Producto->Imagen}}" class="img-responsive">
                    @endif
                        <div class="card-body">
                        <a class="nav-link" href="#"> {{$Producto->NombreProducto}}</a>
                            
                            <br>
                             
                            {{$Producto->PrecioUnitario}}
                            <br>
                            <i class="fas fa-cart-plus fa-sm"></i>  
                        </div>            
                    </div>
                </div>
            @endforeach
            {{$Productos->render()}}
        </div>   
    </div>
       
   

@endsection

