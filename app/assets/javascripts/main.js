var petStopApp = angular.module('petStopApp', []);

petStopApp.controller('TabsCtrl', ['$scope', function($scope) {
  $scope.tabs = [{
    title: 'My Vets',
    url: '/vets'
  }];
  $scope.currentTab = '/vets';

  $scope.onClickTab = function(tab) {
    $scope.currentTab = tab.url;
  };

  $scope.isActiveTab = function(tabUrl) {
    return tabUrl == $scope.currentTab;
  };
}]);

// this will pull in the data from dataFactory
petStopApp.controller('vetsCtrl', ['$scope', 'dataFactory', function($scope, dataFactory) {
  $scope.currentVet = "";
  dataFactory.getVets()
    .then(function(arrVets) {
      $scope.vets = arrVets;
      console.log(arrVets);
    });
  // $scope exposes JS to html
  $scope.loadVet = function(vet) {
    $scope.currentVet = vet;
    console.log(vet);
  };
    // $scope.vets = dataFactory.vets;
    // $scope.$watch(dataFactory.vets);
    // // $scope.vets = [{name: 'one'}, {name: 'two'}];
    // console.log($scope.vets);
}]);

$('#tabs > li').on('click', function() {
  var show = '#' + $(this).data('target');
  $(this).addClass('current').siblings().removeClass('current');
  $(show).addClass('current').siblings().removeClass('current');
});
