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
					<h3 class="box-title">REGISTER AMS BOARD</h3>
				</div>
				<!-- /.box-header -->

<form  role="form" method="post">
	<div class="box-body">
	<br>
	<ul>
		<li>탄약 최근재고</li>
	</ul>
	<br>
	<table class="table table-bordered">
	<tr>
		<th style="width: 10px">BNO</th>
		<th>LOT</th>
		<th>CIN</th>
		<th>COUT</th>
		<th>TOTAL</th>
		<th>WRITER</th>
		<th>REGDATE</th>
		<th style="width: 40px">VIEWCNT</th>
	</tr>
<c:forEach items="${maxread}" var="max">
 	<tr>
		<td>${max.bno}</td>
		<td>${max.lot}</td>
		<td>${max.cin}</td>
		<td>${max.cout}</td>
		<td>${max.total}</td>
		<td>${max.writer}</td>
		<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
				value="${max.regdate}" /></td>
		<td><span class="badge bg-red">${max.viewcnt}</span></td>
	</tr>
</c:forEach>
	</table>
	<br>
	<br>
	<br>
	<br>
	
	<ul>
		<li>탄약 최근재고</li>
	</ul>
	<br>
	<table class="table table-bordered">
	<tr>
		<%-- <th class="form-group">
			<label for="exampleInputEmail1">Lot</label> <input type="text"
				name='lot' class="form-control" value="${boardVO.lot}" readonly="readonly">
		</th> --%>
		<th class="form-group"> <label for="exampleInputEmail1">Lot</label>
		<select class="form-control" name='lot'>
			<option>40mm</option>
		</select>
		</th> 
		<%-- <input type="text"
				name='lot' class="form-control" placeholder= "${boardVO.lot}"> --%>
		<!-- <th class="form-group">
			<label for="exampleInputEmail1">Lot</label> <input type="text"
				name='lot' class="form-control" placeholder="Enter lot">
		</th> -->
		<th class="form-group">
			<label for="exampleInputEmail1">Cin</label> 
			<input type="number"
				name='cin' MIN ="1" class="form-control" value="${cin}" placeholder="Enter cin">
		</th>
		<th class="form-group">
			<label for="exampleInputEmail1">Cout</label> 
			<input type="number"
				name='cout'  MIN ="1" class="form-control" value="${cout}" placeholder="Enter cout">
 		</th>
 		
 		<%-- <th class="form-group">
			<label for="exampleInputEmail1">Total</label> 
			<input type="number"
				name='total' MIN ="1" class="form-control" value="${Calresult}">
		</th> --%>
 
 		<th class="form-group">
			<label for="exampleInputEmail1">Writer</label> 
			<input type="text"
				name="writer" class="form-control" placeholder="Enter Writer">
		</th> 
		
<%--  		<th class="form-group">
			<label for="exampleInputEmail1">Writer</label> 
			<input type="text" name="writer" 
			  class="form-control" value='${login.snum }' readonly>
		</th> --%>
	</tr>
	</table>
	<br>
	<br>
		
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

<script>
    
    var result = '${msg}';
    
    if(result == 'Fail'){
    	alert(" 탄약재고가 부족합니다.");
    }
    
</script>

<!-- <script>

	var total = '${max.total}';
	
	var cout = '${cout}';
    
    var result = '${msg}';
    
	
	if (total < 50 == 'LACK') {
		alert(" 탄약재고가 부족합니다. ");
	}
	
	if (total < cout == 'EXCESS') {
		alert(" 탄약재고가 부족합니다. ");
	}
    
    if(result == 'SUCCESS'){
    	alert("처리가 완료되었습니다.");
    }
    
</script> -->


<%@include file="../include/footer.jsp"%>
