@extends('layouts.app')

@section('title','Trairners Create')

@section('content')
	
	<form class="form-horizontal" action="{{ url('store')}}" method="POST" enctype="multipart/form-data">
		{!! csrf_field() !!}
		<div class="form-group">
			<label>Nombres</label>
			<input type="text" name="nombre" class="form-control">
		</div>
		<div class="form-group">
			<label>Descripci&oacute;n</label>
			<textarea name="descripcion" class="form-control"></textarea>
		</div>
		<div class="form-gorup">
			<label>Avatar</label>
			<input type="file" name="avatar" class="form-control-file">
		</div>
		<div class="form-group">
			<button class="btn btn-info">Guardar</button>
		</div>
	</form>
		
@endsection
