@extends('layout/plantilla')

@section('TituloPagina', 'Sistema de gestion con Laravel')

@section('Contenido')
    <div class="card">
        <div class="card-header">
            <h1>TLR Electrodomesticos</h1> 
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-sm-12">
                    @if ($mensaje = Session::get('success'))
                        <div class="alert alert-success" role="alert">
                            {{$mensaje}}
                        </div>
                    @endif  
                </div>
            </div>
            <h3 class="card-title">Sistema de gestión de empleados activos</h3>
            <br>
            <p>
                <a href="{{ route("empleados.create")}}" class="btn btn-lg btn-primary">
                    <span class="fa fa-user-plus"> </span>  Agregar Empleado
                </a>
            </p>
            <hr>
            <p class="card-text">
                <div class="table table-responsive">
                    <table class="table table-bordered table-info table-striped table-hover ">
                        <thead class="table-dark text-center">
                            <th>Nombre</th>
                            <th>Apellido Parteno</th>
                            <th>Apellido Materno</th>
                            <th>Puesto</th>
                            <th>Salario</th>
                            <th>Telefono de contacto</th>
                            <th>Fecha de contración</th>
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
                                    <td>{{$item->tel}}</td>
                                    <td>{{$item->fecha_contratacion}}</td>
                                    <td class="text-center">
                                        <form action="{{ route('empleados.edit',$item->id) }}" method="GET">
                                            <button class="btn btn-warning btn-sm">
                                                <span class="fas fa-user-edit"></span>
                                            </button>
                                        </form>
                                    </td>
                                    <td class="text-center">
                                        <form action="{{ route('empleados.show',$item->id) }}" method="GET">
                                            <button class="btn btn-danger btn-sm">
                                                <span class="fas fa-user-slash"></span>
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="md-12 text-center ">
                        {{ $datos->links() }}
                    </div>
            </p>
        </div>
    </div>

@endsection