<%@page import = "org.hibernate.Session"%>
<%@page import = "com.helper.FactoryProvider"%>
<%@page import = "com.entities.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%@include file = "all_js_css.jsp" %>

</head>
<body>
 <div class= "container"> 
  <%@include file = "navbar.jsp" %>
  <br>
  <h1>Edit your note</h1>
  <br>
  <%
  
  int noteId = Integer.parseInt(request.getParameter("id").trim());
  
  Session s = FactoryProvider.getFactory().openSession();
  Note note = s.get(Note.class,noteId);
  
  %>
  
  <div class="container">
  <form action = "UpdateServlet" method = "post">
  <input value = "<%= note.getId() %>" name="noteId" type = "hidden" />
  <div class="form-group">
    <label for="title">Note title</label>
    <input 
    name = "title"
    required type="text" 
    class="form-control" 
    id="title"     
    placeholder="Enter here"
    value="<%= note.getTitle() %>"
    />    
  </div>
  <div class="form-group">
    <label for="content">Note content</label>
    <textarea 
    name="content"
    required id = "content"
    placeholder = "Enter your content here"
    class = "form-control"
    style="height:300px">
    <%= note.getContent() %>
    </textarea>
  </div>
   <div class="container text-center" >  
  <button type="submit" class="btn btn-success">Save your note</button>
  </div>
  
  </div>
       
</body>
</html>