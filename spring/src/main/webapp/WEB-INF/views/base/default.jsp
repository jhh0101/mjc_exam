<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<%@include file="head.jsp" %>

<body>
    <div class="container">

        <%--// 네비게이션 --%>
        <%@include file="../base/navbar.jsp" %>
        <%--// 네비게이션 --%>

        <%--// 페이지 제목 --%>
        <%@include file="../base/title.jsp" %>
        <%--// 페이지 제목 --%>

        <%-- 메시지 --%>
        <%@include file="../base/message.jsp" %>
        <%--// 메시지 --%>

        <%-- 페이지 내용 --%>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        게시글 등록
                    </div>
                    <div class="card-body">
                        card-body
                    </div>
                    <div class="card-footer">
                        <button type="submit" class="btn btn-primary">등록</button>
                        <a type="button" class="btn btn-primary"></a>
                    </div>
                </div>
            </div>
        </div>
        <%--// 페이지 내용 --%>
    </div>

    <%-- Bootstrap JS --%>
    <%@include file="../base/script.jsp" %>
    </body>
</html>