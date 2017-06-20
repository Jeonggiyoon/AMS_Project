<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

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

	<input type='hidden' name='bno' value="${boardVO.bno}">

</form>
<table class="table table-bordered">
	<tr>
		<th><!-- 순서 -->
		<label for="exampleInputEmail1">순서</label> <input type="text"
			name='bno' class="form-control" value="${boardVO.bno}"
			readonly="readonly">
		</th>
		<th>
			<label for="exampleInputEmail1">로트넘버</label> <input type="text"
			name='lot' class="form-control" value="${boardVO.lot}"
			readonly="readonly">
		</th>
		<th>
			<label for="exampleInputEmail1">반입</label> <input type="number"
			name='cin' class="form-control" value="${boardVO.cin}"
			readonly="readonly">
		</th>
		<th>
			<label for="exampleInputEmail1">반출</label> <input type="number"
			name='cout' class="form-control" value="${boardVO.cout}"
			readonly="readonly">
		</th>
		<th>
			<label for="exampleInputEmail1">탄약재고</label> <input type="number"
			name='total' class="form-control" value="${boardVO.total}"
			readonly="readonly">
		</th>
		<th>
			<label for="exampleInputEmail1">기록자</label> <input type="text"
			name="writer" class="form-control" value="${boardVO.writer}"
			readonly="readonly">
		</th>
	</tr>
</table>

<%-- <div class="box-body">
	<div class="form-group">
		<label for="exampleInputEmail1">Lot</label> <input type="text"
			name='lot' class="form-control" value="${boardVO.lot}"
			readonly="readonly">
	</div>
	
		<div class="form-group">
		<label for="exampleInputEmail1">Cin</label> <input type="number"
			name='cin' class="form-control" value="${boardVO.cin}"
			readonly="readonly">
	</div>
	
		<div class="form-group">
		<label for="exampleInputEmail1">Cout</label> <input type="number"
			name='cout' class="form-control" value="${boardVO.cout}"
			readonly="readonly">
	</div>
		<div class="form-group">
		<label for="exampleInputEmail1">Total</label> <input type="number"
			name='total' class="form-control" value="${boardVO.total}"
			readonly="readonly">
	</div>

	<div class="form-group">
		<label for="exampleInputEmail1">Writer</label> <input type="text"
			name="writer" class="form-control" value="${boardVO.writer}"
			readonly="readonly">
	</div>
</div> --%>
<!-- /.box-body -->

 <div class="box-footer">
	<button type="submit" style="width: 70px" class="btn btn-warning">수정</button>
	<button type="submit" style="width: 70px" class="btn btn-danger">삭제</button>
	<button type="submit" class="btn btn-primary">전체목록</button>
</div> 

<%--  <ul class="mailbox-attachments clearfix uploadedList">
    </ul>
 <c:if test="${login.uid == boardVO.writer}">
    <button type="submit" class="btn btn-warning" id="modifyBtn">Modify</button>
    <button type="submit" class="btn btn-danger" id="removeBtn">REMOVE</button>
 </c:if>
    <button type="submit" class="btn btn-primary" id="goListBtn">GO LIST </button>
  </div> --%>


				<script>
				
$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	$(".btn-warning").on("click", function(){
		formObj.attr("action", "/board/modify");
		formObj.attr("method", "get");		
		formObj.submit();
	});
	
	$(".btn-danger").on("click", function(){
		formObj.attr("action", "/board/remove");
		formObj.submit();
	});
	
	$(".btn-primary").on("click", function(){
		self.location = "/board/listAll";
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
