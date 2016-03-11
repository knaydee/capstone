// // plugin inside the browser that goes and gets the info I need
// petStopApp.factory('dataFactory', ['$http', function($http) {
//   var self = this;
//
//   self.vets = [];
//   this.getVets = function() {
//     return $http.get('/vets')
//       .then(function(response) {
//         return response.data;
//       });
//   };
//   return this;
//   // $http is an angular module, the function tells the module what to do with it
//   // self.$get = ['$http', function($http) {
//   //   $http.get('/vets')
//   //   .success(function(vetData) {
//   //     self.vets = vetData;
//   //     console.log(vetData);
//   //   })
//   //   .error(function() {
//   //     throw new Error('Unable to load vet data');
//   //   });
//   //   return self;
//   // }];
// }]);
