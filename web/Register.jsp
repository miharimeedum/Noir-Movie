<!--
    Document   : Register
    Created on : Dec 12, 2024, 00:10:56 AM
    Author     : miharimeedum
-->

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Noir-Movie | Register</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="css/main.css">
</head>

<body>
    <form>
        <h3 class="title">Customer Register</h3>

        <label for="firstname" class="label">First Name</label>
        <input type="text" placeholder="Enter your first name" id="firstname" name="firstname" required />

        <label for="lastname" class="label">Last Name</label>
        <input type="text" placeholder="Enter your last name" id="lastname" name="lastname" required />

        <label for="email" class="label">Email</label>
        <input type="email" placeholder="Enter your email" id="email" name="email" required />

        <label for="contact" class="label">password</label>
        <input type="text" placeholder="Enter your contact number" id="contact" name="contact" required />

        <label for="username" class="label">Username</label>
        <input type="text" placeholder="Enter your username" id="username" name="username" required />

        <label for="password" class="label">Password</label>
        <input type="password" placeholder="Enter your Password" id="password" name="password" required />

        <label for="repassword" class="label">Re Type Password</label>
        <input type="text" placeholder="Re type password" id="repassword" name="repassword" required />

        <input type="submit" value="Register" class="submitbutton" />
    </form>
</body>

</html