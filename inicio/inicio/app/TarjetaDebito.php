<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TarjetaDebito extends Model
{
    protected $fillable=[
        'nombre_banco','tipo_cuenta','numero_tarjeta','fecha_vencimiento'

    ];
}
