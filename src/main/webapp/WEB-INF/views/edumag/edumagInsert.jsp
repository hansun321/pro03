<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="<%=request.getContextPath()%>" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>글 쓰기</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
    <script src="https://cdn.ckeditor.com/4.20.0/standard/ckeditor.js"></script>
    <script type="text/javascript" src="${path1 }/resources/ckeditor/ckeditor.js"></script>
</head>
<style>
    .button {
        text-decoration: none;
        border-radius: 20px;
        margin: 15px;
        padding: 10px;
        float: right;
        background-color: #1D7151;
        border-color: #1D7151;
        color: #ffffff;
    }
    .button2 {
        text-decoration: none;
        border-radius: 20px;
        margin: 15px;
        padding: 10px;
        float: right;
        background-color: #FFA500;
        border-color: #FFA500;
        color: #ffffff;
    }

    .column1 {
        text-align: center;
        display: block;
        flex-basis: 0;
        flex-grow: 1;
        flex-shrink: 1;
        padding: 0.75rem;
    }
</style>

<body>
<div class="container is-fullhd">
    <!-- 헤더 부분 인클루드 -->
    <jsp:include page="../include/hd.jsp"></jsp:include>
    <div class="content" id="contents">
        <div class="row column1 text-center">
            <h2 class="h1">글 쓰기</h2>
            <hr>
            <div class="container">
                <form action="${path1 }/edumag/insert.do" method="post">
                    <table id="table1">
                        <tbody>
                        <tr>
                            <th style="background-color:#dcdcdc">제목</th>
                            <td>
                                <input type="text" name="title" id="title" class="input" placeholder="제목 입력" maxlength="98" required>
                            </td>
                        </tr>
                        <tr>
                            <th style="background-color:#dcdcdc">내용</th>
                            <td>
                                <textarea name="content" id="content" class="textarea" placeholder="내용 입력" rows="8" cols="100" maxlength="1400" required></textarea>
                                <script>
                                    CKEDITOR.replace('content',	{filebrowserUploadUrl:'${path1}/edumag/imageUpload.do'});
                                </script>
                            </td>
                        </tr>
                        <tr>
                            <th style="background-color:#dcdcdc">유튜브<br> 링크</th>
                            <td>
                                <input type="text" name="link" id="link" class="textarea" placeholder="유튜브 영상 링크 입력"
                                       style="width: 1200px; height: 50px;" required>
                            </td>
                        </tr>
                        <tr>
                            <th style="background-color:#dcdcdc">썸네일 <br>이미지</th>
                            <td>
                                <input type="text" name="imagesLink" id="imagesLink" class="textarea" placeholder="썸네일 이미지 주소 등록"
                                       style="width: 1200px; height: 50px;" required>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="submit" class="button2" value="등록" >
                                <a class="button" href="${path1 }/edumag/list.do">목록으로</a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </div>
    <!-- 푸터 부분 인클루드 -->
    <jsp:include page="../include/ft.jsp"></jsp:include>
</div>
</body>
</html>