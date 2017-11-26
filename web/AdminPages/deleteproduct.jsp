
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            connections.DBController dc = new connections.DBController();
            dc.setPid(Integer.parseInt(request.getParameter("did")));
        
            if(dc.deleteProduct())
            {
            response.sendRedirect("showproduct.jsp");
            }else{
            response.sendRedirect("error.jsp");
            }
           
        %>
        
    </body>
</html>
