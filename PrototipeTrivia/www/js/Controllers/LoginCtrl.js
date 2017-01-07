var app = angular.module('Trivia');
app.controller('LoginCtrl',
    ['$scope',
    function ($scope) {
        $scope.user = {
            name: ''
        };
        $scope.Login = function () {
            console.log('Login - Implementar Funcion Login');
        }
}]);