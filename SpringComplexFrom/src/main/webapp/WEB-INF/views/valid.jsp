<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Form Validation with JSON</title>
<style>
/* Add your CSS styles here */
body {
    font-family: Arial, sans-serif;
    background-color: #FF3333;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 600px;
    margin: 50px auto;
    padding: 20px;
    background: white;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.form-group {
    margin-bottom: 15px;
}

.form-group label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
}

.form-group input {
    width: calc(100% - 20px);
    padding: 8px;
    margin: 0 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

.form-group .error, .form-group .success {
    color: red;
    font-size: 0.9em;
}

button {
    padding: 10px 15px;
    background-color: #28a745;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

button:hover {
    background-color: #218838;
}
</style>
</head>
<body>
    <div class="container">
        <h2>Form Validation with JSON</h2>
        <form id="validationForm">
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="name" required>
                <span class="error" id="nameError"></span>
            </div>
            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" required>
                <span class="error" id="emailError"></span>
            </div>
            <div class="form-group">
                <label for="id">ID</label>
                <input type="text" id="id" name="id" required>
                <span class="error" id="idError"></span>
            </div>
            <button type="submit">Submit</button>
            <div class="form-group">
                <span class="success" id="successMessage"></span>
            </div>
        </form>
    </div>

    <script>
        document.getElementById('validationForm').addEventListener('submit', function(event) {
            event.preventDefault(); // Prevent the form from submitting the traditional way

            // Dummy JSON data
            const jsonData = [
                {
                    name: "jitu",
                    email: "jitu17900@gmail.com",
                    id: "12345"
                },
                {
                    name: "mishu",
                    email: "mishu@gmail.com",
                    id: "12345"
                }
            ];

            // Get the form input values
            const name = document.getElementById('name').value;
            const email = document.getElementById('email').value;
            const id = document.getElementById('id').value;
            let isValid = false;
            for (let data of jsonData) {
                if (data.name === name && data.email === email && data.id === id) {
                    isValid = true;
                    break;
                }
            }

            if (isValid) {
                alert('Validation successful!');
            } else {
                alert('Validation failed. Please check your input.');
            }
        });
    </script>
</body>
</html>
 