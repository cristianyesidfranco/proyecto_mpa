@extends ('layouts.admin.app')

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-2">
                <div class="panel-default">
                    <div class="card-header">
                        <h4>Ver mis Roles</h4>
                     
                        <div class="panel-body">
                            <p><strong>nombre </strong>{{ $Roles->name}}</p>
                            <p><strong>slug </strong>{{ $Roles->slug}}</p>
                            <p><strong>body </strong>{{ $Roles->description}}</p>
                           
                        </div>
                    </div>       
                </div>
            </div>
        </div>             
    </div>

@endsection