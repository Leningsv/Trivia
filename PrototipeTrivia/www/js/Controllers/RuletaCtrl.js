var app = angular.module('Trivia');
app.controller('ruletaCtrl',function($scope,$rootScope,$state, $ionicModal){
  $scope.tiempo=50;
  $rootScope.imagen={};
  $scope.listaItems=[
    {
      urlImagen:'../img/itemHistoria.jpg',
      nombre:'Historia'
    },{
      urlImagen:'../img/itemCiencia.jpg',
      nombre:'Ciencia'
    },{
      urlImagen:'../img/itemGeografia.jpg',
      nombre:'Geografia'
    },{
      urlImagen:'../img/itemMatematicas.jpg',
      nombre:'Matematicas'
    }
  ];


 $scope.sliderOptions = {
direction: 'vertical',
pagination: false,
autoplay: $scope.tiempo,//change every second
};
$scope.$on("$ionicSlides.sliderInitialized", function(event, data){
  $scope.slider = data.slider;
});
$scope.empezar=function(){
  if ( $scope.slider ){

      $scope.slider.autoplaying=false;
      $scope.indice=$scope.slider.activeIndex;
      console.log($scope.indice);
      for (var i = 0; i < $scope.listaItems.length; i++) {
        if(i==$scope.indice){
          $scope.imagen=$scope.listaItems[i].urlImagen;
          console.log($scope.imagen);
        }
      }
    $scope.slider.updateLoop();
  }
};
$scope.redicTo = function(){
  $state.go('seleccion');
}
});
