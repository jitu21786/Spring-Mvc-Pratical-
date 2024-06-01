<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Form</title>
    <!-- Bootstrap CSS CDN -->
    <link 
        href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
        rel="stylesheet">
    <style>
        /* Custom hover effects */
       #addButton:hover {
            background-color: lightyellow; /* Light yellow */
            color: green;                 /* Green text */
            border-color: green;          /* Green border */
        }

        #backButton:hover {
            background-color: lightyellow; /* Light yellow */
            color: green;                 /* Green text */
            border-color: green;          /* Green border */
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h2 class="mb-4 text-center">Product Form</h2>
                <form>
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" id="name" placeholder="Enter product name">
                    </div>
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea class="form-control" id="description" rows="3" placeholder="Enter product description"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="price">Price</label>
                        <input type="number" class="form-control" id="price" placeholder="Enter product price">
                    </div>
                    <div class="text-center">
                        <button type="button" class="btn btn-primary" id="addButton">Add</button>
                        <a href="#" class="btn btn-secondary" id="backButton">Back</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- jQuery and Bootstrap JS CDN -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function(){
            $("#addButton").click(function(){
                // Add button functionality
                alert("Add button clicked");
            });
            $("#backButton").click(function(e){
                e.preventDefault();
                // Back button functionality
                alert("Back button clicked");
            });
        });
    </script>
</body>
</html>
