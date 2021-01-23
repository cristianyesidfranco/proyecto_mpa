@extends ('layouts.admin.app')

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-2">
                <div class="panel-default">
                    <div class="card-header">
                        <h4>Ver mis Productos</h4>
                     
                        <div class="panel-body">
                            <p><strong>nombre </strong>{{ $Productos->nombre_producto}}</p>
                            <p><strong>slug </strong>{{ $Productos->slug}}</p>
                            <p><strong>body </strong>{{ $Productos->body}}</p>
                            <p><strong>precio </strong>{{ $Productos->precio_unitario}}</p>
                            <p><strong>Unidades Disponibles </strong>{{ $Productos->unidades_stock}}</p>
                        </div>
                    </div>       
                </div>
            </div>
        </div>             
    </div>

@endsection