<?php

namespace App\Http\Controllers\web;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Producto;
use App\Categoria;

class PageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function catalogo()
    {
        $Productos=Producto::orderBy('id','DESC')->paginate(6);
        return view('web.producto',compact('Productos'));
    }
    

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function teclado()
    {
        $Teclados=Producto::orderBy('id','DESC')->where('categoria_id','2')->paginate(6);
        return view('web.teclado',compact('Teclados'));
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function mouse()
    {
        $mouses=Producto::orderBy('id','DESC')->where('categoria_id','3')->paginate(6);
        return view('web.mouse',compact('mouses'));
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function sonido()
    {
        $sonidos=Producto::orderBy('id','DESC')->where('categoria_id','4')->paginate(6);
        return view('web.sonido',compact('sonidos'));
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function camaras()
    {
        $camaras=Producto::orderBy('id','DESC')->where('categoria_id','5')->paginate(6);
        return view('web.camaras',compact('camaras'));
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function video()
    {
        $videos=Producto::orderBy('id','DESC')->where('categoria_id','6')->paginate(6);
        return view('web.video',compact('videos'));
    }
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function nuevo()
    {
        $nuevos=Producto::orderBy('id','DESC')->where('categoria_id','7')->paginate(6);
        return view('web.nuevo',compact('nuevos'));
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    
    public function accesorios()
    {
        $accesorios=Producto::orderBy('id','DESC')->where('categoria_id','8')->paginate(6);
        return view('web.accesorios',compact('accesorios'));
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function celulares()
    {
        $celulares=Producto::orderBy('id','DESC')->where('categoria_id','9')->paginate(6);
        return view('web.celular',compact('celulares'));
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function perifericos()
    {
        $Perifericos=Producto::orderBy('id','DESC')->where('categoria_id','10')->paginate(6);
        return view('web.periferico',compact('Perifericos'));
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       // 
    }

    /**
     * Display the specified resource. 
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        
        $detalleProductos=Producto::all()->find($id);

        

        return view('web.detalleProducto', compact('detalleProductos'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
