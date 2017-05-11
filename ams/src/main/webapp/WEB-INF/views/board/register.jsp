<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">REGISTER BOARD</h3>
				</div>
				<!-- /.box-header -->

<form role="form" method="post">
	<div class="box-body">
	<table class="table table-bordered">
	<tr>
		<th style="width: 10px">BNO</th>
		<th>LOT</th>
		<th>CIN</th>
		<th>COUT</th>
		<th>TOTAL</th>
		<th>WRITER</th>
	</tr>
	</table>
		<div class="form-group">
			<label for="exampleInputEmail1">Lot</label> <input type="text"
				name='lot' class="form-control" placeholder="Enter lot">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">Cin</label> 
			<input type="number"
				name='cin' class="form-control" placeholder="Enter cin">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">Cout</label> 
			<input type="number"
				name='cout' class="form-control" placeholder="Enter cout">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">Total</label> 
			<input type="number"
				name='total' class="form-control" placeholder="Enter total">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">Writer</label> 
			<input type="text"
				name="writer" class="form-control" placeholder="Enter Writer">
		</div>
	</div>
	<!-- /.box-body -->

	<div class="box-footer">
		<button type="submit" class="btn btn-primary">Submit</button>
	</div>
</form>


			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
<!-- </div> -->
<!-- /.content-wrapper -->

<%@include file="../include/footer.jsp"%>
