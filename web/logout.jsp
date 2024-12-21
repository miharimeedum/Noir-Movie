<%-- 
    Document   : logout
    Created on : Dec 21, 2024, 1:19:15?AM
    Author     : miharimeedum
--%>

<%@ page session="true" %>
<%
    session.invalidate();  
    response.sendRedirect("index.jsp"); 
%>

