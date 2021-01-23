@extends ('layouts.admin.app')
@section('content')

    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-2">
                <div class="panel-default">
                    <div class="card-header">
                        <h4> Lista de Usuarios</h4>
                        <br>                     
                       
                    
                   
                        <div class="panel-body">
                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <td width="10px">ID</td>
                                        <td>Nombre</td>
                                        <td>Email</td>
                                        <td colspan="3">&nbsp: opciones</td>
                                    </tr>
                                </thead>
                                <tbody>
                                @foreach($Users as $User)

                                    <tr>
                                        <td> {{$User->id}}</td>
                                        <td> {{$User->name}}</td>
                                        <td> {{$User->email}}</td>
                                        <td width="10px"> 
                                            <a href="{{route('users.show',$User->id)}}" class="btn btn-outline-info">
                                                ver
                                            </a>
                                            
                                        </td>
                                        <td width="10px"> 
                                            <a href="{{route('users.edit',$User->id)}}" class="btn btn-outline-info">
                                                editar
                                            </a>
                                        
                                        </td>
                                        <td width="10px"> 
                                        {!! Form::open(['route' =>['users.destroy',$User->id],
                                            'method' =>'DELETE'])!!}
                                                <button class="btn btn-sm btn-danger">
                                                Eliminar
                                                </button>
                                               
                                                {!! Form::close() !!}
                                        </td>
                                    </tr>

                                @endforeach
                                </tbody>
                                
                            </table>
                            {{$Users->render()}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection