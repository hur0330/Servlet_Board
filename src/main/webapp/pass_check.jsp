<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="BoardServlet" method="POST">
           <input type="hidden" name="command" value="board_check_pass">
           <input type="hidden" name="num" value="${param.num}">
           <label for="pass">비밀번호</label>
           <input type="password" id="pass" name="pass">
           <br>${message }<br>
           <input type="radio" id="update" name="what" value="update">
           <label for="update">수정</label>
           <br>           
           <input type="radio" id="delete" name="what" value="delete">
           <label for="delete">삭제</label>
           <br><br>
           <input type="submit" value="확인">
           <input type="button" value="취소" onclick="window.close()">
       </form>

</body>
</html>