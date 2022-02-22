<%--<%@ page isELIgnored="false" %>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="components/header.jsp"%>

<c:if test="${firstName==null}">
    <c:redirect url="/login" />
</c:if>

<div class="login-body" style="background-image: radial-gradient(circle at 16% 83%, rgba(148, 148, 148,.06) 0%, rgba(148, 148, 148,.06) 50%,rgba(63, 63, 63,.06) 50%, rgba(63, 63, 63,.06) 100%),radial-gradient(circle at 68% 87%, rgba(66, 66, 66,.06) 0%, rgba(66, 66, 66,.06) 50%,rgba(105, 105, 105,.06) 50%, rgba(105, 105, 105,.06) 100%),radial-gradient(circle at 38% 50%, rgba(123, 123, 123,.06) 0%, rgba(123, 123, 123,.06) 50%,rgba(172, 172, 172,.06) 50%, rgba(172, 172, 172,.06) 100%),linear-gradient(90deg, hsl(18,0%,1%),hsl(18,0%,1%));">
    <div class="container">
        <div class="screen">
            <h2>Welcome!</h2>
            <div class="screen__content">
                <div class="login">
                    <p class="display_name"><c:out value="${firstName}"/></p>
                    <p class="display_name"><c:out value="${lastName}"/></p>
                    <a href="${pageContext.request.contextPath}/logout" class="button login__submit" >
                        <span class="button__text">Log Out</span>
                        <i class="button__icon fas fa-chevron-right"></i>
                    </a>
                </div>

            </div>
            <div class="screen__background">
                <span class="screen__background__shape screen__background__shape4"></span>
                <span class="screen__background__shape screen__background__shape3"></span>
                <span class="screen__background__shape screen__background__shape2"></span>
                <span class="screen__background__shape screen__background__shape1"></span>
            </div>
        </div>
    </div>
</div>


<%@include file="components/footer.jsp"%>
