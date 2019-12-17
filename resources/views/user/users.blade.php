@extends('layouts.list')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">User List</div>

                <div class="panel-body">
                	<div class="table-responsive">
	                    <table id="users-datatable" class="display" style="width:100%">
							<thead>
								<tr>
									<td>Name</td>
									<td>Email</td>
									<td>Phone</td>
									<td>Profile</td>	
									<td>Created At</td>
									<td>Updated At</td>
								</tr>
							</thead>

							<tbody>
								 @foreach($users as $user)
								    <tr>
								       	<td>{{ $user->firstname }} {{ $user->lastname }} </td>
								       	<td>{{ $user->email }}</td>
								       	<td>{{ $user->phone }}</td>
								       	<td>{{ $user->avatar }}</td>
								       	<td>{{ $user->created_at }}</td>
								       	<td>{{ $user->updated_at }}</td>
								    </tr>
								 @endforeach   
							</tbody>
						</table>
					</div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection


    
    

<!-- <script src="https://datatables.yajrabox.com/js/jquery.min.js"></script>
<script src="https://datatables.yajrabox.com/js/bootstrap.min.js"></script>
<script src="https://datatables.yajrabox.com/js/jquery.DataTables.min.js"></script>
<script src="https://datatables.yajrabox.com/js/datatables.bootstrap.js"></script>
<script>
$(function(){
	$("#users-datatable").DataTable({
		processing:true,
		serverSide:true,
		ajax:'https://datatables.yajrabox.com/eloquent/basic'
	});
});
</script> -->
<script>
$(document).ready(function() {
    $('#users-datatable').DataTable();
});
</script>