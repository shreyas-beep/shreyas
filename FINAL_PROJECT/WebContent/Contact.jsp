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
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        header {
           background: linear-gradient(85deg, rgba(9,121,9,1) 39%, rgba(0,255,158,1) 100%, rgba(1,20,46,1) 100%);
            color: white;
            padding: 1rem;
            text-align: center;
        }
        nav {
            background-color: #333;
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
            flex: 1;
            padding: 20px;
        }
        .contact-form {
            background-color: white;
            margin: 20px 0;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .contact-form h2 {
            color: #333;
        }
        .contact-form label {
            display: block;
            margin: 10px 0 5px;
        }
        .contact-form input, .contact-form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .contact-form button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .contact-form button:hover {
            background-color: #45a049;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 1rem;
            position: relative;
            width: 100%;
            bottom: 0;
        }
        @media (max-width: 600px) {
            nav a {
                float: none;
                width: 100%;
                text-align: left;
                padding: 10px;
            }
        }
    </style>

</head>
<body>
<header>
        <h1>Contact Us</h1>
    </header>
    <nav>
         <a href="Home.jsp">Home</a>
        <a href="Course.jsp">Courses</a>
        <a href="About.jsp">About Us</a>
        <a href="Contact.jsp">Contact Us</a>
    </nav>
    <div class="container">
        <div class="contact-form">
            <h2>Get in Touch</h2>
            <form action="ContactServlet" method="post">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>

                <label for="message">Message</label>
                <textarea id="message" name="message" rows="6" required></textarea>

                <button type="submit">Submit</button>
            </form>
        </div>
    </div>
    <footer>
        <p>&copy; 2024 Our College. All rights reserved.</p>
    </footer>

</body>
</html>