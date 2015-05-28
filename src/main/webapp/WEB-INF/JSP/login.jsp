<%--
    Created by IntelliJ IDEA.
    User: 864625
    Date: 4/24/2015
    Time: 3:02 PM
    To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html ng-app="POC-login">
    <head>
        <title>POC : Login</title>
        <link rel="stylesheet" href="resources/css/application.css" />
        <script src="resources/js/angular.min.js"></script>
        <script src="resources/js/login.js"></script>
    </head>
    <body ng-controller="MainCtrl">
        <div id="content">
            <h1>POC : Login</h1>
            <p>
                //TODO: Use angular to log in<br>
                //TODO: Use angular to validate email and password fields<br>
            </p>

            <div ng-show="error">
                <hr />
                <div>
                  Invalid Email and Password.
                </div>
            </div>
            <div ng-show="logout">
                <hr />
                <div>
                  You have been logged out.
                </div>
            </div>

            <hr />
            <form role="form" method="post" action="login">
                <table>
                    <thead>
                        <tr>
                            <th><label for="username" >Email</label></th>
                            <td><input required type="email" id="username" name="username" placeholder="Email" ng-model="credentials.username"/></td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th><label for="password">Password</label></th>
                            <td><input required ="password" id="password" name="password" placeholder="Password" ng-model="credentials.password"/></td>
                        </tr>
                    </tbody>
                </table>

                <br>

                <input type="submit">

                <br><br>

                <a href="register">Register</a>
            </form>
        </div>
    </body>
</html>