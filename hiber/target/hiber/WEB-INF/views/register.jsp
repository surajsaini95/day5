<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>register</title>
<style>
.error {
	color: #ff0000;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}</style>
</head>
<body>

   <form:form method="POST" commandName="customerreg" action="customerreg/login">
		<form:errors path="*" cssClass="errorblock" element="div" />
		<table>
			<tr>
				<td>Customer Name :</td>
				<td><form:input  path="cname" /></td>
				<td><form:errors path="cname" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Customer Email :</td>
				<td><form:input  path="email" type="email"/></td>
				<td><form:errors path="email" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Customer Address :</td>
				<td><form:input path="address" type="text"/></td>
				<td><form:errors path="address" cssClass="error" /></td>
			</tr>
		   <tr>
				<td>Customer mobile:</td>
				<td><form:input  path="mobilenumber" type="number"/></td>
				<td><form:errors path="mobilenumber" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td colspan="3"><input type="submit" /></td>
			</tr>
		</table>
	</form:form>
	</body>
</html>

