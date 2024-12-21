<!-- 
    Document   : login
    Created on : Dec 11, 2024, 11:07:47 PM
    Author     : miharimeedum 
-->

<!DOCTYPE html>
<html lang="en">
<head>

    <title>Noir-Movie | Log in</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet" href="css/login.css">
</head>
<body>
    <form action="LoginServlet" method="post">
        <h3 class="title">Login Here</h3>

        <label for="username" class="label">Username</label>
        <input type="text" placeholder="Enter your username" id="username" name="username" required />

        <label for="password" class="label">Password</label>
        <input type="password" placeholder="Enter your Password" id="password" name="password" required />

        <input type="submit" value="Log in" class="submitbutton" />
        <p class="label">Don't have an account? <a href="register.jsp">Register Here</a></p>

    </form>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</html>