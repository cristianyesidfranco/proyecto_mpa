@extends ('layouts.admin.app')
@section('content')

    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-2">
                <div class="panel-default">
                    <div class="card-header">
                        <h4>Lista de Productos</h4>
                        @can('productos.create')
                        <a href="{{route('productos.create')}}" class="btn btn-sm btn-primary float-right">
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
                                @foreach($Productos as $Producto)

                                    <tr>
                                        <td> {{$Producto->id}}</td>
                                        <td> {{$Producto->nombre_producto}}</td>
                                        <td width="10px"> 
                                            <a href="{{route('productos.show',$Producto->id)}}" class="btn btn-outline-info">
                                                ver
                                            </a>
                                            
                                        </td>
                                        <td width="10px"> 
                                            @can('productos.edit')
                                            <a href="{{route('productos.edit',$Producto->id)}}" class="btn btn-outline-info">
                                                editar
                                            </a>
                                            @endcan
                                        
                                        </td>
                                        <td width="10px"> 
                                        @can('productos.destroy')
                                        {!! Form::open(['route' =>['productos.destroy',$Producto->id],
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
                            {{$Productos->render()}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection