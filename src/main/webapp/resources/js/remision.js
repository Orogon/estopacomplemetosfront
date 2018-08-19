//Document   : remisiones.js
//Created on : 16/08/2018, 10:44:30 PM
//Author     : Cesar M Orozco R

var app = angular.module('remision', []);

alert("Entro al script");

app.controller('remisionCtrl', function($scope, $http, $window) {
    alert("Entro al Script");
    
    $scope.productos = [];
    
    $scope.agregaTextoTabla = function(){
        if(!validaDatos($scope.cantidad, $scope.precio)){
            if(confirm('Desea agregar este producto: \nProducto: ' + $scope.nomProduc +'\nPrecio: $'+$scope.precio)){
                var totalDescuentoPrecio = null;
                var importe = null;
                if($scope.descuento != null){
                    totalDescuentoPrecio = calculaDescuento($scope.precio ,$scope.descuento);
                    importe = calculaImporte($scope.cantidad, totalDescuentoPrecio);
        }else{
                    $scope.descuento = 'No Aplica'
                    importe = calculaImporte($scope.cantidad, $scope.precio);
        }
         this.productos.push({
                    "cantidad" : $scope.cantidad,
                    "descripcion" : 'Broca para pintura linea Mr.Pancho de 6 pulgadas',
                    "precio": $scope.precio,
                    "descuento": $scope.descuento.equals('No Aplica')?$scope.descuento:$scope.descuento+'%',
                    "precioNeto": totalDescuentoPrecio,
                    "importe": importe    
        });
                $scope.nomPro = '';
                $scope.cantidad='';
                $scope.precio='';     
    }
        }
};

     $scope.removeItem = function(index){
        if(confirm('Desea Eliminar este producto de la remision')){
            $scope.productos.splice(index);    
        }        
    };
    
    $scope.datosDclick = function(){
        alert("Hola");
    };
       
});

  function validaDatos(cantidad, precio){
    if(cantidad === 'undefined' || cantidad === undefined || cantidad === ""){
        alert('Lo sentimos, la cantidad nu puede venir vacia');
        return true;
    }
    if(precio === 'undefined' || precio === undefined || precio === ""){
        alert('Lo sentimos, el precio nu puede venir vacia');
        return true;
    }
    return false;
}

 function calculaImporte(cantidad, precio){
    var cant = parseInt(cantidad);
    var pre = parseFloat(precio);
    var importe = cant*pre;
    return importe;
};

function calculaDescuento(precio, descuento){
    var prec = parseFloat(precio);    
    var desc = parseFloat('.'+descuento).toFixed(2);
    var descTotal = prec*desc;
    var precTotalDesc = prec-descTotal;
    return precTotalDesc;
}



