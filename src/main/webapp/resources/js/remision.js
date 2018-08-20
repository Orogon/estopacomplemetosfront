//Document   : remisiones.js
//Created on : 16/08/2018, 10:44:30 PM
//Author     : Cesar M Orozco R

var app = angular.module('remision', []);

var totalVenta = null;
var ahorro = null;

app.controller('remisionCtrl', function($scope, $http, $window) {
    
    $scope.totalRemision = 0.00;
    $scope.productos = [];    
    
    $scope.agregaTextoTabla = function(){
        if(!validaDatos($scope.cantidad, $scope.precio)){
            if(confirm('Desea agregar este producto: \nProducto: ' + $scope.nomPro +'\nPrecio: $'+$scope.precio)){
                var totalDescuentoPrecio = null;
                var importe = null;
                if($scope.descuento != null && $scope.descuento != ''){
                    totalDescuentoPrecio = calculaDescuento($scope.precio ,$scope.descuento, $scope.cantidad);
                    importe = calculaImporte($scope.cantidad, totalDescuentoPrecio);
                    var ahorroTotal = calcularAhorro($scope.cantidad, $scope.precio, $scope.descuento);
                    sumarAhorro(ahorroTotal);
        }else{
            $scope.descuento = 'No aplica';
            importe = calculaImporte($scope.cantidad, $scope.precio);
            totalDescuentoPrecio = '0.00';
        }    
        sumarImporte(importe);
        $scope.totalRemision = totalVenta;
        this.productos.push({
            "cantidad" : $scope.cantidad,
            "descripcion" : 'Brocha para pintura linea Mr.Pancho de 6 pulgadas',
            "precio": $scope.precio,
            "descuento": $scope.descuento,
            "precioDesc": totalDescuentoPrecio,
            "importe": importe
        });
            $scope.nomPro = '';
            $scope.cantidad='';
            $scope.precio='';
            $scope.codpro='';
            $scope.descuento='';
        }
    }
};

     $scope.removeItem = function(index){
        if(confirm('Desea Eliminar este producto de la remision')){            
            var producto = $scope.productos[index];
            restarImporte(producto.importe);
            $scope.productos.splice(index);
            $scope.totalRemision = totalVenta;
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

function calcularAhorro(cantidad, precio, descuento){
    var cantidadConvert = parseInt(cantidad);
    var precioConvert = parseFloat(precio);
    var descuentoConvert = parseFloat('.'+descuento).toFixed(2);
    var descuentoDePrecio = precioConvert*descuentoConvert;
    var precioConDescuento = precioConvert-descuentoDePrecio;
    var totalSinDesc = cantidadConvert*precioConvert;
    var totalConDesc = cantidadConvert*precioConDescuento;   
    var ahorroTotal = totalSinDesc-totalConDesc;
    return ahorroTotal
}

function sumarAhorro(ahorroTotal){
    if(ahorro != null){
        ahorro = ahorro+ahorroTotal;
    }else{
        ahorro = ahorroTotal;
    }
}

function sumarImporte(importe){
    if(totalVenta != null){
        totalVenta = totalVenta + importe;
    }else{
        totalVenta = importe;
    }
}

function restarImporte(importeRestar){
    totalVenta = totalVenta-importeRestar;
}


