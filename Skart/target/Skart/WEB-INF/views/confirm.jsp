<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<title>Insert title here</title>
</head>
<body>


	<div class="content">
		<fieldset>
			<legend>Confirm Details</legend>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			<a href="${flowExecutionUrl}&_eventId_index">index</a><br /> <br />
			<sf:form modelAttribute="userdetails">
				<sf:label path="id">User ID :</sf:label>${userdetails.id}
					<br />
				<br />
				<sf:label path="name"> User Name:</sf:label>${userdetails.name}
					<br />
				<br />
				<sf:label path="password">Password :</sf:label>${userdetails.password}
					<br />


				<sf:label path="email">Email:</sf:label>${userdetails.email}
					<br />
				<br />
				<sf:label path="mobile">Mobile #:</sf:label>${userdetails.mobile}
					<br />
				<br />
				<sf:label path="address">Address :</sf:label>${userdetails.address}
					<br />
				<br />
				<input name="_eventId_edit" type="submit" value="Edit" />
				<input name="_eventId_submit" type="submit" value="Confirm Details" />
				<br />
			</sf:form>
		</fieldset>
	</div>
</body>
</html>