<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


use Illuminate\Support\Facades\Storage;


use App\User;
use Caffeinated\Shinobi\Models\Role;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $Users=User::orderBy('id','DESC')->paginate();
        return view('admin.Users.index',compact('Users')); 
    }

   

    

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $Users =User::find($id);
        
 
        return view('admin.Users.show', compact('Users'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $Users =User::find($id);
        $Roles =Role::get();        
       return view('admin.Users.edit', compact('Users','Roles'));
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
        $Users = User::find($id);
        $Users->fill($request->all())->save();

        $Users->roles()->sync($request->get('Roles'));
        
        return redirect()->route('users.edit', $Users->id)
        ->with('info','Usuario actualizado con exito');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $Users = User::find($id);
        $Users->delete();

        return back()->with('info','eliminado correctamente');
    }
}
