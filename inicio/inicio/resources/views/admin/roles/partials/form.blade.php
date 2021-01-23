<div class="form-groups">
    {{ Form::label('name','Nombre del rol')}}
    {{ Form::text('name',null,['class' =>'form-control','id'=>'name'])}}
</div>
<div class="form-groups">
    {{ Form::label('slug','URL Amigable')}}
    {{ Form::text('slug',null,['class' =>'form-control','id'=>'slug'])}}
</div>
<div class="form-groups">
    {{ Form::label('description','Descripcion')}}
    {{ Form::textarea('body',null,['class' =>'form-control','id'=>'body'])}}
</div>
<h4>Permiso Especial</h4>
<div class="form-group">
    <label> {{Form::radio('special','all-access')}} Acceso total </label>
    <label> {{Form::radio('special','no-access')}} Ningun Acceso  </label>
</div>
<hr>

<h4>Lista de Permisos</h4>
<div class="form-gorup">
    <ul class="list-unstyled">
        @foreach($permissions  as $permission)
        <li>
            <label >
                {{ Form::checkbox('permissions[]',$permission->id, null) }}
                {{ $permission->name}}
                <em>{{$permission->description ?: '(No tiene descripcion)' }}</em>
            </label>
        
        </li>

        @endforeach
    
    </ul>
</div>
<br>

<div class="form-groups">
    {{Form::submit('Guardar',['class'=>'btn btn-sm btn-info'])}}
</div>
