<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>게시글 작성</h2>
        <form method="post" action="BoardServlet">
        	<input type="hidden" value="board_write" name="command">
            <table>
                <tr>
                    <th>제목 *</th>
                    <td><input type="text" name="subject"></td>
                </tr>
                <tr>
                    <th>아이디 *</th>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <th>비밀번호 *</th>
                    <td><input type="password" name="pass"></td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td><textarea cols="100" rows="30" name="content"></textarea></td>
                </tr>
            </table>
            <input class="btn" type="submit" value="등록">
            <input class="btn" type="button" value="취소" onclick="javascript:history.back()">
        </form>

</body>
</html>