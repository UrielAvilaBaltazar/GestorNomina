<?php

namespace App\Http\Controllers;

use App\Models\Empleados;
use Illuminate\Http\Request;

class EmpleadosController extends Controller
{

    public function index()
    {
        //incio
        $datos = Empleados::paginate(8);
        return view('inicio', compact('datos'));
    }

    public function create()
    {
        //agregan datos
        return view('agregar');
    }

    public function store(Request $request)
    {
        //guarda los datos
        $empleados = new Empleados();
        $empleados->nombre = $request->post('nombre');
        $empleados->apaterno = $request->post('apaterno');
        $empleados->amaterno = $request->post('amaterno');
        $empleados->puesto = $request->post('puesto');
        $empleados->salario = $request->post('salario');
        $empleados->save();

        return redirect()->route("empleados.index")->with("success", "Nuevo empleado agregado");
    }

    public function show($id)
    {
        //muestra un dato 
        $empleados = Empleados::find($id);
        return view('eliminar', compact('empleados'));
    }

    public function edit($id)
    {
        //encuantra el dato
        $empleados = Empleados::find($id);

        return view('actualizar', compact('empleados'));
    }

    public function update(Request $request, $id)
    {
        //actualiza datos
        $empleados = Empleados::find($id);
        $empleados->nombre = $request->post('nombre');
        $empleados->apaterno = $request->post('apaterno');
        $empleados->amaterno = $request->post('amaterno');
        $empleados->puesto = $request->post('puesto');
        $empleados->salario = $request->post('salario');
        $empleados->save();

        return redirect()->route("empleados.index")->with("success", "Empleado Actualizado");
    }

    public function destroy($id)
    {
        //elimina datos
        $empleados = Empleados::find($id);
        $empleados->delete();
        return redirect()->route("empleados.index")->with("success", "Empleado borrado");
    }
}
