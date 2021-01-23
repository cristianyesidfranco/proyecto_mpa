@extends ('layouts.admin.app')

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-2">
                <div class="panel-default">
                    <div class="card-header">
                        <h4>Ver mis Marcas</h4>
                     
                        <div class="panel-body">
                            <p><strong>nombre </strong>{{ $Marcas->nombre_marca}}</p>
                            <p><strong>slug </strong>{{ $Marcas->slug}}</p>
                            <p><strong>body </strong>{{ $Marcas->body}}</p>
                           
                        </div>
                    </div>       
                </div>
            </div>
        </div>             
    </div>

@endsection