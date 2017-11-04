/*
*  controller.js
* Skeleton Angular Controller (MVC)
*/

angular.module("controller", [])

// Create a (MVC) controller passing its name and array of dependencies starting with $scope
.controller("controller", ["$scope", function($scope) {
    // Always create an object first and add properties/methods to it instead of $scope
    $scope.object = {};
    $scope.object.skeleton = "Angular, Bootstrap, and JQuery Skeleton";
}]);

