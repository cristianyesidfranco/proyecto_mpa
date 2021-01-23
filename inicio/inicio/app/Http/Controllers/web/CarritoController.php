<?php

namespace App\Http\Controllers\web;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Cart;
use App\Producto;
use Auth;

class CarritoController extends Controller
{

    public function agregar(Request $request)
    {
        $producto = Producto::find($request->id);
        Cart::add(
            $producto->id,
            $producto->nombre_producto,
            $producto->precio_unitario,
            $request->quantity,
            array("unidad"=>$producto->unidades_stock)  
        );
        return back()->with("success","$producto->nombre_producto ! se ha agregado al carrito de compra");
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function checkout()
    {
        return view('web.checkout');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function remove(Request $request)
    {
        $producto = Producto::find($request->id);
        Cart::remove(['id'=>$request->id]);
        return back()->with('success',"Producto eliminado");
    }

  
    public function vaciar()
    {
        Cart::clear();
        return back()->with('success',"| Carrito vacio") ;
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
