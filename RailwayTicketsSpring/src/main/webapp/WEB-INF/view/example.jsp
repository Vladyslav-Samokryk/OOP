
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@ taglib uri="http://java.sun.com/JSP/Page" prefix="jsp" %>--%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <title>Typo Today</title>
    <meta http-equiv="Content-Type" content="application/json; charset=utf-8" />
    <%--<link rel="stylesheet" href="css/stylesheet.css" type="text/css"/>--%>
    <style type="text/css">
        <%@ include file="../css/stylesheet.css"%>
    </style>
</head>
<body>
<!--HEADER-->
<div id="header">
    <div id="logo">
        <h1><a href="#">Railway Tickets Booking</a></h1>
        <p><span class="slogan">index page</span></p>
    </div>
    <div id="nav-bar">
        <ul id="nav1">
            <li><a href="#">Home</a></li>
            <li><a href="#">Portfolio</a></li>
            <li><a href="#">Blog</a></li>
            <li><a href="#">About</a></li>
            <c:choose>
                <c:when test="${currentUser.id == 0}">
                    <li><a href="<c:url value="/login"/>">Log in</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="<c:url value="/logout"/>">Log out</a></li>
                </c:otherwise>

            </c:choose>
            <li><a href="#">Contact</a></li>
        </ul>
        <div id="nav2">
            <form action="#" method="post" id="search-form">
                <p>
                    <input name="" type="text" value="Search..." size="20" class="search-field" />
                    <input type="submit" value="Go!" name="Submit" class="search-button" />
                </p>
            </form>
            <p class="rss"><a href="#">Subscribe</a></p>
        </div>
    </div>
