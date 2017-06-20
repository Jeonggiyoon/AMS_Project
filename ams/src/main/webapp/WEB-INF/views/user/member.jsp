<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>AdminLTE 2 | Member</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.4 -->
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="/resources/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="/resources/plugins/iCheck/square/blue.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="login-page">
  
    <div class="login-box">
      <div class="login-logo">
        <a href="/user/member"><b>AMS</b>Project</a>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <p class="login-box-msg">회원 가입</p>

<!--  <form action= "login" role="form" method="get">   --><!-- post로 해야함  -->
        <form role="form" method="post">  
            <table>
                <tr class="form-group">
                    <td>군번</td>
                    <td><input type="text" class="form-control" name="snum" ></td>
                </tr>
                <tr class="form-group">
                    <td>비밀번호</td>
                    <td><input type="password" class="form-control" name="pw"></td>
                </tr>
                <tr class="form-group">
                    <td>비밀번호 확인</td>
                    <td><input type="password" class="form-control" name="pw_CHECK" ></td>
                </tr>
                <tr class="form-group">
                    <td>군종</td>
                    <td> 		
                    	<select class="form-control" name='type'>
						<option>해군</option>
						</select>
<!-- 					<input type="text" class="form-control" name="type" > -->
					</td>
                </tr>
                <tr class="form-group">
                    <td>이름</td>
                    <td><input type="text" class="form-control" name="name" ></td>
                </tr>
                <tr class="form-group">
                    <td>직급</td>
                    <td>
                    <select class="form-control" name='position'>
						<option>병장</option>
						<option>하사</option>
						<option>대위</option>
						<option>소령</option>
					</select>
<!--                     <input type="text" class="form-control" name="position" > -->
                    </td>
                </tr>
                <tr class="form-group">
                    <td>소속부대</td>
                    <td><input type="text" class="form-control" name="addr" ></td>
                </tr>
                <tr class="form-group">
                    <td>연락처</td>
                    <td><input type="text" class="form-control" name="num" ></td>
                </tr>
                
                <tr>
<!--                     <td colspan="2" align="center">
						<input type="submit"  value="가입하기"><a href="/user/login" ></a> 
                    	<input type="reset" value="다시작성">
                    </td> -->
                </tr>
            </table>
            <br>
  <div class="row">
    <div class="col-xs-8">    
      <div class="checkbox icheck">
      
      </div>                        
    </div><!-- /.col -->
    
 <!--    <div style="float:right;" class="row-xs-4">
    	<div style="width:80px; float:right; margin-right:20px;">
      		<a href="/user/member" class="btn btn-primary btn-block btn-flat" >회원가입</a>
        </div>
        <div style="width:80px; float:right; margin-right:20px;">
      		<button type="submit" class="btn btn-primary btn-block btn-flat">로그인</button> 
      	</div>
	</div>/.col -->


    <div style="float:right;" class="row-xs-4">
    	<div style="width:80px; float:right; margin-right:30px;"> 
      		<input type="reset" value="다시작성">
      	</div>
      	
    	<div style="width:80px; float:right; margin-right:10px;">
      		<input type="submit"  value="가입하기"><a href="/user/login" ></a>
      	</div>
      	
<!--       	<div style="width:80px; float:right; margin-right:20px;"> 
      		<input type="reset" value="다시작성">
      	</div> -->
    </div><!-- /.col -->
    
    
  </div>
</form>


      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->

  </body>
</html>