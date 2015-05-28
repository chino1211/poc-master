<%--
    Created by IntelliJ IDEA.
    User: 864625
    Date: 4/24/2015
    Time: 3:02 PM
    To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html ng-app="POC-user">
    <head>
        <title>POC : User</title>
        <link rel="stylesheet" href="resources/css/application.css" />
        <script src="resources/js/angular.min.js"></script>
        <script src="resources/js/user.js"></script>
    </head>
    <body ng-controller="MainCtrl">
        <div id="content">
            <h1>POC : User</h1>
            <p>
                //TODO: Show current user's information<br>
                //TODO: Configure service for the put function<br>
                //TODO: Form to update user's first and last name<br>
                //TODO: Use Angular to validate all the fields<br>
                //TODO: Hide the admin link according to user roles<br>
            </p>

            <hr />

            <table>
                <thead>
                    <tr>
                        <th><a href="admin">Admin</a></th>
                        <th><a href="logout">Logout</a></th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>

            <hr />

        </div>
    </body>
</html>


