<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TarjetaCredito extends Model
{
    protected $fillable=[
        'numero_tarjeta','fecha_vencimiento'

    ];
}
