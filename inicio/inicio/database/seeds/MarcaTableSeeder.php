<?php

use Illuminate\Database\Seeder;
use App\Marca;
use Faker\Factory as Faker;
use Illuminate\Support\Str;


class MarcaTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $Faker=Faker::create();
        
        for ($i=0;$i<=10;$i++){
        $Marca=Marca::create([
            'nombre_marca' => $Faker->name,
            'slug' => Str::slug($Faker->name),
            'body' => $Faker->text(500)
        ]);
        }
    }
}
