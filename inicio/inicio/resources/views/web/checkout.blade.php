@extends('layouts.users.app')

@section('content')


    <div class="container">
        <h1>Carrito de compras </h1>
        @if (Cart::getContent()->count()>0)
            <div class="row justify-content-center aling-items-center">
           
                <div class="table-respisive">
                    <table class="table">
                        <thead>
                        <th>CANTIDAD </th>
                        <th>PRODUCTO </th>
                        <th>PRECIO UNITARIO </th>
                        <th>IMPORTE </th>
                        <th>Eliminar </th>

                        </thead>
                        <tbody>
                        @foreach (Cart::getContent() as $producto)
                            <tr>
                                <td>{{$producto->quantity}} </td>
                                <td>{{$producto->name}}</td>
                                <td>{{number_format($producto->price,2)}}</td>
                                <td>{{number_format($producto->price * $producto->quantity,2)}}</td>
                                <td>
                                    <form action="{{route('carrito.remove')}}" method="post">
                                    @csrf
                                        <input type="hiden"  name="id" value="{{$producto->id}}">
                                        <button type="submit">x</button>
                                    </form>
                                </td>
                            
                            </tr>

                        @endforeach
                            <tr>
                                <td colspan="2"></td>
                                <td>SubTotal</td>
                                <td>{{number_format(Cart::getSubTotal(),2)}}</td> 
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        <div class="col-md-6">
            <form action="{{route('carrito.vaciar')}}" method="post">
            @csrf
            <button type="submit">VACIAR CARRITO</button>
            </form>
        </div>
        @else
            <div class="jumbotron text-center w-100">
                <p>Carrito vacio</p>
                <p><a href="{{route('catalogo')}}" class="btn btn-primary">COMPRAR</a>  </p>
            </div>
        @endif
        
    </div>

@endsection
