@extends('layouts.users.app')

@section('content')


    <div class="container">
            <div class="row">
                <div class="col sm-4  ">
                    <div class="panel-default">
                        <div class="card-header">
                            <h4>Ver Producto</h4>
                        
                            <div class="panel-body">
                                <p><strong>nombre </strong>{{ $detalleProductos->nombre_producto}}</p>
                                <img src="{{ $detalleProductos->file}}" alt="">
                                
                                <br>
                                <p><strong>Descripcion </strong>{{ $detalleProductos->body}}</p>
                                <p><strong>precio </strong>{{ $detalleProductos->precio_unitario}}$</p>
                                <p><strong>Unidades Disponibles </strong>{{ $detalleProductos->unidades_stock}}</p>
                                <form action="{{route('carrito.agregar')}}"method="post">
                                    @csrf
                                    <input type="hidden" name="id" value="{{$detalleProductos->id}}">
                                    <label for="">cantidad que va llevar</label>
                                    <br>
                                    <input type="number" value="1"name="quantity" min="1" max="10">
                                    <br>
                                    <br>    
                                    
                                    <i class="fas fa-cart-plus fa-sm">
                                    
                                    <input type="submit" value="agregar al carrito"class="btn btn-ligth">
                                    </i>
                                </form>
                            </div>
                        </div>       
                    </div>
                </div>
                
                <div class="col sm-8 ">
                    <div class="panel-default ">
                        <div class="card-header">
                            
                        
                            <div class="panel-body">
                            <h4> @include('web.resumen')</h4>
                                
                            </div>
                        </div>       
                    </div>
                </div>
               
                <div class="row">
                    <div class="col md-12 ">
                    <br>
                    <br>
                    <h1>Productos que pueden interesarte</h1>
                        
                    
                </div>
            </div> 
                      
        </div>
        

@endsection
