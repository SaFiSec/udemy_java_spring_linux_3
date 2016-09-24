<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>


	<!--  sf = spring forms -->

	<sf:form method="post"
		action="${pageContext.request.contextPath}/docreate"
		commandName="offer">
		<table class="formtable">

			
			<tr>
				<td class="label">Your Offer:</td>
				<td><sf:textarea class="control" rows="10" path="text"
						name="text" cols="10"></sf:textarea><br />
				<sf:errors path="text" cssClass="error"></sf:errors></td>
			</tr>
			<tr>
				<td class="label">&nbsp;</td>
				<td><input class="control" value="Create Advert" type="submit" /></td>
			</tr>


		</table>
	</sf:form>
