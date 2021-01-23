<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DetalleFactura extends Model
{
    protected  $fillable =[
        'encabezado_factura_id','producto_id','cantidad','total'
    ];

}
