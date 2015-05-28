/**
 * Created by 864625 on 4/22/2015.
 */
var app = angular.module("POC-register", []);

app.controller("MainCtrl", function($scope, usersService)
{
    $scope.create = function(user) {
        usersService.create(user)
            .success(function(data) {
                $scope.users.push(data);
                $scope.newPerson = {};
                alert("Record created successfully.");
            }).error(function(data, status) {
                alert("Unable to create record (" + status + ").")
            });
    };

});

app.factory("usersService", function($http)
{
    return {
        create: function(user) {
            return $http.post("rest/users", user);
        }
    }
});

var compareTo = function() {
    return {
        require: "ngModel",
        scope: {
            otherModelValue: "=compareTo"
        },
        link: function(scope, element, attributes, ngModel) {

            ngModel.$validators.compareTo = function(modelValue) {
                return modelValue == scope.otherModelValue;
            };

            scope.$watch("otherModelValue", function() {
                ngModel.$validate();
            });
        }
    };
};

app.directive("compareTo", compareTo);