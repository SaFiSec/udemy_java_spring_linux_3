<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



	<table class="offers">
		<tr>
			<td>Id</td>
			<td>Name</td>
			<td>Email</td>
			<td>Offer</td>

		</tr>
		<c:forEach var="offer" items="${offers}">

			<tr>
				<td><c:out value="${offer.id}"></c:out></td>
				<td><c:out value="${offer.user.name}"></c:out></td>
				<td><c:out value="${offer.user.email}"></c:out></td>
				<td><c:out value="${offer.text}"></c:out></td>


			</tr>
	</c:forEach>
	</table>
	
	 <c:choose>
    
    <c:when test="${hasOffer}">
        <p><a href="${pageContext.request.contextPath}/createoffer">Edit of Delete your current offer.</a></p>
    </c:when>
    
    <c:otherwise>
    <p><a href="${pageContext.request.contextPath}/createoffer">Add A New Offer.</a></p>
    </c:otherwise>
    
    
    </c:choose>
