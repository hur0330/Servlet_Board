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
	<h2>게시글 리스트</h2>
    	<table>
    		<tr>
    			<td colspan="5" style="border:white;text-align:right;"><a href="BoardServlet?command=board_write_form">글 작성하기</a></td>
    		</tr>
    		<tr>
    			<th>글번호</th>
    			<th>제목 입니다.</th>
    			<th>작성자</th>
    			<th>작성날짜</th>
    			<th>조회수</th>
    		</tr>
			<c:forEach var="posting" items="${list }">
				<tr>
					<td>${posting.num }</td>
					<td><a href="BoardServlet?command=board_view&num=${posting.num }">${posting.subject }</a></td>
					<td>${posting.name }</td>
					<td>${posting.date }</td>
					<td>${posting.readcount }</td>
				</tr>
			</c:forEach>
    	</table>
</body>
</html>