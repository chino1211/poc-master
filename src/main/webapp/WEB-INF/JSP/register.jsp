<%--
    Created by IntelliJ IDEA.
    User: 864625
    Date: 4/24/2015
    Time: 3:02 PM
    To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html ng-app="POC-register">
    <head>
        <title>POC : Register</title>
        <link rel="stylesheet" href="resources/css/application.css" />
        <script src="resources/js/angular.min.js"></script>
        <script src="resources/js/register.js"></script>
    </head>
    <body ng-controller="MainCtrl">
        <div id="content">
            <h1>POC : Register</h1>
            <p>
                //TODO: Allow access to the register service without authentication<br>
                //TODO: Add the ROLE_USER role to the user on creation<br>
                //TODO: Add password encryption everywhere<br>
                //TODO: Use Angular to add usability to some of the fields<br>
                //TODO: Use Angular to validate all the fields<br>
            </p>

            <hr />

            <form ng-submit="create(newUser)">
                <table>
                    <thead>
                        <tr>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>First Name</td>
                            <td>
                                <input type="text" required placeholder="First Name" ng-model="newUser.firstName" />
                            </td>
                        </tr>
                        <tr>
                            <td>Last Name</td>
                            <td>
                                <input type="text" required placeholder="Last Name" ng-model="newUser.lastName" />
                            </td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td>
                                <input type="email" required placeholder="Email" ng-model="newUser.email" />
                            </td>
                        </tr>
                        <tr>
                            <td>Date of Birth</td>
                                </input  type="date" />
                                <head>
                                <meta charset="utf-8">
                                <title>jQuery UI Datepicker - Default functionality</title>
                                <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
                                <script src="//code.jquery.com/jquery-1.10.2.js"></script>
                                <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
                                <link rel="stylesheet" href="/resources/demos/style.css">
                                <script>
                                   /* $document.ready(function(){
                                        $(".datepicker").datepicker({
                                            dateFormat: 'mm-dd-yy'
                                        })
                                    });  TODO: Rodrigo */
                                    $( ".selector" ).datepicker({
                                        dateFormat: "yyyy-mm-dd"
                                    });
                                    $(function() {
                                        var date = $('#datepicker').datepicker({ dateFormat: 'yyyy/mm/dd' }).val();

                                    });
                                </script>
                                    <td><p>Date: <input type="date" id="datepicker" placeholder='YYYY-MM-DD' required ="datepicker" ng-model="newUser.dateOfBith"></p></td>
                            </head>
                        </tr>

                        <tr>
                            <td>Sex</td>
                            <td>
                                <label>
                                    <input name="sex" type="radio" ng-model="newUser.sex" value="1">
                                    Male
                                </label>
                                <label>
                                    <input name="sex" type="radio" ng-model="newUser.sex" value="0">
                                    Female
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td>
                                <input  type="password" required placeholder="Password" ng-model="newUser.password" />
                            </td>
                        </tr>
                        <tr>
                            <td>Confirm Password</td>
                            <td>
                                <input  type="password" required placeholder="Password" ng-model="newUser.confirmPassword" compare-to="newUser.password" />
                            </td>
                        </tr>
                    </tbody>
                </table>

                <br>

                <button type="submit">Create</button>
            </form>
        </div>
    </body>
</html>


