@extends('layouts.app')

@section('title','Trairners ')

@section('content')
	
	<p>Listado trainers</p>
	<div class="row">
	@foreach ($trainers as $trainer)
		
		<div class="col-md-2">
			<div class="card text-center" style="width: 18rem;">
			  <img class="card-img-top rounded-circle mx-auto d-block" style="height: 100px; width: 100px; background:#EFEFEF; " src="{{ url("images/$trainer->avatar")}}" alt="Card image cap">
			  <div class="card-body">
			    <h5 class="card-title">{{$trainer->name}}</h5>
			    <p class="card-text">Informaci&oacute;n adicional</p>
			    <a href="#" class="btn btn-primary">Ver m&aacute;s</a>
			  </div>
			</div>
		</div>
		
	@endforeach
	</div>
	
		
@endsection
