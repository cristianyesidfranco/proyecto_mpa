@extends ('layouts.admin.app')
@section('content')

    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-2">
                <div class="panel-default">
                    <div class="card-header">
                       <h4> Lista de Categorias </h4>
                       @can('categorias.create')
                        <a href="{{route('categorias.create')}}" class="btn btn-sm btn-primary float-right">
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
                                @foreach($Categorias as $Categoria)

                                    <tr>
                                        <td> {{$Categoria->id}}</td>
                                        <td> {{$Categoria->nombre_categoria}}</td>
                                        <td width="10px"> 
                                        @can('categorias.show')
                                            <a href="{{route('categorias.show',$Categoria->id)}}" class="btn btn-outline-info">
                                                ver
                                            </a>
                                        @endcan
                                            
                                        </td>
                                        <td width="10px">
                                        @can('categorias.edit') 
                                            <a href="{{route('categorias.edit',$Categoria->id)}}" class="btn btn-outline-info">
                                                editar
                                            </a>
                                        @endcan
                                        </td>
                                        <td width="10px"> 
                                        @can('categorias.destroy')
                                        {!! Form::open(['route' =>['categorias.destroy',$Categoria->id],
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
                            {{$Categorias->render()}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection