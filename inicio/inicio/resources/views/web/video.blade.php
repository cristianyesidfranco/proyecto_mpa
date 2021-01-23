@extends('layouts.users.app')

@section('content')


    <div class="container">
 
        <div class="row">
            @foreach($videos as $video)    
                
                
                <div class="col-md-4">
                    <div class="card">
                    @if($video->file)
                        <img src="{{$video->file}}" class="img-responsive">
                    @endif
                        <div class="card-body">
                        <a class="nav-link" href="#"> {{$video->nombre_producto}}</a>
                        <a class="nav-link" href="#">{{$video->Categoria->nombre_categoria}}</a>
                            
                            <br>
                             
                            $ {{$video->precio_unitario}}
                            <br>
                            <form action="{{route('carrito.agregar')}}"method="post">
                                @csrf
                                <input type="hidden" name="id" value="{{$video->id}}">
                                
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
        {{$videos->render()}}   
    </div>

@endsection
