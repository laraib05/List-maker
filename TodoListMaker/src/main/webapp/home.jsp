<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Note Taker: Home</title>
    <%@include file="all_js_css.jsp" %>

    <!-- Custom CSS for Styling -->
    <style>
        .gallery-section {
            padding: 60px 0;
            text-align: center;
        }

        .gallery-title {
            font-size: 2.5rem;
            margin-bottom: 40px;
            color: #333;
            animation: fadeIn 2s;
        }

        .gallery-item {
            margin-bottom: 30px;
        }

        .gallery-item img {
            width: 100%;
            height: auto;
            border-radius: 10px;
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
        }

        .gallery-item img:hover {
            transform: scale(1.05);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        .gallery-description {
            margin-top: 15px;
            font-size: 1.1rem;
            color: #555;
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
    </style>
  </head>
  <body>

    <!-- Navbar -->
    <%@include file="navbar.jsp" %>

    <!-- Gallery Section -->
    <div class="container gallery-section">
        <h2 class="gallery-title">Explore Our Features</h2>
        <div class="row">
            <!-- Photo 1 -->
            <div class="col-md-6 col-lg-3 gallery-item">
                <img src="img/im1.jpg" alt="Feature 1" class="img-fluid">
                <p class="gallery-description">Capture your thoughts instantly with our quick note-taking feature.</p>
            </div>
            <!-- Photo 2 -->
            <div class="col-md-6 col-lg-3 gallery-item">
                <img src="img/im2.jpg" alt="Feature 2" class="img-fluid">
                <p class="gallery-description">Organize your notes into categories for easy retrieval and management.</p>
            </div>
            <!-- Photo 3 -->
            <div class="col-md-6 col-lg-3 gallery-item">
                <img src="img/im3.jpg" alt="Feature 3" class="img-fluid">
                <p class="gallery-description">Sync your notes across devices to keep them with you wherever you go.</p>
            </div>
            <!-- Photo 4 -->
            <div class="col-md-6 col-lg-3 gallery-item">
                <img src="img/im4.jpg" alt="Feature 4" class="img-fluid">
                <p class="gallery-description">Secure your notes with top-notch encryption to protect your privacy.</p>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="text-center py-4">
        <p>&copy; 2025 Note Taker. All Rights Reserved.</p>
    </footer>

  </body>
</html>
