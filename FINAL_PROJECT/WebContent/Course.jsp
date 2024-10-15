<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
            background: linear-gradient(85deg, rgba(9,121,9,1) 39%, rgba(0,255,158,1) 100%, rgba(1,20,46,1) 100%);
            color: white;
            padding: 1rem;
            text-align: center;
        }
        nav {
            background-color: black;
            overflow: hidden;
        }
        nav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        nav a:hover {
            background-color: #ddd;
            color: black;
        }
        .container {
            padding: 20px;
        }
        .course {
            background-color: white;
            margin: 20px 0;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .course h2 {
            color: #333;
        }
        .course p {
            color: #666;
        }
        .course .fees {
            font-weight: bold;
            color: #333;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 1rem;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>

</head>
<body>
<header>
        <h1>Welcome to Our College</h1>
    </header>
    <nav>
         <a href="Home.jsp">Home</a>
        <a href="Course.jsp">Courses</a>
        <a href="About.jsp">About Us</a>
        <a href="Contact.jsp">Contact Us</a>
    </nav>
    <div class="container">
        <div id="btech-cse" class="course">
            <h2>B.Tech (CSE)</h2>
            <p>Bachelor of Technology in Computer Science and Engineering focuses on computing methods, software engineering, and networking. The curriculum includes programming languages, algorithms, and data structures.</p>
            <p class="fees">Fees: ₹65,000 per semester</p>
        </div>
        <div id="btech-ece" class="course">
            <h2>B.Tech (ECE)</h2>
            <p>Bachelor of Technology in Electronics and Communication Engineering covers electronic circuits, communication systems, and signal processing. It blends theoretical knowledge with practical application in electronics and communications.</p>
            <p class="fees">Fees: ₹66,000 per semester</p>
        </div>
        <div id="btech-biotech" class="course">
            <h2>B.Tech (BioTech)</h2>
            <p>Bachelor of Technology in Biotechnology integrates biology with technology. This course explores genetic engineering, microbiology, and biochemical processes.</p>
            <p class="fees">Fees: ₹64,000 per semester</p>
        </div>
        <div id="btech-mech" class="course">
            <h2>B.Tech (Mechanical)</h2>
            <p>Bachelor of Technology in Mechanical Engineering focuses on the design, analysis, and manufacturing of mechanical systems. It covers thermodynamics, material science, and structural analysis.</p>
            <p class="fees">Fees: ₹67,000 per semester</p>
        </div>
        <div id="mba" class="course">
            <h2>MBA</h2>
            <p>Master of Business Administration offers advanced knowledge in business management, finance, marketing, and human resources. It prepares students for leadership roles in the corporate world.</p>
            <p class="fees">Fees: ₹70,000 per semester</p>
        </div>
        <div id="mca" class="course">
            <h2>MCA</h2>
            <p>Master of Computer Applications provides in-depth knowledge of computer science and its applications. The curriculum includes software development, computer architecture, and database management.</p>
            <p class="fees">Fees: ₹68,000 per semester</p>
        </div>
        <div id="bca" class="course">
            <h2>BCA</h2>
            <p>Bachelor of Computer Applications focuses on computer science and applications. It includes subjects like programming, web development, and software engineering.</p>
            <p class="fees">Fees: ₹60,000 per semester</p>
        </div>
        <div id="llb" class="course">
            <h2>LLB</h2>
            <p>Bachelor of Laws is an undergraduate law course that covers various fields of law including criminal, civil, and corporate law.</p>
            <p class="fees">Fees: ₹62,000 per semester</p>
        </div>
        <div id="ba" class="course">
            <h2>BA</h2>
            <p>Bachelor of Arts offers a wide range of subjects including humanities, social sciences, and languages. It provides a strong foundation for various career paths.</p>
            <p class="fees">Fees: ₹61,000 per semester</p>
        </div>
    </div>
    <footer>
        <p>&copy; 2024 Our College. All rights reserved.</p>
    </footer>

</body>
</html>