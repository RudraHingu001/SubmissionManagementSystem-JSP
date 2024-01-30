<% 

session.removeAttribute("id");

session.invalidate();

response.sendRedirect("http://localhost:8080/project/index.jsp");

%>