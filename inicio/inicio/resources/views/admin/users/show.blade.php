@extends ('layouts.admin.app')

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-2">
                <div class="panel-default">
                    <div class="card-header">
                        <h4>Ver mis Marcas</h4>
                     
                        <div class="panel-body">
                            <p><strong>nombre </strong>{{ $Users->name}}</p>
                            <p><strong>email </strong>{{ $Users->email}}</p>
                            
                           
                        </div>
                    </div>       
                </div>
            </div>
        </div>             
    </div>

@endsection