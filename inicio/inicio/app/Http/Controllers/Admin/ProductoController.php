<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


use Illuminate\Support\Facades\Storage;

use App\Categoria;
use App\Marca;
use App\Producto;
use Image;

class ProductoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $Productos=Producto::orderBy('id','DESC')->paginate();
        return view('admin.productos.index',compact('Productos')); 
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $Marcas=Marca::orderBy('nombre_marca','ASC')->pluck('nombre_marca','id');
        $Categorias=Categoria::orderBy('nombre_categoria','ASC')->pluck('nombre_categoria','id');
        return view('admin.productos.create',compact('Marcas','Categorias'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $productos = Producto::create($request->all());
 
        //IMAGE
        if($request->file('file')){

            $image = $request->file('file');
            $FileName = $image ->getClientOriginalName();
            $image_resize = Image::make($image->getRealPath());
            $image_resize->resize(300,300);
            $image_resize->save(public_path('images/'.$FileName));
            //$ruta = Storage::disk('public')->putFile('imagenes', $request->file('file'));

        //image de 300px x 200 px
        //$imagen = Image::make( $request->file('file') );
        //$imagen->resize(300, 300);
        //$imagen->save('storage/'.$ruta);
            

            
            
            
        }

        return redirect()->route('productos.edit', $productos->id)
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
        $Productos =Producto::find($id);
        
 
        return view('admin.productos.show', compact('Productos'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $Productos =Producto::find($id);
        


        $Marcas=Marca::orderBy('nombre_marca','ASC')->pluck('nombre_marca','id');
        $Categorias=Categoria::orderBy('nombre_categoria','ASC')->pluck('nombre_categoria','id');
       
       
       return view('admin.productos.edit', compact('Productos','Marcas','Categorias'));
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
        $Productos = Producto::find($id);
       
        $Productos->fill($request->all())->save();
        
        //IMAGE
        if($request->file('file')){
            
            $image = $request->file('file');
            $FileName = $image ->getClientOriginalName();
            $image_resize = Image::make($image->getRealPath());
            $image_resize->resize(300,300);
            $image_resize->save(public_path('images/'.$FileName));

        
        
        }

        return redirect()->route('productos.index')
        ->with('info','Producto actualizado con exito');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $Productos = Producto::find($id);
        $Productos->delete();

        return back()->with('info','eliminado correctamente');
    }
}
