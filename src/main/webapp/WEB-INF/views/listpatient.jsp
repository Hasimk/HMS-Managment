<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<center>
<table border="1">
<tr>
<th>PatientId</th>
<th>PatientName</th>
<th>MobileNo</th>
<th>Location</th>
<th>DateofBirth</th>
<th>AadharNo</th>
<th>Sex</th>
<th>Report</th>
</tr>

<c:if test="${!empty patients }">
<c:forEach items="${patients}" var="e">

<tr>
<td><c:out value="${e.patientid}"/></td>
<td><c:out value="${e.patientname}"/></td>
<td><c:out value="${e.mobileno}"/></td>
<td><c:out value="${e.location}"/></td>
<td><c:out value="${e.birthdate}"/></td>
<td><c:out value="${e.aadharno}"/></td>
<td><c:out value="${e.sex}"/></td>
<td><c:out value="${e.report}"/></td>
</tr>

</c:forEach>

</c:if>
</table>



</center>