<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EncabezadoFactura extends Model
{
    protected  $fillable =[
        'usuario_id','tipo_pago_id'
    ];
}