</div>
<!--HEADER END-->
<!--CONTENT-->
<div id="content">
    <!--MAIN-CONTENT-->
    <div id="main-content">
        <!--CONTENT 1 END-->
        <div id="content-1">
            <div class="featured">
                <h2><a href="#">Keeping Photography In Perspective When Traveling</a></h2>
                <img class="featured-img" src="img/featured-img.png" alt="" />

                <
                
                <p><c:out value="${currentUser}"/></p>
                
                
                <p>Proin feugiat aliquam tortor, id hendrerit urna semper pulvinar. Nullam iaculis aliquam risus, nec tempus quam condimentum ut. Proin nibh nisl, imperdiet non dictum quis, sodales quis risus. Donec condimentum gravida rhoncus. Proin sollicitudin mi eget felis congue sed adipiscing tellus vulputate. Cras suscipit aliquam sapien, non pretium turpis ullamcorper vitae. Aenean vitae libero velit, nec malesuada diam. </p>
                <p>Proin feugiat aliquam tortor, id hendrerit urna semper pulvinar. Nullam iaculis aliquam risus, nec tempus quam condimentum ut. Proin nibh nisl, imperdiet non dictum quis, sodales quis risus. Donec condimentum gravida rhoncus. Proin sollicitudin mi eget felis congue sed adipiscing tellus vulputate. Cras suscipit aliquam sapien, non pretium turpis ullamcorper vitae. Aenean vitae libero velit, nec malesuada diam. Curabitur imperdiet porta sapien, sed luctus sapien sollicitudin at. Cras quis risus eget sapien cursus pulvinar. Aliquam vel nunc in arcu sagittis semper. Suspendisse aliquam sapien ac enim tristique fermentum. Donec luctus magna eget mauris eleifend accumsan auctor justo luctus. Aenean in est ac tellus sagittis rutrum. In id hendrerit ipsum. Nam sit amet libero odio. Suspendisse tincidunt dui nec diam malesuada eu aliquam purus sagittis. <span class="more"><a href="#">Read more</a></span></p>
                <div class="featured-meta">
                    <p> <span class="post-date">06/29/09</span> | <span class="comments"><a href="#">5 Comments</a></span> </p>
                </div>
            </div>
            <div class="odd-post">
                <div class="post-header">
                    <h3><a href="#">9 Tips for Getting Background Right</a></h3>
                    <span class="category"><a href="#">Photography Tips</a></span> </div>
                <p>Proin feugiat aliquam tortor, id hendrerit urna semper pulvinar. Nullam iaculis aliquam risus, nec tempus quam condimentum ut. Proin nibh nisl, imperdiet non dictum quis, sodales quis risus. Donec condimentum gravida rhoncus. Proin sollicitudin mi eget felis congue sed adipiscing tellus vulputate. Cras suscipit aliquam sapien, non pretium turpis ullamcorper vitae. Aenean vitae libero velit, nec malesuada diam. Curabitur imperdiet porta sapien, sed luctus sapien sollicitudin at. <span class="more"><a href="#">Read more</a></span></p>
                <div class="post-meta">
                    <p> <span class="post-date">06/19/09</span> | <span class="comments"><a href="#">7 Comments</a></span></p>
                </div>
            </div>
            <div class="even-post">
                <div class="post-header">
                    <h3><a href="#">Introduction to Metering Modes</a></h3>
                    <span class="category"><a href="#">Cameras &amp; equipments</a></span> </div>
                <p>Proin feugiat aliquam tortor, id hendrerit urna semper pulvinar. Nullam iaculis aliquam risus, nec tempus quam condimentum ut. Proin nibh nisl, imperdiet non dictum quis, sodales quis risus. Donec condimentum gravida rhoncus. Proin sollicitudin mi eget felis congue sed adipiscing tellus vulputate. Cras suscipit aliquam sapien, non pretium turpis ullamcorper vitae. Aenean vitae libero velit, nec malesuada diam. <span class="more"><a href="#">Read more</a></span></p>
                <div class="post-meta">
                    <p> <span class="post-date">06/12/09</span> | <span class="comments"><a href="#">10 Comments</a></span> </p>
                </div>
            </div>
            <div class="clear"></div>
            <div class="odd-post">
                <div class="post-header">
                    <h3><a href="#">1 Focal Length Photogaphy Challenge:</a></h3>
                    <span class="category"><a href="#">Assignments</a></span> </div>
                <p>Proin feugiat aliquam tortor, id hendrerit urna semper pulvinar. Nullam iaculis aliquam risus, nec tempus quam condimentum ut. Proin nibh nisl, imperdiet non dictum quis, sodales quis risus. Donec condimentum gravida rhoncus. Proin sollicitudin mi eget felis congue sed adipiscing tellus vulputate. Cras suscipit aliquam sapien, non pretium turpis ullamcorper vitae. Aenean vitae libero velit, nec malesuada diam. Curabitur imperdiet porta sapien, sed luctus sapien sollicitudin at. Cras quis risus eget sapien cursus pulvinar. <span class="more"><a href="#">Read more</a></span></p>
                <div class="post-meta">
                    <p> <span class="post-date">06/05/09</span> | <span class="comments"><a href="#">11 Comments</a></span> </p>
                </div>
            </div>
            <div class="even-post">
                <div class="post-header">
                    <h3><a href="#">Smart Dodge and Burn in Photoshop Elements</a></h3>
                    <span class="category"><a href="#">Post Production</a></span> </div>
                <p>Proin feugiat aliquam tortor, id hendrerit urna semper pulvinar. Nullam iaculis aliquam risus, nec tempus quam condimentum ut. Proin nibh nisl, imperdiet non dictum quis, sodales quis risus. Donec condimentum gravida rhoncus. Proin sollicitudin mi eget felis congue sed adipiscing tellus vulputate. Cras suscipit aliquam sapien, non pretium turpis ullamcorper vitae. Aenean vitae libero velit, nec malesuada diam. Curabitur imperdiet porta sapien, sed luctus sapien sollicitudin at. Cras quis risus eget sapien cursus pulvinar. Aliquam vel nunc in arcu sagittis semper. Suspendisse aliquam sapien ac enim tristique fermentum. <span class="more"><a href="#">Read more</a></span> </p>
                <div class="post-meta">
                    <p> <span class="post-date">05/25/09</span> | <span class="comments"><a href="#">24 Comments</a></span> </p>
                </div>
            </div>
        </div>
        <!--CONTENT 1 END-->
        <!--SIDEBAR-->
        <div id="sidebar">
            <h4>Category</h4>
            <ul class="category">
                <li><a href="#">Assignments</a></li>
                <li><a href="#">Cameras &amp; equipments</a></li>
                <li><a href="#">Photography Tips</a></li>
                <li><a href="#">Post Production</a></li>
                <li><a href="#">Tutorials</a></li>
            </ul>
            <h4>Popular Posts</h4>
            <ul class="popular-posts">
                <li><a href="#">DIY - How to Make a Light Tent.</a></li>
                <li><a href="#">Where is Your Subject Looking and Why Does it Matter.</a></li>
                <li><a href="#">Black and White Digital Photography - In Camera or Post Production?</a></li>
                <li><a href="#">How to Photograph People When Traveling.</a></li>
                <li><a href="#">4 Easy Photoshop Techniques to Make Your Pictures Pop!</a></li>
                <li><a href="#">Which Post Production Software do you use?</a></li>
            </ul>
            <h4>About Me</h4>
            <p class="about-me"> Salesman by day... Photographer the rest of the time. Cras suscipit aliquam sapien, non pretium turpis ullamcorper vitae. </p>
            <h4>Find me on :</h4>
            <ul class="social-links">
                <li><a href="#">Facebook</a></li>
                <li><a href="#">Twitter</a></li>
                <li><a href="#">Linkedin</a></li>
                <li><a href="#">Flickr</a></li>
            </ul>
            <h4>Twitter Updates</h4>
            <ul class="twitter-updates">
                <li>See TIME's pictures of the week <a href="#">http://su.pr/94vXfr</a><br />
                    <span class="twitter-date">about 5 minutes ago</span></li>
                <li>10 High-Quality Free Brown Paper Textures - <a href="#">http://tr.im/p8Ys</a><br />
                    <span class="twitter-date">about 10 minutes ago</span></li>
                <li>Which Wordpress Code Highlighter? <a href="#">http://bit.ly/u4Dra</a><br />
                    <span class="twitter-date">about 50 minutes ago</span></li>
                <li>Something different for Friday afternoon<br />
                    <span class="twitter-date">about 2 hours ago</span></li>
            </ul>
        </div>
        <!--SIDEBAR END-->
    </div>
    <!--MAIN CONTENT END-->
    <!--FOOTER-->
    <div id="footer">
        <div id="footer-content">
        </div>
    </div>
    <!--FOOTER END-->
</div>
<!--CONTENT END-->
<!--CUFON-->
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/Gentium_Basic.font.js"></script>
<script type="text/javascript" src="js/Bambi_Bold_400.font.js"></script>
<script type="text/javascript">
    Cufon.replace('h1',{ fontFamily: 'Bambi Bold' });
    Cufon.replace('h2',{ fontFamily: 'Gentium Basic' });
    Cufon.replace('h3',{ fontFamily: 'Gentium Basic' });
</script>
<script type="text/javascript"> Cufon.now(); </script>

</body>
</html>
