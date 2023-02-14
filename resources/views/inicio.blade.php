@extends('layout/plantilla')

@section('TituloPagina', 'Sistema de gestion con Laravel')

@section('Contenido')
    <div class="card">
        <br><br>
        <div class="card-header">
            Featured
        </div>
        <div class="card-body">
            <h5 class="card-title">Special title treatment</h5>
            <p>
                <a href="{{ route("empleados.create")}}" class="btn btn-primary">Agregar Empleado</a>
            </p>
            <hr>
            <p class="card-text">
                <div class="table table-responsive">
                    <table class="table table-sm table-bordered">
                        <thead>
                            <th>Nombre</th>
                            <th>Apellido Parteno</th>
                            <th>Apellido Materno</th>
                            <th>Puesto</th>
                            <th>Salario</th>
                            <th>Editar</th>
                            <th>Eliminar</th>
                        </thead>
                        <tbody>
                            @foreach ($datos as $item)
                                <tr>
                                    <td>{{$item->nombre}}</td>
                                    <td>{{$item->apaterno}}</td>
                                    <td>{{$item->amaterno}}</td>
                                    <td>{{$item->puesto}}</td>
                                    <td>{{$item->salario}}</td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </p>

        </div>
    </div>

@endsection