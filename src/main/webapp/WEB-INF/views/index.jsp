<%@taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<center>
<body bgcolor="lightblue">
<h1 ><marquee>HMS Managment System</marquee></h1>
<h2 style="border:2px solid cyan; color:blue;">
<br/>
<c:if test="${message ne null}">
<c:out value ="${message}"/>
</c:if>
</h2>
<br/>
1.<a href="addpatient">ADDPATIENTINFORMATION</a> 
</br>
</br>
2.<a href="listpatient">PATIENTLIST</a>

</center>
</body>
