<%-- 
    Document   : index
    Created on : Dec 9, 2024, 11:07:47 PM
    Author     : miharimeedum
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="css/styles.css">
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body style="background: url(img/bg.jpeg);
          background-repeat: no-repeat;
          background-size: cover;
          height: 100vh;
          background-position: center;">
        <header>
            <input type ="checkbox" name ="" id ="chk1">
            <div class="logo"><h1>Web Master</h1></div>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Product</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">Contact</a></li>
                <li>
                    <a href="#" onclick="document.getElementById('form1').style.display = 'block'">Sign In</a>
                    <a href="#" onclick="document.getElementById('form2').style.display = 'block'">Register</a>
                </li>
            </ul>
        </header>


        <div id="form1" class="modal" >
            <div class="modal-content">
                <div class="imgcontainer">
                    <img src="img/rb_174669.png" alt="Avatar" class="avatar">
                </div>

                <div class="container">
                    <form action="LoginServlet" method="post">
                        <label for="uname1"><b>Username</b></label>
                        <input type="text" placeholder="Enter Username" name="uname1">

                        <label for="psw1"><b>Password</b></label>
                        <input type="password" placeholder="Enter Password" name="psw1">

                        <button type="submit">Login</button>
                        <label>
                            <input type="checkbox" checked="checked" name="remember"> Remember me
                        </label>
                    </form>
                </div>
                <div class="container" style="background-color:#000;">
                    <button type="button" onclick="document.getElementById('form1').style.display = 'none'" class="cancelbtn">Cancel</button>
                    <span class="psw">Forgot <a href="#">password?</a></span>
                </div>
            </div>
        </div>

        <div id="form2" class="modal">
            <div class="modal-content">
                <div class="imgcontainer">
                    <img src="img/rb_174669.png" alt="Avatar" class="avatar">
                </div>

                <div class="container">
                    <form action="RegisterServlet" method="post">
                        <div class="row">
                            <div class="col">
                                <label for="fname"><b>First Name</b></label>
                                <input type="text" placeholder="Enter First Name" name="fname" required>
                            </div>

                            <div class="col">
                                <label for="lname"><b>Last Name</b></label>
                                <input type="text" placeholder="Enter Last Name" name="lname" required>
                            </div>
                        </div>

                        <label for="email"><b>Email</b></label>
                        <input type="email" placeholder="Enter Email" name="email" required>

                        <label for="contact"><b>Contact</b></label>
                        <input type="text" placeholder="Enter Contact No" name="contact" required>

                        <label for="uname2"><b>Username</b></label>
                        <input type="text" placeholder="Enter Username" name="uname2" required>

                        <label for="psw2"><b>Password</b></label>
                        <input type="password" placeholder="Enter Password" name="psw2" required>

                        <label for="repsw2"><b>Re Type Password</b></label>
                        <input type="password" placeholder="Enter Password" name="repsw2" required>

                        <button type="submit">Register</button>
                    </form>
                </div>

                <div class="container" style="background-color:#000">
                    <button type="button" onclick="document.getElementById('form2').style.display = 'none'" class="cancelbtn">Cancel</button>
                </div>
            </div>
        </div>
    </body>
    <script>
        var loginModal = document.getElementById('form1');

        window.onclick = function (event) {
            if (event.target == loginModal) {
                loginModal.style.display = "none";
            }
            ;
        };
    </script>
    <script>

        var registerModal = document.getElementById('form2');

        window.onclick = function (event) {
            if (event.target == registerModal) {
                registerModal.style.display = "none";
            }
            ;
        };
    </script>
    <script src="https://example.com/fontawesome/v6.6.0/js/brands.js"></script>
</html>
