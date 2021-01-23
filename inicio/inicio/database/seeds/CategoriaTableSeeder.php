<?php

use Illuminate\Database\Seeder;
use App\Categoria;
use Faker\Factory as Faker;

use Illuminate\Support\Str;
class CategoriaTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $Faker=Faker::create();
        
        Categoria::create([
            'nombre_categoria'=>'Teclado',
            'slug' => 'teclado',
            'body' => $Faker->text(500)
            
        ]);
        Categoria::create([
            'nombre_categoria'=>'Mouse',
            'slug' => 'mouse',
            'body' => $Faker->text(500)
            
        ]);
        Categoria::create([
            'nombre_categoria'=>'Sonido',
            'slug' => 'sonido',
            'body' => $Faker->text(500)
            
        ]);
        Categoria::create([
            'nombre_categoria'=>'Camaras',
            'slug' => 'camaras',
            'body' => $Faker->text(500)
            
        ]);
        Categoria::create([
            'nombre_categoria'=>'Video',
            'slug' => 'video',
            'body' => $Faker->text(500)
            
        ]);
        Categoria::create([
            'nombre_categoria'=>'Nuevo',
            'slug' => 'nuevo',
            'body' => $Faker->text(500)
            
        ]);
        Categoria::create([
            'nombre_categoria'=>'Accesorios',
            'slug' => 'Accesorios',
            'body' => $Faker->text(500)
            
        ]);
        
    }
}
