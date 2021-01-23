<?php

use Illuminate\Database\Seeder;
use  Caffeinated\Shinobi\Models\Permission;

class PermissionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //user
       
        Permission::create([
            'name'          =>'Eliminar usuarios',
            'slug'          =>'users.index',
            'description'   =>'Ver cualquier usuario del sistema',
        ]);
        Permission::create([
            'name'          =>'Ver usuarios',
            'slug'          =>'users.show',
            'description'   =>'Ver cualquier usuario del sistema',
        ]);
        Permission::create([
            'name'          =>'Ver usuarios',
            'slug'          =>'users.edit',
            'description'   =>'Ver cualquier usuario del sistema',
        ]);
        
        
        Permission::create([
            'name'          =>'Eliminar usuarios',
            'slug'          =>'users.destroy',
            'description'   =>'Eliminar cualquier usuario del sistema',
        ]);
        
        //Roles
        Permission::create([
            'name'          =>'Navegar roles',
            'slug'          =>'roles.index',
            'description'   =>'Lista y navega todos los rol del sistema',
        ]);
        Permission::create([
            'name'          =>'Navegar roles',
            'slug'          =>'roles.show',
            'description'   =>'Ver en detalle cada usuario del sistema rol del sistema',
        ]);
        Permission::create([
            'name'          =>'crear roles',
            'slug'          =>'roles.create',
            'description'   =>'editar cualquie dato de un rol del sistema',
        ]);
        Permission::create([
            'name'          =>'Editar roles',
            'slug'          =>'roles.edit',
            'description'   =>'editar cualquie dato de un rol del sistema',
        ]);
        Permission::create([
            'name'          =>'Eliminar roles',
            'slug'          =>'roles.destroy',
            'description'   =>'Eliminar cualquier rol del sistema',
        ]);

        //productos
        Permission::create([
            'name'          =>'Navegar productos',
            'slug'          =>'productos.index',
            'description'   =>'Lista y navega todos los producto del sistema',
        ]);
        Permission::create([
            'name'          =>'Navegar productos',
            'slug'          =>'productos.show',
            'description'   =>'Ver en detalle cada usuario del sistema producto del sistema',
        ]);
        Permission::create([
            'name'          =>'crear productos',
            'slug'          =>'productos.create',
            'description'   =>'editar cualquie dato de un producto del sistema',
        ]);
        Permission::create([
            'name'          =>'Editar productos',
            'slug'          =>'productos.edit',
            'description'   =>'editar cualquie dato de un producto del sistema',
        ]);
        Permission::create([
            'name'          =>'Eliminar productos',
            'slug'          =>'productos.destroy',
            'description'   =>'Eliminar cualquier producto del sistema',
        ]);

        
    }
}
