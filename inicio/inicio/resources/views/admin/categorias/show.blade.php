@extends ('layouts.admin.app')

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-2">
                <div class="panel-default">
                    <div class="card-header">
                        <h4>Ver mis Categorias</h4>
                     
                        <div class="panel-body">
                            <p><strong>nombre </strong>{{ $Categorias->nombre_categoria}}</p>
                            <p><strong>slug </strong>{{ $Categorias->slug}}</p>
                            <p><strong>body </strong>{{ $Categorias->body}}</p>
                           
                        </div>
                    </div>       
                </div>
            </div>
        </div>             
    </div>

@endsection