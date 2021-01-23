@extends('layouts.users.app')

@section('content')


    <div class="container text-center">
 
        <div class="row">
            @foreach($Productos as $Producto)    
                
                
                <div class="col-md-4">
                    <div class="card"> 
                    @if($Producto->file)
                    <a href="{{route('producto.show',$Producto->id)}}">
                        <img src="{{ $Producto->file }}" class="img-responsive">
                    </a>
                    @endif
                        <div class="card-body">
                        <p>{{$Producto->nombre_producto}}</p>
                        <br>
                        Valor $ {{$Producto->precio_unitario}}
                        
                        <p>categoria {{$Producto->Categoria->nombre_categoria}}</p>   

                            <form action="{{route('carrito.agregar')}}"method="post">
                                @csrf
                                <input type="hidden" name="id" value="{{$Producto->id}}">
                                <label for="">cantidad que va llevar</label>
                                <br>
                                <input type="number" value="1"name="quantity" min="1" max="10">
                                <br>
                                <br>    
                                
                                <i class="fas fa-cart-plus fa-sm">
                                
                                <input type="submit" value="agregar al carrito"class="btn btn-light">
                                </i>
                            </form>
                        </div>            
                    </div>
                </div>
                
            @endforeach
        
            
        </div>
        
        <br>
        <br>
        {{$Productos->render()}} 
        <br> 
        @include('web.resumen') 
    </div>

@endsection
