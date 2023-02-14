@extends('layout/plantilla')

@section('TituloPagina', 'Sistema de agregar empleados')

@section('Contenido')
    <div class="card">
        <h5 class="card-header">Actualizar datos del empleado</h5>
        <div class="card-body">

            <p class="card-text">
                <form action="{{route('empleados.update', $empleados->id)}}" method="POST">
                    @csrf
                    @method("PUT")
                    <label for="">Nombre</label>
                    <input type="text" name="nombre" class="form-control" required value="{{$empleados -> nombre}}">
                    <label for="">Apellido Paterno</label>
                    <input type="text" name="apaterno" class="form-control" required value="{{$empleados -> apaterno}}">
                    <label for="">Apellido Materno</label>
                    <input type="text" name="amaterno" class="form-control" required value="{{$empleados -> amaterno}}">
                    <label for="">Puesto</label>
                    <input type="text" name="puesto" class="form-control" required value="{{$empleados -> puesto}}">
                    <label for="">Salario</label>
                    <input type="text" name="salario" class="form-control" required value="{{$empleados -> salario}}">
                    <br>
                    <button class="btn btn-primary">Actualizar</button>
                    <a href="{{ route("empleados.index") }}" class="btn btn-info">Regresar</a>
                </form>
            </p>

        </div>
    </div>
@endsection