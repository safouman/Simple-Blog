var app = angular.module('myApp', ['ngRoute','angularGrid']);
app.factory("services", ['$http', function($http) {
  var serviceBase = 'services/'
    var obj = {};

    obj.getPosts = function(){
        return $http.get(serviceBase + 'posts');
    }
    obj.getPost = function(postID){
        return $http.get(serviceBase + 'post?id=' + postID);
    }







    return obj;   
}]);

app.controller('listCtrl', function ($scope, services) {
    services.getPosts().then(function(data){
        $scope.posts = data.data;

    });

});




app.controller('showCtrl', function ($scope, $rootScope, $location, $routeParams, services, post) {
    var idposts = ($routeParams.idposts) ? parseInt($routeParams.idposts) : 0;
    $rootScope.title = 'Post Details';

      var original = post.data;
      original._id = idposts;
      $scope.post = angular.copy(original);
      $scope.post._id = idposts;

      $scope.isClean = function() {
        return angular.equals(original, $scope.post);
      }

});

app.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/', {
        title: 'Posts',
        templateUrl: 'partials/posts.html',
        controller: 'listCtrl'
      }).when('/post/:idposts', {
        title: 'Show post',
        templateUrl: 'partials/show-post.html',
        controller: 'showCtrl',
        resolve: {
          post: function(services, $route){
            var idposts = $route.current.params.idposts;
            return services.getPost(idposts);
          }
        }
      })
      .otherwise({
        redirectTo: '/'
      });
}]);
app.run(['$location', '$rootScope', function($location, $rootScope) {
    $rootScope.$on('$routeChangeSuccess', function (event, current, previous) {
      //  $rootScope.title = current.$$route.title;


    });
}]);