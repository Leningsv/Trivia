var app = angular.module('Trivia');
app.controller('LoginCtrl',
    ['$scope','$state',
    function ($scope, $state) {
        $scope.user = {
            name: ''
        };
        $scope.Login = function () {
            console.log('Login - Implementar Funcion Login');
            $state.go('app.home');
        }
}]);