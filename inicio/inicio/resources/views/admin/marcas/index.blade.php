@extends ('layouts.admin.app')
@section('content')

    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-2">
                <div class="panel-default">
                    <div class="card-header">
                        <h4>Lista de Marcas</h4>
                        @can('marcas.create')
                        <a href="{{route('marcas.create')}}" class="btn btn-sm btn-primary float-right">
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
                                @foreach($Marcas as $Marca)

                                    <tr>
                                        <td> {{$Marca->id}}</td>
                                        <td> {{$Marca->nombre_marca}}</td>
                                        <td width="10px"> 
                                        @can('marcas.show')
                                            <a href="{{route('marcas.show',$Marca->id)}}" class="btn btn-outline-info">
                                                ver
                                            </a>
                                        @endcan  
                                        </td>
                                        <td width="10px"> 
                                        @can('marcas.edit')
                                        
                                            <a href="{{route('marcas.edit',$Marca->id)}}" class="btn btn-outline-info">
                                                editar
                                            </a>
                                        @endcan
                                        
                                        </td>
                                        <td width="10px"> 
                                        @can('marcas.destroy')
                                        {!! Form::open(['route' =>['marcas.destroy',$Marca->id],
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
                            {{$Marcas->render()}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection