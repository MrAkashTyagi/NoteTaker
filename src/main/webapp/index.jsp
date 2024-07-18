<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Note Taker: Home Page</title>   
    <%@include file = "all_js_css.jsp" %>
    
  </head>
  <body>
  <div class= "container"> 
  <%@include file = "navbar.jsp" %>
  <br>
  <br>
  <div class="card py-5">
  <img alt="" class="img-fluid mx-auto" style = "max-width:400px" src="img/notes.png" />
  <h1 class = "text-primary text-uppercase text-center mt-3">Start taking your notes</h1>
  <div class = "container text-center">
  <a href="addNote.jsp" class="btn btn-outline-primary text-center mx-3">Start Here</a>
  </div>
  </div>
  </div>
       

  </body>
</html>