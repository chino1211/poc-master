/**
 * Created by 864625 on 4/28/2015.
 */
var app = angular.module("POC-admin", []);

app.controller("MainCtrl", function($scope, usersService)
{
    $scope.users = [];

    usersService.fetchAll()
        .success(function(data) {
            $scope.users = data;
        }).error(function(data, status) {
            alert("Unable to load data (" + status + ").");
        });

    $scope.remove = function(userId)
    {
        usersService.remove(userId)
            .success(function() {
                for (var i = 0; i < $scope.users.length; i++) {
                    var user = $scope.users[i];
                    if (userId == user.id) {
                        $scope.users.splice(i, 1);
                        break;
                    }
                }
                alert("Record successfully removed.");
            }).error(function(data, status) {
                alert("Unable to remove record (" + status + ").");
            });
    };

});

app.factory("usersService", function($http)
{
    return {
        fetchAll: function() {
            return $http.get("rest/users");
        },
        remove: function(userId) {
            return $http.delete("rest/users/" + userId);
        }
    }
});