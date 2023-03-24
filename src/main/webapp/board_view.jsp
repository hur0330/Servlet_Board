<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>게시글 상세보기</h2>

		<table>
		    <tr>
		        <th>제목</th>
		        <td>${boardone.subject }</td>
		    </tr>
		    <tr>
		        <th>작성자</th>
		        <td>${boardone.name }</td>
		    </tr>
		    <tr>
		        <th>작성시간</th>
		        <td>${boardone.date }</td>
		    </tr>
		    <tr>
		        <th>조회수</th>
		        <td>${boardone.readcount }</td>
		    </tr>
		    <tr>
		        <th>내용</th>
		        <td><pre>${boardone.content }</pre></td>
		    </tr>
		</table>
		<input class="btn" type="submit" value="글 작성" onclick="location.href='BoardServlet?command=board_write_form'"/>
		<input class="btn" type="reset" value="글 수정" src="js/board.js"/>
		<input class="btn" type="button" value="글 삭제" src="js/board.js"/>
		<input class="btn" type="button" value="목록으로" onclick="location.href='BoardServlet?command=board_list'" />

</body>
</html>