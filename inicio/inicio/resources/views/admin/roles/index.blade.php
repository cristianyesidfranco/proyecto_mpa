@extends ('layouts.admin.app')
@section('content')

    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-2">
                <div class="panel-default">
                    <div class="card-header">
                        <h4>Lista de Roles</h4>
                        @can('roles.create')
                        <a href="{{route('roles.create')}}" class="btn btn-sm btn-primary float-right">
                            crear
                        </a>
                        @endcan
                    
                   
                        <div class="panel-body">
                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <td width="10px">ID</td>
                                        <td>Nombre</td>
                                        <td colspan="3">&nbsp: opciones</td>
                                    </tr>
                                </thead>
                                <tbody>
                                @foreach($Roles as $Role)

                                    <tr>
                                        <td> {{$Role->id}}</td>
                                        <td> {{$Role->name}}</td>
                                        <td width="10px"> 
                                            <a href="{{route('roles.show',$Role->id)}}" class="btn btn-outline-info">
                                                ver
                                            </a>
                                            
                                        </td>
                                        <td width="10px"> 
                                        @can('roles.edit') 
                                            <a href="{{route('roles.edit',$Role->id)}}" class="btn btn-outline-info">
                                                editar
                                            </a>
                                        @endcan
                                        
                                        </td>
                                        <td width="10px"> 
                                        @can('roles.destroy')
                                        {!! Form::open(['route' =>['roles.destroy',$Role->id],
                                            'method' =>'DELETE'])!!}
                                                <button class="btn btn-sm btn-danger">
                                                Eliminar
                                                </button>
                                               
                                                {!! Form::close() !!}
                                        @endcan
                                        </td>
                                    </tr>

                                @endforeach
                                </tbody>
                                
                            </table>
                            {{$Roles->render()}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection