<%-- <!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

   
    <title>Note taker : Home Page</title>
    <%@include file="all_js_css.jsp" %>
  </head>
  <body>
    
    
    <div class="container">
         <%@include file="navbar.jsp" %>
         <br>
         <h2>You are on home page</h2>
         
    </div>

  </body>
</html> --%>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Note Taker: Home Page</title>
    <%@include file="all_js_css.jsp" %>

    <!-- Custom CSS for Additional Styling -->
    <style>
        .hero-section {
            background: linear-gradient(to right, #007bff, #6610f2);
            color: white;
            padding: 100px 0;
            text-align: center;
        }

        .hero-section h1 {
            font-size: 3rem;
            margin-bottom: 20px;
            animation: fadeInDown 2s;
        }

        .hero-section p {
            font-size: 1.5rem;
            animation: fadeInUp 2s;
        }

        .features-section {
            padding: 60px 0;
        }

        .features-item {
            text-align: center;
            padding: 20px;
            transition: transform 0.3s ease-in-out;
        }

        .features-item:hover {
            transform: scale(1.05);
        }

        .features-icon {
            font-size: 3rem;
            margin-bottom: 15px;
            color: #007bff;
        }

        @keyframes fadeInDown {
            from { opacity: 0; transform: translateY(-50px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(50px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
  </head>
  <body>

    <!-- Hero Section -->
    <div class="hero-section">
        <%@include file="navbar.jsp" %>
        <h1>Welcome to Note Taker</h1>
        <p>Effortlessly manage your notes with our intuitive and powerful tools.</p>
    </div>

    <!-- Features Section -->
    <div class="container features-section">
        <div class="row">
            <div class="col-md-4">
                <div class="features-item">
                    <div class="features-icon">
                        <i class="bi bi-journal"></i>
                    </div>
                    <h4>Create Notes</h4>
                    <p>Quickly jot down your thoughts and ideas with ease.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="features-item">
                    <div class="features-icon">
                        <i class="bi bi-folder"></i>
                    </div>
                    <h4>Organize</h4>
                    <p>Sort and categorize your notes to keep everything tidy and accessible.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="features-item">
                    <div class="features-icon">
                        <i class="bi bi-cloud"></i>
                    </div>
                    <h4>Access Anywhere</h4>
                    <p>Sync your notes across devices for seamless access.</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Call to Action Section -->
    <div class="text-center my-5">
        <a href="add_notes.jsp" class="btn btn-lg btn-primary">Get Started Now</a>
    </div>

    <!-- Footer Section -->
    <footer class="text-center py-4">
        <p>&copy; 2025 Note Taker. All Rights Reserved.</p>
    </footer>

  </body>
</html>
