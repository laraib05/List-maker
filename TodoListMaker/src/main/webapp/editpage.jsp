<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit page: Edit</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>

    <div class="container">
    
    <%@include file="navbar.jsp" %>
    <h1>Edit your note</h1>
    <br>
    <% 
    int noteId = Integer.parseInt(request.getParameter("note_id").trim());
    Session s = FactoryProvider.getFactory().openSession();
	
	Note note =(Note)s.get(Note.class, noteId);
    
    %>
    <!-- Form -->
		<form action="UpdateNoteServlet" method="post">
		
		    <input value="<%= note.getId()%>" name="noteId" type="hidden" />
		
			<div class="mb-3">
				<label for="tile" class="form-label">Note Title :</label>
				 <input type="text"
				  class="form-control"
					id="title"
					 aria-describedby="emailHelp" 
					 placeholder="Enter here" 
					 name="title"
					  required value=<%=note.getTitle() %>>
			</div>
			
			
			<div class="mb-3">
				<label for="content" class="form-label">Note Content</label>
				<textarea 
				required 
				id="content" 
				class="form-control"
				 style="height: 300px"
				  name="content">
				  <%=note.getContent() %>
				  </textarea>
			</div>
			
			<div class="container text-center">
			  <button type="submit" class="btn btn-success">Save your note</button>
			</div>
			
		</form>
    
    
    </div>
    
</body>
</html>