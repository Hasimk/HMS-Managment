<%@taglib  uri="http://www.springframework.org/tags/form"  prefix="form"%>

<center>
<form:form action="savePatient" method ="post" modelAttribute="emodel">
<body bgcolor="pink">
<table>

<tr>
<td>PatientId</td>
<td><form:input path="patientid" /> 
</tr>

<tr>
<td>PatientName</td>
<td><form:input path="patientname" /> 
</tr>

<tr>
<td>MobileNo</td>
<td><form:input path="mobileno" /> 
</tr>

<tr>
<td>Location</td>
<td><form:input path="location" /> 
</tr>

<tr>
<td>DateofBirth</td>
<td><form:input path="birthdate" /> 
</tr>

<tr>
<td>AadharNo</td>
<td><form:input path="aadharno" /> 
</tr>

<tr>
<td>Sex</td>
<td><form:input path="sex" /> 
</tr>

<tr>
<td>Report</td>
<td><form:input path="report" /> 
</tr>

<tr>
      <td  colspan="3"  align="center">
          <input  type="submit"  value="save">  
       </td>

</table>
</form:form>
</center>
</body>
