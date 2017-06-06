<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>member page</title>
</head>
<body>
 <body>
    <center>
        <h1>회원가입 페이지</h1>
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
                    <td colspan="2" align="center">
						<input type="submit"  value="가입하기"><a href="/user/login"></a> 
                    	<input type="reset" value="다시작성">
                    </td>
                </tr>
            </table>
 
        </form>
    </center>
    
</body>
</html>

