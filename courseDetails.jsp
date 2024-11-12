<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Details - MCA IT School</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <img src="images/logo.png" alt="MCA IT School Logo" class="logo">
        <h1>Course Details</h1>
    </header>
    <nav>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="courses.jsp">Courses</a></li>
            <li><a href="mailto:mcaitschool@info">Contact Us</a></li>
        </ul>
    </nav>

    <%
        String course = request.getParameter("course");
        Map<String, String[]> courseDetails = new HashMap<>();
        
        // Sample course data
        courseDetails.put("bscit", new String[]{"BSc IT", "3", "₹50,000 per year", "A foundational course in Information Technology"});
        courseDetails.put("bca", new String[]{"BCA", "3", "₹60,000 per year", "Bachelor of Computer Applications"});
        courseDetails.put("mca", new String[]{"MCA", "2", "₹80,000 per year", "Master of Computer Applications"});
        courseDetails.put("btech", new String[]{"BTech", "4", "₹70,000 per year", "Bachelor of Technology in Computer Science"});
        courseDetails.put("mtech", new String[]{"MTech", "2", "₹90,000 per year", "Master of Technology in Computer Science"});

        String[] details = courseDetails.get(course);
    %>

    <section class="course-details">
        <h2><%= details[0] %></h2>
        <p><strong>Duration:</strong> <%= details[1] %> years</p>
        <p><strong>Fee:</strong> <%= details[2] %></p>
        <p><strong>Description:</strong> <%= details[3] %></p>
    </section>

    <footer>
        <p>&copy; 2024 MCA IT School | Pitampura, Delhi</p>
    </footer>
</body>
</html>

