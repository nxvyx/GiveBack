

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.DBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Admin Media</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="../fontawesome-free-5.12.1-web/css/all.css" />
    <!-- CSS Files -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../assets/css/light-bootstrap-dashboard.css" rel="stylesheet" />
</head>
<style>
    .tttt {
        display: block;
    }
    
    img#medea {
        max-width: 180px;
        height: auto;
    }
    
    input[type=file] {
        padding: 10px;
        background: rgb(90, 90, 90);
        color: #ffffff;
    }
    
    input,
    select {
        margin: 10px;
    }
    
    input[type=text],
    input[type='date'],
    select,
    input[type=month],
    input[type=number] {
        background-color: transparent;
        /* Remove background fill */
        border-radius: 0;
        /* Remove corner curve */
        border: 2px solid #ccc;
        /* 2px white border */
        color: black;
        /* White text */
        height: 45px;
        width: 100%;
    }
    
    input[type='submit'] {
        -moz-box-shadow: inset -3px -3px 10px #cc870a;
        -webkit-box-shadow: inset -3px -3px 10px #cc870a;
        box-shadow: inset -3px -3px 10px #cc870a;
        background-color: #f7b31c;
        /* Fill color */
        color: white;
        /* Text color */
        border-radius: 15px;
        /* Rounded button edges */
        font-style: italic;
        /* Italicize text */
        padding: 10px 30px;
        cursor: pointer;
    }
    
    img[src=''] {
        display: none;
    }
</style>

