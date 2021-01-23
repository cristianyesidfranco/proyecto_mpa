<?php

use Illuminate\Database\Seeder;
use App\Producto;
use Faker\Factory as Faker;
class ProductoTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $Faker=Faker::create();
        
        for ($i=0;$i<=99;$i++){
        $Productos=Producto::create([
            'marca_id' => rand(1,10),
            'categoria_id' => rand(1,7),
            'nombre_producto' => $Faker->name,
            'slug' => Str::slug($Faker->name),
            'body' => $Faker->text(500),
            'precio_unitario'=>$Faker->latitude($min = -90, $max = 90),
            'file' => $Faker->imageUrl($width=300, $heigth = 300 ),
            'unidades_stock'=>$Faker->buildingNumber
        ]);
        }
    }
}
