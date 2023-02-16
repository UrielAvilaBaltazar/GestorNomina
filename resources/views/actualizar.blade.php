@extends('layout/plantilla')

@section('TituloPagina', 'Sistema de agregar empleados')

@section('Contenido')
    <div class="card">
        <h3 class="card-header">Editar datos del empleado</h3>
        <div class="card-body">

            <p class="card-text">
                <form action="{{route('empleados.update', $empleados->id)}}" method="POST">
                    @csrf
                    @method("PUT")
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" name="nombre" required placeholder="Nombre(s)" value="{{$empleados -> nombre}}">
                        <label for="floatingInput">Nombre</label>
                    </div>
                    <div class="row g-3">
                        <div class="col form-floating mb-3">
                          <input type="text" class="form-control" name="apaterno" required placeholder="Apellido Paterno" value="{{$empleados -> apaterno}}">
                          <label for="floatingInput">Apellido Paterno</label>
                        </div>
                        <div class="col form-floating mb-3">
                          <input type="text" class="form-control" name="amaterno" required placeholder="Apellido Materno" value="{{$empleados -> amaterno}}">
                          <label for="floatingInput">Apellido Materno</label>
                        </div>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" name="puesto" required placeholder="Puesto" value="{{$empleados -> puesto}}">
                        <label for="floatingInput">Puesto</label>
                    </div>
                    <div  class="mb-3 form-floating">
                        <input type="text" name="salario" class="form-control" required placeholder=" Salario" value="{{$empleados -> salario}}">
                        <label for="">Salario</label>
                    </div>
                    <br>
                    <div class="text-center">
                        <button class="btn btn-primary btn-lg">Actualizar</button>
                        <a href="{{ route("empleados.index") }}" class="btn btn-primary btn-lg">Regresar</a>
                    </div>
                </form>
            </p>
        </div>
    </div>
    <br><br><br><br><br>
@endsection