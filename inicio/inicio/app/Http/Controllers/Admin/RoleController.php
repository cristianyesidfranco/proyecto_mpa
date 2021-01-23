<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Caffeinated\Shinobi\Models\Role;
use Caffeinated\Shinobi\Models\Permission;

class RoleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $Roles=Role::orderBy('id','DESC')->paginate();
        return view('admin.roles.index',compact('Roles')); 
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $permissions = permission::get();  
        return view('admin.roles.create', compact('permissions'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $Roles = Role::create($request->all());
 
        $Roles->permissions()->sync($request->get('permissions'));

        return redirect()->route('roles.edit', $Roles->id)
        ->with('info','Producto creado con exito con exito');
        
    }

   

    

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $Roles =Role::find($id);
        
 
        return view('admin.roles.show', compact('Roles'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $Roles =Role::find($id);
        $permissions = permission::get();       
       return view('admin.roles.edit', compact('Roles','permissions'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $Roles = Role::find($id);
        $Roles->fill($request->all())->save();

        $Roles->permissions()->sync($request->get('permissions'));
        
        return redirect()->route('roles.index')
        ->with('info','Rol actualizado con exito');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $Roles = Role::find($id);
        $Roles->delete();

        return back()->with('info','eliminado correctamente');
    }
}
