<div class="form-groups">
    {{ Form::label('nombre_categoria','Nombre de la categoria')}}
    {{ Form::text('nombre_categoria',null,['class' =>'form-control','id'=>'nombre_categoria'])}}
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
<br>
<div class="form-groups">
    {{Form::submit('Guardar',['class'=>'btn btn-sm btn-info'])}}
</div>