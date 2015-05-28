<%--
    Created by IntelliJ IDEA.
    User: 864625
    Date: 4/24/2015
    Time: 3:02 PM
    To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html ng-app="POC-admin">
    <head>
        <title>POC : Admin</title>
        <link rel="stylesheet" href="resources/css/application.css" />
        <script src="resources/js/angular.min.js"></script>
        <script src="resources/js/admin.js"></script>
    </head>
    <body ng-controller="MainCtrl">
        <div id="content">
            <h1>POC : Admin</h1>
            <p>
                //TODO: on click to a user show all it's details<br>
                //TODO-OPTIONAL: on delete we need to cascade the user's roles<br>
            </p>

            <hr />

            <table>
                <thead>
                    <tr>
                        <th><a href="user">User</a></th>
                        <th><a href="logout">Logout</a></th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>

            <hr />

            <table>
                <thead>
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr ng-repeat="user in users">
                        <td>{{user.firstName}}</td>
                        <td>{{user.lastName}}</td>
                        <td><a href="" ng-click="remove(user.id)">Delete</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>


