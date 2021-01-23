<div class="col-sm-8 text-center float-rigth">
    <h2>Resumen </h2>
    @if(count(Cart::getContent()))
        @foreach (Cart::getContent() as $item)
            {{$item->name}}  {{$item->price}}$<br>
            
            
        @endforeach
        <br>
        Total S/. {{number_format(Cart::getSubtotal(),2)}}
        <br>
        <br>
        <a href="{{route('carrito.checkout')}}" class="btn btn-ligth">Ver carrito</a> 
    @else
        <p>carrito vacio</p>
    @endif

</div>