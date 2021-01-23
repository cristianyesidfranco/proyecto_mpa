<div class="form-groups">
    {{ Form::label('name','Nombre del usuario')}}
    {{ Form::text('name',null,['class' =>'form-control','id'=>'name'])}}
</div>
<hr>
<h4>Lista de Roles</h4>
<div class="form-gorup">
    <ul class="list-unstyled">
        @foreach($Roles as $Role)
        <li>
            <label >
                {{ Form::checkbox('Roles[]',$Role->id, null) }}
                {{ $Role->name}}
                <em>{{$Role->description ?: '(No tiene descripcion)' }}</em>
            </label>
        
        </li>

        @endforeach
    
    </ul>
</div>
<div class="form-groups">
    {{Form::submit('Guardar',['class'=>'btn btn-sm btn-info'])}}
</div>
