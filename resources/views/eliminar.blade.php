@extends('layout/plantilla')

@section('TituloPagina', 'Sistema de agregar empleados')

@section('Contenido')
    <div class="card">
        <h5 class="card-header">Eliminar un empleado</h5>
        <div class="card-body">
            <p class="card-text">
                <div class="alert alert-danger" role="alert">
                    ¿Esta seguro de eliminar el registro?     
            </p>    
        </div>
        <table class="table table-sm table-hover">
            <thead>
                <th>Nombre</th>
                <th>Apellido Paterno</th>
                <th>Apellido Materno</th>
                <th>Puesto</th>
                <th>Salario</th>
            </thead>
            <tbody>
                <td>{{$empleados->nombre}}</td>
                <td>{{$empleados->apaterno}}</td>
                <td>{{$empleados->amaterno}}</td>
                <td>{{$empleados->puesto}}</td>
                <td>{{$empleados->salario}}</td>
            </tbody>
        </table>
        <form action="{{ route('empleados.destroy', $empleados->id)}}" method="POST">
            @csrf
            @method('DELETE')
            <button class="btn btn-primary">Eliminar</button>
            <a href="{{ route("empleados.index") }}" class="btn btn-info">Regresar</a> 
        </form>
    </div>
@endsection