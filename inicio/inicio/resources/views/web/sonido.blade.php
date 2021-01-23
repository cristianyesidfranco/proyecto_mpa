@extends('layouts.users.app')

@section('content')


    <div class="container">
 
        <div class="row">
            @foreach($sonidos as $sonido)    
                
                
                <div class="col-md-4">
                    <div class="card">
                    @if($sonido->file)
                        <img src="{{$sonido->file}}" class="img-responsive">
                    @endif
                        <div class="card-body">
                        <a class="nav-link" href="#"> {{$sonido->nombre_producto}}</a>
                        <a class="nav-link" href="#">{{$sonido->Categoria->nombre_categoria}}</a>
                            
                            <br>
                             
                            $ {{$sonido->precio_unitario}}
                            <br>
                            <form action="{{route('carrito.agregar')}}"method="post">
                                @csrf
                                <input type="hidden" name="id" value="{{$sonido->id}}">
                                
                                <br>
                                <input type="number" value="1"name="quantity" min="1" max="10">
                                <br>
                                <label for="">cantidad que va llevar</label>
                                <i class="fas fa-cart-plus fa-sm">
                                
                                <input type="submit" value="agregar al carrito"class="btn btn-light">
                                </i>
                            </form>  
                        </div>            
                    </div>
                </div>
            @endforeach
            @include('web.resumen')
            
        </div>
        <br>
        <br>
        {{$sonidos->render()}}   
    </div>

@endsection
