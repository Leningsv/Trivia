var app = angular.module('Trivia');
app.controller('QueryCtrl',
    ['$scope',
    function ($scope) {
        $scope.Answer = function (flag) {
            if (flag === true) {
                console.log('list card animated infinite tada');
                return 'list card animated infinite tada';
            }
            return 'list card animated bounceInLeft';
        }
                
}]);