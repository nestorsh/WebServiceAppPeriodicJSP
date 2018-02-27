<%-- 
    Document   : WSPeriodicTable
    Created on : 27-feb-2018, 18:47:17
    Author     : imac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabla periódica</title>
    </head>
    <body>
        <h1>Tabla periódica</h1>
    </body>
</html>
    <%-- start web service invocation --%><hr/>
    <%
    try {
	net.webservicex.Periodictable service = new net.webservicex.Periodictable();
	net.webservicex.PeriodictableSoap port = service.getPeriodictableSoap();
	 // TODO initialize WS operation arguments here
	java.lang.String elementName = "Gold";
	// TODO process result here
	java.lang.String result = port.getElementSymbol(elementName);
	out.println("Symbol = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
