var app = angular.module('Trivia');
app.controller('EventCtrl',
    ['$scope',
    function ($scope) {
        $scope.flag = true;
        $scope.events = [
            {
                name: 'A'
            }, {
                name: 'B'
            }, {
                name: 'C'
            }, {
                name: 'D'
            }, {
                name: 'E'
            }, {
                name: 'F'
            }, {
                name: 'G'
            }
        ];
        $scope.event = {
            name: $scope.events[0].name
        }
        var i = 0;                     //  set your counter to 1
       
        $scope.myLoop = function () {           //  create a loop function
            setTimeout(function () {    //  call a 3s setTimeout when the loop is called
                console.log($scope.events[i].name)
                $scope.event = {
                    name: $scope.events[i].name
                }
                i++;                     //  increment the counter
                if (i < $scope.events.length) {            //  if the counter < 10, call the loop function
                    $scope.myLoop();             //  ..  again which will trigger another
                }                        //  ..  setTimeout()
            }, 300)
        }
        $scope.myLoop()
    }]);