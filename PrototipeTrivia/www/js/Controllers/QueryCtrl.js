var app = angular.module('Trivia');
app.controller('QueryCtrl',
    ['$scope',
    function ($scope) {
        $scope.queries = [{
            description: 'respuesta 1',
            style: 'bounceInLeft'
        }, {
            description: 'respuesta 2',
            style: 'bounceInRight'
        }, {
            description: 'respuesta 3',
            style: 'bounceInLeft'
        }, {
            description: 'respuesta 4',
            style: 'bounceInRight'
        }]
        $scope.Answer = function (query) {
            $scope.queries.forEach(function (item) {
                if (item === query) {
                    item.style = 'infinite tada';
                } else {
                    item.style = '';
                }
            }, this);
                
        }
                
}]);