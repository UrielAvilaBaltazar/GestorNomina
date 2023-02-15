@extends('layout/plantilla')

@section('TituloPagina', 'Sistema de agregar empleados')

@section('Contenido')
    <div class="card">
        <h3 class="card-header">Eliminar un empleado</h3>
        <div class="card-body">
            <h5 class="card-text">
                <div class="alert alert-danger" role="alert">
                    ¿Esta seguro de eliminar el registro?  <br> 
                    (Una vez eliminado el registro no podra volver a acceder a los datos)
                </div>
            </h5>    
            
        </div>
        <table class="table table-danger table-hover table-bordered border-dark">
            <thead>
                <th class="table-dark">Nombre</th>
                <th class="table-dark">Apellido Paterno</th>
                <th class="table-dark">Apellido Materno</th>
                <th class="table-dark">Puesto</th>
                <th class="table-dark">Salario</th>
            </thead>
            <tbody>
                <td>{{$empleados->nombre}}</td>
                <td>{{$empleados->apaterno}}</td>
                <td>{{$empleados->amaterno}}</td>
                <td>{{$empleados->puesto}}</td>
                <td>{{$empleados->salario}}</td>
            </tbody>
        </table>
        <br>
        <form action="{{ route('empleados.destroy', $empleados->id)}}" method="POST">
            @csrf
            @method('DELETE')
            <div class="text-center">
                <button class="btn btn-primary btn-lg">Eliminar</button>
                <a href="{{ route("empleados.index") }}" class="btn btn-primary btn-lg">Regresar</a> 
            </div>
            
        </form>
    </div>
@endsection