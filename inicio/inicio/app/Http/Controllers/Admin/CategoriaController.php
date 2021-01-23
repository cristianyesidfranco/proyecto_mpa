<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Categoria;
class CategoriaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        {
            $Categorias=Categoria::orderBy('id','DESC')->paginate();
            return view('admin.categorias.index',compact('Categorias'));  
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
        return view('admin.categorias.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $Categorias = Categoria::create($request->all());


        return redirect()->route('categorias.edit', $Categorias->id)
        ->with('info','categoria creada con exito');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $Categorias =Categoria::find($id);

        return view('admin.categorias.show', compact('Categorias'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $Categorias =Categoria::find($id);
       
        return view('admin.categorias.edit', compact('Categorias'));
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
        $Categorias = Categoria::find($id);
        $Categorias->fill($request->all())->save();

        return redirect()->route('categorias.edit', $Categorias->id)
        ->with('info','etiqueta actualizada  con exito');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $Categorias = Categoria::find($id)->delete();

        return back()->with('info','eliminado correctamente');
    }
}
