
var MainController = function($scope, $http) {
  
    var getScaleDetails = function(response) {
      $scope.scale = response.data;
    }
    
    var getScaleNotes = function(response) {
      $scope.scale_notes = response.data;
      console.log(response);
    }
    
    $http.get("http://railsbox-123227.use1-2.nitrousbox.com/scales/scale.json")
      .then(getScaleDetails);
  
  
    $http.get("http://railsbox-123227.use1-2.nitrousbox.com/scales/1/notes.json")
      .then(getScaleNotes);
  
}