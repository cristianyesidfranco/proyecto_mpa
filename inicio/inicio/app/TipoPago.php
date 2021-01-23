<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TipoPago extends Model
{
   protected $fillable =[
       'tarjeta_credito_id','tarjeta_debito_id'
   ];
}
