/*
*  controller.js
* 
*/

angular.module("controller", [])

// Create a (MVC) controller passing its name and array of dependencies starting with $scope
.controller("controller", ["$scope", "UsersService", "ListsService", "TasksService",
    function($scope, UsersService, ListsService, TasksService) {
    // Always create an object first and add properties/methods to it instead of $scope
    $scope.vm = {};
    
}])
.service("UsersService", function(){
    var usersService = {};
    return usersService;
})
.service("ListsService", function(){
    var listsService = {};
    return listsService;
})
.service("TasksService", function(){
    var tasksService = {};
    return tasksService;
});
