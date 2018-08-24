/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var app = angular.module('cliente', []);


app.controller('clienteCtrl', function($scope, $http, $window) {
    
    $scope.alertaError = false;
    
    $scope.guardarCliente = function(){
        $scope.alertaError = false;
        var json="{\"codigoNegocio\":\""+$scope.codCliente+"\","+
                "\"nombreNegocio\":\""+$scope.nomCliente+"\","+
                "\"telefonos\":{\"numfijoNeg\":\""+$scope.telFijoNegocio+"\",\"numCelularNeg\":\""+$scope.telCelNegocio+"\",\"numCelularResp\":\""+$scope.telCelResp+"\",\"numfijoResp\":\""+$scope.telFijResp+"\"},"+
                "\"direccion\":{\"\calle\":\""+$scope.nombreCalle+"\",\"numInterior\":\""+$scope.numInt+"\",\"delgacionMunicipio\":\""+$scope.delegMuni+"\",\"codigoPostal\":\""+$scope.codigoPostal+"\",\"estado\":\""+$scope.estadoNego+"\",\"colonia\":\""+$scope.colonia+"\",\"numExterior\":\""+$scope.numExt+"\"},"+
                "\"rfc\":\""+$scope.rfcNego+"\","+
                "\"correoElectronico\":\""+$scope.correoElec+"\","+
                "\"nombreResponsable\":\""+$scope.nomResp+"\","+
                "\"apePatResponsable\":\""+$scope.apePatResp+"\","+
                "\"apeMatResponsable\":\""+$scope.apeMatResp+
                "\"}";        
        $http({
            url: 'http://192.168.200.18:8081/clientes/registracliente',
            method: "POST",
            data: json
        })
        .success(function(response) {
            switch (response.codigoOperacion){
                case "0":
                    location.reload();
                    break;
                case "4":
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
