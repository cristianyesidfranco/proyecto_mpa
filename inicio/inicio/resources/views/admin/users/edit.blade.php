@extends ('layouts.admin.app')

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-2">
                <div class="panel-default">
                    <div class="card-header">
                    <h3>Usuarios</h3>
                        
                        <hr>
                        <div class="panel-body">
                            {!! Form::model($Users ,['route'=>['users.update',$Users->id],
                            'method'=>'PUT' ,'files'=>true   ])!!}

                                @include('admin.users.partials.form')
                                
                            {!! Form::close()!!}
                        </div>
                    </div>       
                </div>
            </div>
        </div>             
    </div>

@endsection