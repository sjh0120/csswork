<?xml version="1.0" encoding="UTF-8" ?>
<%@ page contentType="application/xml; charset=UTF-8" pageEncoding="UTF-8"%>
<students>
    <%
    int end=Integer.parseInt(request.getParameter("cnt"));
    for(int i=0; i<end; i++){
    %>
    <student>
        <num><%=i+1%></num>
        <name>user<%=i+1%></name>
        <kor>90</kor>
        <eng>80</eng>
        <math>70</math>
    </student>
    <%
    }
    %>
</students>