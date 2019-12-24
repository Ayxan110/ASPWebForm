<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PortfolioForm.aspx.cs" Inherits="PortfolioWebFormV2._0.PortfolioForm" %>
<%@ Import Namespace="PortfolioWebFormV20.Models"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/92d6f9ab3e.js" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <header class="hd-part container-fluid">
        <div class="row">
            <div class="col-sm-12 col-md-6 col-lg-6 hd-logo">
                <img src="/image/Logo.png" alt="logo">
            </div>
            <nav class="col-sm-12 col-md-6 col-lg-6 hd-nav">
                <ul>
                    <li><a href="#">HOME</a></li>
                    <li><a href="#">SERVICE</a></li>
                    <li><a href="#">ABOUT</a></li>
                    <li><a href="#">PROJECTS</a></li>
                    <li><a href="#">CONTACT</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <main class="content">
        <div class="introduction container">
            <div class="row">
                <div class="intro-wrt col-sm-12 col-md-6 col-lg-6">
                    <div>
                        <h1>Hi I'm <span runat="server" id="introName"></span></h1>
                        <p runat="server" id="level"></p>
                    </div>
                    <div>
                        <p runat="server" id="introDescription"></p>
                        <button class="btn btn-default">Let me talk</button>
                    </div>
                </div>
                <div class="intro-photo col-sm-12 col-md-6 col-lg-6">
                    <img runat="server" id="introImg" src="" alt="photo" style="width:100%;" />
                </div>
            </div>
        </div>
    </main>
    <section class="service container">
        <div class="text-center">
            <h2>Have a Look at my Services</h2>
        </div>
        <div class="row">
            <%
                using (MyDbContext db = new MyDbContext())
                {

                }
                %>
            <div class="service-elem col-md-6">
                <div>
                    <i class="fas fa-desktop"></i>
                </div c>
                <div>
                    <h5>Web Design</h5>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio amet possimus soluta facilis
                        mollitia suscipit rerum eos! Ipsam aliquam perferendis explicabo enim itaque nihil id! Harum
                        voluptatibus repellat sequi? Quo.</p>
                </div>
            </div>
        </div>
    </section>
    <section class="about container-fluid">
        <div class="text-center">
            <h2>About Myself</h2>
        </div>
        <div class="row">
            <div class="about-percentage col-md-6">
                <div class="perc-wrt">
                    <p>It won’t be a bigger problem to find one video game lover in your neighbor. Since the
                        introduction of Virtual Game, it has been achieving great heights so far as its popularity and
                        technological advancement are concerned. The history of video game is as interesting as a fairy
                        tale.</p>
                    <h3>Tools Expertness</h3>
                </div>
                <div class="perc-per">
                    <div class="skill-bar">
                        <div class="text-right">
                            <p>After Effects 85%</p>
                        </div>
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
                                aria-valuemax="100" style="width:85%">
                            </div>
                        </div>
                    </div>
                    <div class="skill-bar">
                        <div class="text-right">
                            <p>After Effects 85%</p>
                        </div>
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
                                aria-valuemax="100" style="width:85%">
                            </div>
                        </div>
                    </div>
                    <div class="skill-bar">
                        <div class="text-right">
                            <p>After Effects 85%</p>
                        </div>
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
                                aria-valuemax="100" style="width:85%">
                            </div>
                        </div>
                    </div>
                    <div class="skill-bar">
                        <div class="text-right">
                            <p>After Effects 85%</p>
                        </div>
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
                                aria-valuemax="100" style="width:85%">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="about-info col-md-6">
                <div class="text-center">
                    <img src="Logo.png" alt="">
                </div>
                <div class="text-center">
                    <div>
                        <p id="ab-name">Aykhan Dadashov</p>
                        <p>Web Developer</p>
                    </div>
                    <div>
                        <p>0545454545</p>
                        <p>342342423424</p>
                    </div>
                    <button class="btn btn-default">HIRE ME</button>
                </div>
            </div>
        </div>
    </section>
    <section class="container-fluid project">
        <div class="text-center">
            <h2>Latest Done Projects</h2>
        </div>
        <div class="row">
            <div class="pro-el col-md-4">
                <div>
                    <img src="as.jpg" alt="" style="width: 100%;">
                </div>
                <div>
                    <p>Title</p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos qui minus cupiditate! Sint
                        quam labore excepturi architecto nobis, facere magnam inventore placeat hic, eaque, culpa
                        ducimus repellendus ex alias officiis?</p>
                    <div class="text-center"><button class="btn btn-default">Read More</button></div>  
                </div>
            </div>
        </div>
    </section>
    <section class="container message">
        <div class="text-center">
            <h2>If you need, Just drop us a line</h2>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <input placeholder="Enter your name" class="form-control" type="text">
                </div>
                <div class="form-group">
                    <input placeholder="Enter email address" class="form-control" type="text">
                </div>
                <div class="form-group">
                    <input placeholder="Enter your subject" class="form-control" type="text">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <textarea class="form-control" cols="30" rows="6"></textarea>
                </div>
                <button class="btn btn-default">Send Message -></button>
            </div>
        </div>
    </section>
    <footer class="ft-part">
        <div class="row">
            <div class="col-md-3">
                <h3>My Address</h3>
                <p>203 Fake St. Mountain View,
                    San Francisco, California, USA</p>
            </div>
            <div class="col-md-2">
                <h3>Services</h3>
                <ul>
                    <li>Web App</li>
                    <li>Graphic</li>
                    <li>Branding</li>
                </ul>
            </div>
            <div class="col-md-2">
                <h3>Resources</h3>
                <ul>
                    <li>Web App</li>
                    <li>Graphic</li>
                    <li>Branding</li>
                </ul>
            </div>
            <div class="col-md-2">
                <h3>Link</h3>
                <ul>
                    <li>Web App</li>
                    <li>Graphic</li>
                    <li>Branding</li>
                </ul>
            </div>
            <div class="col-md-3">
                <h3>Follow me</h3>
                <ul>
                    <li><i class="fab fa-twitter"></i></li>
                    <li><i class="fab fa-facebook"></i></li>
                    <li><i class="fab fa-instagram"></i></li>
                </ul>
            </div>
        </div>
    </footer>
        
    </form>
</body>
</html>
