<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<li class="box">
	<!--<span style="font-size:16px; color:#000000; font-weight:bold">Name :</span> -->
 <!--<span style="font-size:16px; color:#663399;"> <%-- <%= request.getParameter("name") %> --%> </span> <br />-->
	<span id="msg">U:</span> <%= request.getParameter("comment") %>
</li>