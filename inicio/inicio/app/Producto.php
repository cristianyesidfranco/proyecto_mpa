<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Producto extends Model
{
    protected $fillable=[
        'marca_id','categoria_id','nombre_producto','slug','body','precio_unitario','file','unidades_stock'

    ];
    public function categoria(){
        
        return $this->belongsTo(Categoria::class); 
    }

    public function marca(){
        
        return $this->belongsTo(Marca::class);
    }
}
