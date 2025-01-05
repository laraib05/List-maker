<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h2>Please fill your note details</h2>

		<!-- Form -->
		<form action="SaveNoteServlet" method="post">
			<div class="mb-3">
				<label for="tile" class="form-label">Note Title :</label>
				 <input type="text"
				  class="form-control"
					id="title"
					 aria-describedby="emailHelp" 
					 placeholder="Enter here" 
					 name="title"
					  required>
			</div>
			
			
			<div class="mb-3">
				<label for="content" class="form-label">Note Content</label>
				<textarea 
				required 
				id="content" 
				class="form-control"
				 style="height: 300px"
				  name="content">
				  </textarea>
			</div>
			
			<div class="container text-center">
			  <button type="submit" class="btn btn-primary">Add</button>
			</div>
			
		</form>


	</div>

</body>
</html>