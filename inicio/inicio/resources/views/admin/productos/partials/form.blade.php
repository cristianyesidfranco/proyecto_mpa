

<div class="form-groups">
    {{ Form::label('marca_id','Marcas')}}
    {{ Form::select('marca_id',$Marcas,null,['class' =>'form-control'])}}
</div>
<div class="form-groups">
    {{ Form::label('categoria_id','Categorias')}}
    {{ Form::select('categoria_id',$Categorias,null,['class' =>'form-control'])}}
</div>
<div class="form-groups">
    {{ Form::label('nombre_producto','Nombre de la etiqueta')}}
    {{ Form::text('nombre_producto',null,['class' =>'form-control','id'=>'nombre_producto'])}}
</div>
<div class="form-groups">
    {{ Form::label('slug','URL Amigable')}}
    {{ Form::text('slug',null,['class' =>'form-control','id'=>'slug'])}}
</div>
<br>
<div class="form-groups">
    {{ Form::label('body','Descripcion')}}
    {{ Form::textarea('body',null,['class' =>'form-control','id'=>'body'])}}
</div>
<div class="form-groups">
    {{ Form::label('precio_unitario','Precio')}}
    {{ Form::number('precio_unitario',null,['class' =>'form-control','id'=>'precio_unitario'])}} 
</div>
<div class="form-groups">
    {{ Form::label('file','Imagen')}}
    {{ Form::file('file',['class' =>'form-control','id'=>'file'])}} 
</div>
<br>
<div class="form-groups">
    {{ Form::label('unidades_stock','Unidades')}}
    {{ Form::number('unidades_stock',null,['class' =>'form-control','id'=>'unidades_stock'])}} 
</div>


<br>
<div class="form-groups">
    {{Form::submit('Guardar',['class'=>'btn btn-sm btn-info'])}}
</div>

