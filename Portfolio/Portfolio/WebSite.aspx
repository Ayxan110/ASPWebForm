<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebSite.aspx.cs" Inherits="Portfolio.WebSite" %>
<%@ Import Namespace="Portfolio.Models" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/style.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/92d6f9ab3e.js" crossorigin="anonymous"></script>
</head>
    <header class="hd-part container-fluid">
        <div class="hd-1 row">
            <div class="hd-logo col-md-3">
                <div>
                    <img src="/img/logo.png" alt="logo" />
                </div>
            </div>
            <nav class="col-md-6 hd-nav">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">My Work</a></li>
                    <li><a href="#">Contacts</a></li>
                </ul>
            </nav>
            <div class="col-md-3 hd-contact">
                <div>
                    <div class="hd-ico">
                        <span><i class="fab fa-facebook"></i></span>
                        <span><i class="fab fa-twitter"></i></span>
                        <span><i class="fab fa-instagram"></i></span>
                    </div>
                    <div>
                        <button class="btn btn-default">Sign in/Join in</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="hd-2 row">
            <div class="a col-md-6">
                <div class="b">
                    <h1>I make beautiful websites for all people.</h1>
                </div>
                <div>
                    <button class="btn btn-default">Start a project</button>
                    <span>CALL ME <span runat="server" id="introPhone"></span>
                        For any inquiry</span>
                </div>

            </div>
            <div class="col-md-6">
                <iframe width="100%;" height="315" src="https://www.youtube.com/embed/9uCFyLbC_Lk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                    ></iframe>
            </div>
        </div>
    </header>
<body>
    <section class="container introduction">
        <div class="row">
            <div class="intro-about col-md-6">
                <h2 runat="server" id="introTitle"></h2>
                <p runat="server" id="introDesc">.</p>
            </div>
            <div class="intro-percentage col-md-3">
                <div class="intro-pc-part">
                    <div class="d-flex justify-content-between">
                        <span>Web Design</span>
                        <span>85%</span>
                    </div>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" style="width: 85%" aria-valuenow="25"
                            aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
                <div class="intro-pc-part">
                    <div class="d-flex justify-content-between">
                        <span>Photography</span>
                        <span>90%</span>
                    </div>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" style="width: 90%" aria-valuenow="25"
                            aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
                <div class="intro-pc-part">
                    <div class="d-flex justify-content-between">
                        <span>Content Marketing</span>
                        <span>75%</span>
                    </div>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" style="width: 75%" aria-valuenow="25"
                            aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
                <div class="intro-pc-part">
                    <div class="d-flex justify-content-between">
                        <span>CMS Admin</span>
                        <span>70%</span>
                    </div>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" style="width: 70%" aria-valuenow="25"
                            aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
            </div>
            <div class="intro-photo col-md-3">
                <img runat="server" id="introImg" src="" alt="photo" style="width: 100%;"/>
            </div>
        </div>
    </section>
    <section class="blog container-fluid">
        <div class="text-center">
            <h2>My Blog</h2>
        </div>
        <div class="row" style="width: 80%; margin: auto">
            <%
                using (MyDbContext db = new MyDbContext())
                {
                    foreach (var item in db.Blogs)
                    {
                        Response.Write("<div class='blog-el col-md-6 d-flex'>" +
                "<div class='blog-img' style='width: 45%;'>" +
                    $"<img src='/img/{item.ImageName}' style='width: 100%;height: 100%;' alt='photo'>" +
                "</div>" +
                "<div style='width: 54%;'>" +
                    "<div class='text-left'>" +
                        $"<i class='{item.IconName}'></i>" +
                        $"<span>{item.Date}</span>" +
                    "</div>" +
                    $"<a href='#'>{item.Title}</a>" +
                    $"<p>{item.Description}</p>" +
                    "<button class='btn btn-default'>Read article</button>" +
                "</div>" +
            "</div>");
                    }
                }
                %>
        </div>
    </section>
    <section class="work container">
        <div class="text-center">
            <h2>My Work</h2>
        </div>
        <div class="row">
            <%
                using (MyDbContext db = new MyDbContext())
                {
                    foreach (var item in db.Works)
                    {
                        Response.Write("<div class='col-md-3'>"+
                        "<div class='container'>"+
                        $"<img src='/img/{item.ImageName}' alt='Avatar' "+
                        "class='image' style='width: 100%;'>"+
                        "<div class='overlayy'>"+
                        "<div class='text'>"+
                        $"<p>{item.Title}</p>"+
                        "</div>"+
                        "</div>"+
                        "</div>"+
                        "</div>");
                    }
                }           
            %>
        </div>
    </section>
    <section class="contact container-fluid">
        <div class="text-center">
            <
                h2>Contact Me</h2>
        </div>
        <div class="contact-in container">
            <div class="row">
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-6 form-group"><input placeholder="Full Name" class="form-control" type="text"></div>
                        <div class="col-md-6 form-group"><input placeholder="Full Surname" class="form-control" type="text"></div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group"><input placeholder="Your Email" class="form-control" type="text"></div>
                        <div class="col-md-6 form-group"><input placeholder="Your Phone" class="form-control" type="text"></div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 form-group"><textarea class="form-control" placeholder="Your Requirements"
                                name="" id="" cols="60" rows="10"></textarea></div>
                        <button class="btn btn-default">Send Message</button>
                    </div>
                </div>
                <div class="col-md-4">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3039.4284901456604!2d49.85175681523054!3d40.377194965967284!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40307d079efb5163%3A0xc20aa51a5f0b5e01!2sCode%20Academy!5e0!3m2!1sen!2s!4v1577012556870!5m2!1sen!2s"
                        width="100%" height="350" frameborder="0" style="border-radius: 14em;"></iframe>
                </div>
            </div>
        </div>
    </section>
    <footer class="ft container-fluid">
        <div class="row" style="width: 80%; margin: auto;">
            <div class="col-md-5">
                <h2>Hydro Company</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore
                    et dolore magna aliqua.</p>
            </div>
            <div class="col-md-2">
                <h2>Company</h2>
                <ul style="padding: 0;">
                    <li>About Us</li>
                    <li>Join our team</li>
                    <li>Read Blog</li>
                    <li>Press</li>
                </ul>
            </div>
            <div class="col-md-2">
                <h2>Services</h2>
                <ul style="padding: 0;">
                    <li>Pricings</li>
                    <li>Documentation</li>
                    <li>Support</li>
                </ul>
            </div>
            <div class="col-md-3">
                <h2>Find me</h2>
                <ul style="padding: 0;">
                    <li>123 Grand Rama IX,
                        Krung Thep Maha Nakhon 10400</li>
                </ul>
            </div>
        </div>
    </footer>
</body>
</html>
