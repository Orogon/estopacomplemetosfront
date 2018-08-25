/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var app = angular.module('producto', []);


app.controller('productoCtrl', function($scope, $http, $window) {
    
    $scope.errorDescripcion = false;
    
    $scope.guardaProducto = function(){
        $scope.alertaError = false;
        var json="{\"codigoProducto\":\""+$scope.codProducto+"\","+
                "\"marcaProducto\":\""+$scope.marcaProducto+"\","+
                "\"submarcaProducto\":\""+$scope.submarcaProducto+"\","+
                "\"nombreProducto\":\""+$scope.nombreProducto+"\","+
                "\"descripcionProducto\":\""+$scope.descripcionProd+"\","+
                "\"precioVenta\":\""+$scope.precioVentaProd+"\","+
                "\"precioCompra\":\""+$scope.precioCompraProd+
                "\"}";        
        $http({
            url: 'http://192.168.200.18:8081/productos/registraproducto',
            method: "POST",
            data: json
        })
        .success(function(response) {
            switch (response.codigoOperacion){
                case "0":
                    location.reload();
                    break;
                case "11":
                    $scope.descripcionError = response.descripcion;
                    $scope.alertaError = true;
                    break;
                default:
                    $scope.descripcionError = "Lo sentimos, ocurrio un error interno";
                    $scope.alertaError = true;                                  
            }
        }).error(function(response) {
            console.log('Error: '+response);
        });
    };
    
});

function mayus(e) {
    e.value = e.value.toUpperCase();
}