<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html lang="en">
    <%  
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//HTTP 1.1
            response.setHeader("Pragma", "no-cache");//HTTP 1.0
            response.setHeader("Expires", "0");//Proxies

            boolean logIn = false;
            if ( session.getAttribute("username") == null) {
                logIn = false;
                response.sendRedirect("index.jsp");
            } else {
                logIn = true;
            }
        %>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="student-profile.css" />
    <link rel="stylesheet" href="header-footer.css" />
    <title>Student Profile</title>
  </head>
  <body>
      <%
                session = request.getSession();
                ArrayList results = (ArrayList) session.getAttribute("Sresultlist");
         %>
    <div id="header">
      <div class="header container sl">
        <div class="nav-bar">
          <div class="brand">
            <a href="#hero">
              <h1>
                My<span>CICS</span> <span>S</span>tudent <span>P</span>ortal
              </h1>
            </a>
          </div>
          <div class="nav-list">
            <div class="hamburger">
              <div class="bar"></div>
            </div>
            <ul>
              <li><a href="LogoutServlet" data-after="Logout">Logout</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <img class="profile-header" src="./img/ust.jpg" />
    <div class="page">
      <div class="profile">
        <div class="left">
          <img class="profile-pic" src="./img/jennie.jpg" />
          <h1><%= results.get(4) %> <%= results.get(3) %></h1>
        </div>
        <div class="right">
            <form action="student-edit.jsp">
                <button class="edit">Edit Profile</button>
            </form>
        </div>
      </div>
      <div class="cards">
        <div class="main-card">
          <div class="card">
            <h3><i class="far fa-clone pr-1"></i>Personal Information</h3>
            <table>
              <tr>
                <th>Student Number</th>
                <td>:</td>
                <td><%= results.get(1) %></td>
              </tr>
              <tr>
                <th>Email Address</th>
                <td>:</td>
                <td><%= results.get(2) %></td>
              </tr>
              <tr>
                <th>Last Name</th>
                <td>:</td>
                <td><%= results.get(3) %></td>
              </tr>
              <tr>
                <th>First name</th>
                <td>:</td>
                <td><%= results.get(4) %></td>
              </tr>
              <tr>
                <th>Middle name</th>
                <td>:</td>
                <td><%= results.get(5) %></td>
              </tr>
              <tr>
                <th>Date of Birth</th>
                <td>:</td>
                <td><%= results.get(6) %></td>
              </tr>
              <tr>
                <th>Gender</th>
                <td>:</td>
                <td><%= results.get(7) %></td>
              </tr>
              <tr>
                <th>Address</th>
                <td>:</td>
                <td><%= results.get(8) %></td>
              </tr>
            </table>
          </div>
        </div>
        <div class="side-card">
          <div class="card">
            <h3><i class="far fa-clone pr-1"></i>Course Information</h3>
            <table>
              <tr>
                <th>Degree</th>
                <td>:</td>
                <td><%= results.get(9) %></td>
              </tr>
              <tr>
                <th>Specialization Track</th>
                <td>:</td>
                <td><%= results.get(10) %></td>
              </tr>
              <tr>
                <th>Status</th>
                <td>:</td>
                <td><%= results.get(11) %></td>
              </tr>
            </table>
          </div>

          <div class="card">
            <h3>
              <i class="far fa-clone pr-1"></i>Parent/Guardian Information
            </h3>
            <table>
              <tr>
                <th>Father</th>
                <td>:</td>
                <td><%= results.get(12) %></td>
              </tr>
              <tr>
                <th>Mother</th>
                <td>:</td>
                <td><%= results.get(13) %></td>
              </tr>
              <tr>
                <th>Address (Parent)</th>
                <td>:</td>
                <td><%= results.get(14) %></td>
              </tr>
              <tr>
                <th>Contact No. (Parent)</th>
                <td>:</td>
                <td><%= results.get(15) %></td>
              </tr>
              <tr>
                <th>Guardian</th>
                <td>:</td>
                <td><%= results.get(16) %></td>
              </tr>
              <tr>
                <th>Address (Guardian)</th>
                <td>:</td>
                <td><%= results.get(17) %></td>
              </tr>
              <tr>
                <th>Contact No. (Guardian)</th>
                <td>:</td>
                <td><%= results.get(18) %></td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div>

    <div id="footer">
      <div class="footer container">
        <div class="brand">
          <h1>ITECH<span>S</span><span>I</span>S <span>Portal/h1>
        </div>
        <h2>An Online College Management System</h2>
        <p>DCpET 3-2. AY 2023-2024. SOFTWARE DESIGN. DEL ROSARIO-DURAN-LAZARO-JOCSON</p>
      </div>
    </div>

    <script src="header-footer.js"></script>
  </body>
</html>
