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
					<h3 class="box-title">READ AMS BOARD</h3>
				</div>
				<!-- /.box-header -->

<form role="form" method="post">
<table class="table table-bordered">
	<tr>
		<th>
			<label for="exampleInputEmail1">BNO</label> <input type="text"
				name='bno' class="form-control" value="${boardVO.bno}"
				readonly="readonly">
		</th>
		<th>
			<label for="exampleInputEmail1">Lot</label> <input type="text"
				name='lot' class="form-control" value="${boardVO.lot}" readonly="readonly">
		</th>
		<th>
			<label for="exampleInputEmail1">Cin	</label> <input type="number"
				name='cin' MIN ="1" class="form-control" value="${boardVO.cin}">
		</th>
		<th>
			<label for="exampleInputEmail1">Cout</label> <input type="number"
				name='cout' MIN ="1" class="form-control" value="${boardVO.cout}">
		</th>
		<th>
			<label for="exampleInputEmail1">Total</label> <input type="number"
				name='total' MIN ="1" class="form-control" value="${boardVO.total}" readonly="readonly">
		</th>
		<th>
			<label for="exampleInputEmail1">Writer</label> <input
				type="text" name="writer" class="form-control"
				value="${boardVO.writer}">
		</th>
	</tr>
</table>

	<%-- <div class="box-body">

		<div class="form-group">
			<label for="exampleInputEmail1">BNO</label> <input type="text"
				name='bno' class="form-control" value="${boardVO.bno}"
				readonly="readonly">
		</div>
		
		<div class="form-group">
			<label for="exampleInputEmail1">Lot</label> <input type="text"
				name='lot' class="form-control" value="${boardVO.lot}" readonly="readonly">
		</div>

		<div class="form-group">
			<label for="exampleInputEmail1">Cin	</label> <input type="number"
				name='cin' MIN ="1" class="form-control" value="${boardVO.cin}">
		</div>
		
		<div class="form-group">
			<label for="exampleInputEmail1">Cout</label> <input type="number"
				name='cout' MIN ="1" class="form-control" value="${boardVO.cout}">
		</div>
		
		<div class="form-group">
			<label for="exampleInputEmail1">Total</label> <input type="number"
				name='total' MIN ="1" class="form-control" value="${boardVO.total}">
		</div>
		
		<div class="form-group">
			<label for="exampleInputEmail1">Writer</label> <input
				type="text" name="writer" class="form-control"
				value="${boardVO.writer}">
		</div>
	</div> --%>
	<!-- /.box-body -->
</form>


<div class="box-footer">
	<button type="submit" class="btn btn-primary">SAVE</button>
	<button type="submit" class="btn btn-warning">CANCEL</button>
</div>

<script>
	$(document).ready(function() {

		var formObj = $("form[role='form']");

		console.log(formObj);

		$(".btn-warning").on("click", function() {
			self.location = "/board/listAll";
		});

		$(".btn-primary").on("click", function() {
			formObj.submit();
		});

	});
</script>




			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<%@include file="../include/footer.jsp"%>
