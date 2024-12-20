<%-- 
    Document   : index
    Created on : Dec 9, 2024, 11:07:47 PM
    Author     : miharimeedum
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <title>Noir-Movie | Home</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/main.css">
    </head>

    <body>
        <div class="row navigation-bar">
            <div class="col-sm-6 logo"><img src="img/logo.png" width="45%" /></div>
            <div class="col-sm-6 nav-bar">
                <ul class="nav justify-content-end">
                    <li class="nav-item">
                        <a class="nav-link" href="booking.html">Movies</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active btn btn-warning" href="#">Buy a Ticket</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="booking.html">Cinema</a>
                    </li>

                    <%
                        // Check if the user is logged in
                        String username = (String) session.getAttribute("username");

                        System.out.println("User Session : " + username);
                        if (username != null) {
                    %>

                    <li class="nav-item">
                        <a class="nav-link" href="booking.html"><i class="fa fa-user"></i> <%=username %></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="booking.html"><i class="fa fa-sign-out"></i></a>
                    </li>
                    <%
                    } else {
                    %>
                    <li class="nav-item">
                        <a class="nav-link" href="Login.jsp"><i class="fa fa-sign-in"></i> Login</a>
                    </li>
                    <%
                    }
                    %>
                </ul>
            </div>
        </div>
        <div class="banner" style="background: url(img/banner1.jpeg);
             background-repeat: no-repeat;
             background-position: center;
             background-size: cover;">
            <h1 style="background-color: transparent;">🎬 Your Front-Row Seat to Entertainment Awaits!</h1>
            <p style="background-color: transparent;">Discover the latest blockbusters and timeless classics. Book your
                tickets now and make every movie night unforgettable!</p>
            <a href="booking.html" class="btn btn-warning">Buy a Ticket</a>
            <a href="#" class="btn btn-secondary">More Info</a>
        </div>
        <div class="row movie">
            <hr />
            <div class="col col-md-12">
                <h3>Show Now</h3>
            </div>
            <hr />
            <div class="col col-md-2">
                <img class="card-img-top" src="img/1.png" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">විසල් ආදරේ</h5>
                    <p class="card-text">Delves into love, sacrifice, and emotional struggles in a romantic narrative.</p>
                    <a href="booking.html" class="btn btn-warning">Buy a Ticket</a>
                </div>
            </div>
            <div class="col col-md-2">
                <img class="card-img-top" src="img/2.png" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">The Wolvering</h5>
                    <p class="card-text">A fierce journey of redemption and survival as Logan confronts his past, battles
                        deadly foes, and uncovers his true strength.</p>
                    <a href="booking.html" class="btn btn-warning">Buy a Ticket</a>
                </div>
            </div>
            <div class="col col-md-2">
                <img class="card-img-top" src="img/3.png" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Southernland Tales</h5>
                    <p class="card-text">A surreal, dystopian journey intertwining politics, celebrity culture, and
                        apocalyptic prophecy in a chaotic near-future Los Angeles.</p>
                    <a href="booking.html" class="btn btn-warning">Buy a Ticket</a>
                </div>
            </div>
            <div class="col col-md-2">
                <img class="card-img-top" src="img/4.png" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Bad Leader</h5>
                    <p class="card-text">A darkly comedic tale of a corrupt leader whose selfish decisions spiral into
                        chaos, testing loyalty and exposing hidden truths.</p>
                    <a href="booking.html" class="btn btn-warning">Buy a Ticket</a>
                </div>
            </div>
            <div class="col col-md-2">
                <img class="card-img-top" src="img/5.png" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Jhone Wick 2</h5>
                    <p class="card-text">John Wick returns from retirement, dragged back into the underworld where he must
                        honor a deadly debt, unleashing relentless action.</p>
                    <a href="booking.html" class="btn btn-warning">Buy a Ticket</a>
                </div>
            </div>
            <div class="col col-md-2">
                <img class="card-img-top" src="img/6.png" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Jhone Carter</h5>
                    <p class="card-text">A former soldier is transported to Mars, where he becomes embroiled in a conflict
                        between alien civilizations, discovering his unexpected destiny.</p>
                    <a href="booking.html" class="btn btn-warning">Buy a Ticket</a>
                </div>
            </div>
        </div>
        <div class="row movie">
            <hr />
            <div class="col col-md-12">
                <h3>Up Comming Movies</h3>
            </div>
            <hr />
            <div class="col col-md-2">
                <img class="card-img-top" src="img/7.png" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Mystery of Forest</h5>
                    <p class="card-text">A thrilling adventure unfolds as explorers uncover dark secrets hidden within an
                        ancient, enchanted forest.</p>
                </div>
            </div>
            <div class="col col-md-2">
                <img class="card-img-top" src="img/8.png" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Jungle Cruise</h5>
                    <p class="card-text">An action-packed adventure where a daring captain and a fearless scientist journey
                        through a mystical jungle in search of treasure.</p>
                </div>
            </div>
            <div class="col col-md-2">
                <img class="card-img-top" src="img/9.png" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">මන්දාරා</h5>
                    <p class="card-text">Delves into the complexities of love, desire, and personal freedom, challenging societal norms.</p>
                </div>
            </div>
            <div class="col col-md-2">
                <img class="card-img-top" src="img/10.png" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Alone</h5>
                    <p class="card-text">A gripping survival thriller following a lone protagonist battling nature's fury
                        and inner demons in a desolate, unforgiving wilderness.</p>
                </div>
            </div>
        </div>
        <footer class="footer-section">
            <div class="container">
                <div class="footer-contact-details pt-5 pb-5">
                    <div class="row">
                        <div class="col-xl-4 col-md-4 mb-30">
                            <div class="contact-item">
                                <i class="fas fa-map-marker-alt"></i>
                                <div class="contact-text">
                                    <h4>Find us</h4>
                                    <span>Mahenwaththa, Pitipana, Homagama, Sri Lanka</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-md-4 mb-30">
                            <div class="contact-item">
                                <i class="fas fa-phone"></i>
                                <div class="contact-text">
                                    <h4>Call us</h4>
                                    <span>0777123456</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-md-4 mb-30">
                            <div class="contact-item">
                                <i class="far fa-envelope-open"></i>
                                <div class="contact-text">
                                    <h4>Mail us</h4>
                                    <span>info@cinemtic-noir.lk</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-content pt-5 pb-5">
                    <div class="row">
                        <div class="col-xl-4 col-lg-4 mb-50">
                            <div class="footer-card">
                                <div class="footer-logo">
                                    <a href="index.html"><img src="img/logo.png" class="img-fluid" alt="logo"></a>
                                </div>
                                <div class="footer-test">
                                    <p>© 2024 Cimentic Noir. We are dedicated to transforming your ticket booking experience
                                        with a seamless and user-friendly platform. From the latest blockbuster movies to
                                        local shows, we ensure you can book your tickets with ease, convenience, and
                                        security. Thank you for choosing Cimentic Noir as your trusted ticketing partner.
                                    </p>
                                </div>
                                <div class="social-icon">
                                    <span>Follow us</span>
                                    <a href="#"><i class="fab fa-facebook-f facebook-bg"></i></a>
                                    <a href="#"><i class="fab fa-twitter twitter-bg"></i></a>
                                    <a href="#"><i class="fab fa-google-plus-g google-bg"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 mb-30">
                            <div class="footer-card">
                                <div class="footer-card-title">
                                    <h3>Useful Links</h3>
                                </div>
                                <ul>
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">Buy a Ticket</a></li>
                                    <li><a href="#">Cinemas</a></li>
                                    <li><a href="#">Movies</a></li>
                                    <li><a href="#">Terms and Condition</a></li>
                                    <li><a href="#">Return Policies</a></li>
                                    <li><a href="#">Privacy Policies</a></li>
                                    <li><a href="#">Expert Team</a></li>
                                    <li><a href="#">Contact us</a></li>
                                    <li><a href="#">Latest News</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 mb-50">
                            <div class="footer-card">
                                <div class="footer-card-title">
                                    <h3>Subscribe</h3>
                                </div>
                                <div class="footer-text mb-25">
                                    <p>Stay updated with our latest updates! subscribe now..</p>
                                </div>
                                <div class="subscribe-form">
                                    <form action="#">
                                        <input type="text" placeholder="Email Address">
                                        <button><i class="fab fa-telegram-plane"></i></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/605b6be601.js" crossorigin="anonymous"></script>

</html>
