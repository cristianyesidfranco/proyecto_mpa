@extends ('layouts.admin.app')

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-2">
                <div class="panel-default">
                    <div class="card-header">
                        <h4>Crear mis categorias</h4>
                     
                        <div class="panel-body">
                            {!! Form::open(['route'=>'categorias.store','files'=>true])!!}

                                @include('admin.categorias.partials.form')

                            {!! Form::close()!!}
                        </div>
                    </div>       
                </div>
            </div>
        </div>             
    </div>

@endsection