<body>
    <%
            String username=(String)session.getAttribute("username");
            if(username==null)
            {
                response.sendRedirect("/minorProject/index.html");
            }
        %>
    <div class="wrapper">
        <div class="sidebar" data-image="../assets/img/sidebar-5.jpg">

            <div class="sidebar-wrapper">
                <div class="logo">
                     <%
                                try{
                                Statement st=DBConnector.getStatement();
                                String query="SELECT role FROM userinfo where username='"+username+"'";
                                ResultSet rs=st.executeQuery(query);
                                
                                while(rs.next()){
                            %>
                    <a href="" class="simple-text">
                        <%=rs.getString("role")%>
                    </a>
                     <%}
                            }
                                catch(Exception e){
                                    
                                }
                            %>
                </div>
                <ul class="nav active-pro">
                    <li class="nav-item">
                        <a class="nav-link" href="dashboard.jsp">
                            <i class="fas fa-home"></i>
                            <p>Home</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./user.jsp">
                            <i class="far fa-user-circle"></i>
                            <p>User Profile</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./ourPeoples.jsp">
                            <i class="fas fa-table"></i>
                            <p>Our Peoples</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./partners.jsp">
                            <i class="fas fa-project-diagram"></i>
                            <p>Our Partners</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./happen.jsp">
                            <i class="fas fa-atom"></i>
                            <p>Happening</p>
                        </a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="./media.jsp">
                            <i class="far fa-newspaper"></i>
                            <p>Media Centre</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./resource.jsp">
                            <i class="fas fa-pager"></i>
                            <p>Resource Centre</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./campaign.jsp">
                            <i class="fas fa-map-signs"></i>
                            <p>Campaign</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./donation.jsp">
                            <i class="fas fa-donate"></i>
                            <p>Donation</p>
                        </a>
                    </li>
                    <li class="nav-item d-lg-none">
                        <a class="nav-link" href="/minorProject/logout.jsp">
                            <i class="fas fa-sign-out-alt"></i>
                            <p>LogOut</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="main-panel">
            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg " color-on-scroll="500">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"> Media Centre </a>
                    <button href="" onclick="toggleSidebar(this);" class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-bar burger-lines"></span>
                        <span class="navbar-toggler-bar burger-lines"></span>
                        <span class="navbar-toggler-bar burger-lines"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-end" id="navigation">
                        <ul class="nav navbar-nav mr-auto">
                            <li class="nav-item">
                                <a href="#" class="nav-link" data-toggle="dropdown">
                                    <span class="d-lg-none">Media Centre</span>
                                </a>
                            </li>
                            <!--  <li class="dropdown nav-item">
                                <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                                    <i class="nc-icon nc-planet"></i>
                                    <span class="notification">5</span>
                                    <span class="d-lg-none">Notification</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <a class="dropdown-item" href="#">Notification 1</a>
                                    <a class="dropdown-item" href="#">Notification 2</a>
                                    <a class="dropdown-item" href="#">Notification 3</a>
                                    <a class="dropdown-item" href="#">Notification 4</a>
                                    <a class="dropdown-item" href="#">Another notification</a>
                                </ul>
                            </li>-->
                            <!--  <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="nc-icon nc-zoom-split"></i>
                                    <span class="d-lg-block">&nbsp;Search</span>
                                </a>
                            </li>-->
                        </ul>
                        <ul class="navbar-nav ml-auto">
                            <!--   <li class="nav-item">
                                <a class="nav-link" href="#pablo">
                                    <span class="no-icon">Account</span>
                                </a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="no-icon">Dropdown</span>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <a class="dropdown-item" href="#">Action</a>
                                    <a class="dropdown-item" href="#">Another action</a>
                                    <a class="dropdown-item" href="#">Something</a>
                                    <a class="dropdown-item" href="#">Something else here</a>
                                    <div class="divider"></div>
                                    <a class="dropdown-item" href="#">Separated link</a>
                                </div>
                            </li>-->
                            <li class="nav-item">
                                <a class="nav-link" href="/minorProject/logout.jsp">
                                    <button class="no-icon btn-secondary">Log out <i class="fas fa-sign-out-alt"></i></button>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- End Navbar -->
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div style="background: #ffffff;padding: 20px;text-align: center;">
                                <h3 style="text-align: center;font-weight: bold;color: rgb(255, 115, 1);">Upload New Media News Info</h3>
                                <table>
                                    <form action="/minorProject/mediaChecker" method="POST">
                                        <tr>
                                            <td><label for="title">Media News Title</label></td>
                                            <td><input type="text" id="title" name="title" placeholder="Media News Title..." maxlength="150" required></td>
                                        </tr>
                                        <tr>
                                            <td><label for="description">Media News Description</label></td>
                                            <td><input type="text" name="description" id="description" placeholder="Media News Description..." maxlength="2000" required></td>
                                        </tr>
                                        <tr>
                                            <td><label for="news_cat">Media News Type</label></td>
                                            <td><select name="type" id="news_cat" required>
                                                <option value="">News Category</option>
                                                <option value="National" >National</option>
                                                <option value="Political" >Political</option>
                                                <option value="International" >International</option>
                                                <option value="Development" >Development</option>
                                                <option value="Global" >Global</option> 
                                            </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><label for="start">Media News Date</label></td>
                                            <td><input type="date" id="start" name="dop" required></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td><input type="submit" value="Upload Media News Info"></td>
                                        </tr>
                                    </form>
                                </table>
                            </div><br/>
                            <div style="background: #ffffff;padding: 20px;text-align: center;">
                                <h3 style="text-align: center;font-weight: bold;color: orange;">Upload New Image for Image Gallery</h3>
                                <table>
                                    <form action="/minorProject/imgGalleryChecker" method="POST" enctype="multipart/form-data">
                                        <tr>
                                            <td><label for="imgCause">Upload for Image Gallery</label></td>
                                            <td><input type='file' id="imgCause" name="imgGallery" onchange="readImgG(this);" accept="image/*" required/></td>
                                        </tr>
                                        <tr>
                                            <td><label for="imgCause">Activty Name for this Image</label></td>
                                            <td><input type='text' id="imgCause" name="eName" required/></td>
                                        </tr>
                                        <tr>
                                            <td><img id="medea" src="" alt="your image" /></td>
                                            <td><input type="submit" value="Upload Image"></td>
                                        </tr>
                                    </form>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="footer">
                <div class="container-fluid">
                    <nav>
                        <ul class="footer-menu">
                            <li>
                                <a href="..\..\Project1\index.html">
                                    Home
                                </a>
                            </li>
                            <li>
                                <a href="..\..\Project1\ourWork.html">
                                    Our Work
                                </a>
                            </li>
                            <li>
                                <a href="..\..\Project1\ourCampaign\ourCampaign.html">
                                    Our Campaign
                                </a>
                            </li>
                            <li>
                                <a href="..\..\Project1\donate.html">
                                    Donate
                                </a>
                            </li>
                        </ul>
                        <p class="copyright text-center">
                            ©
                            <script>
                                document.write(new Date().getFullYear())
                            </script>
                            <a href="#">Our NGO</a>, a NGO Project
                        </p>
                    </nav>
                </div>
            </footer>
        </div>
    </div>
    <script>
        // var a = document.getElementsByClassName(".sidebar");
        function toggleSidebar(e) {
            var a = document.querySelector(".sidebar").classList.toggle("tttt");
            // a.style.display = "block";
            //a.style.left = "-25px";

        }

        function readImgG(event) {
            var reader = new FileReader();
            reader.onload = function() {
                var output = document.getElementById('medea');
                output.src = reader.result;
            };
            reader.readAsDataURL(event.files[0]);
            // document.getElementById("medea").style.display = "inline-block";
        };
    </script>
</body>


</html>