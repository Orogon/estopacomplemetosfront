//Document   : remisiones.js
//Created on : 16/08/2018, 10:44:30 PM
//Author     : Cesar M Orozco R

var app = angular.module('remision', []);

var totalVenta = null;
var ahorro = null;

app.controller('remisionCtrl', function($scope, $http, $window) {
    
    $scope.totalRemision = 0.00;
    $scope.productos = [];
    var descProducto;
    $scope.fechaRemision = new Date();
    
    $http({url:'http://192.168.200.18:8081/remisiones/consultarfolio',method:"GET"}).then(function(response) {
        $scope.folioRemision = response.data.folioRemision;      
    });
    
    $http({url:'http://192.168.200.18:8081/clientes/consultaclientes',method:"GET"}).then(function(response) {
        switch (response.data.codigoOperacion){
            case "0":
                $scope.listaClientes = response.data.clientes;
                break;
            case "10":                
                $scope.descripcionError = response.data.descripcion;
                break;
            default:
                $scope.descripcionError = "Lo sentimos, ocurrio un error interno";
        }       
    });
    
    $http({url:'http://192.168.200.18:8081/productos/consultaproductos',method:"GET"}).then(function(response) {
        switch (response.data.codigoOperacion){
            case "0":
                $scope.listaProductos = response.data.productos;
                $scope.listaProductos1 = response.data.productos;
                break;
            case "8":                
                $scope.descripcionErrorProd = response.data.descripcion;
                break;
            default:
                $scope.descripcionErrorProd = "Lo sentimos, ocurrio un error interno";
        }       
    });
    
    $scope.traeProductoXCod = function(codProducto){
        var json = "{\"codigoProducto\":\""+codProducto+"\"}";        
        $http({
            url: 'http://192.168.200.18:8081/productos/consultaproducto',
            method: "POST",
            data: json
        })
        .success(function(response) {
            switch (response.codigoOperacion){
                case "0":
                    descProducto = response.producto.descripcionProducto;                    
                    $scope.productoNom = response.producto.nombreProducto;
                    $scope.productoCod = response.producto.codigoProducto;                    
                    $scope.precio = parseFloat(response.producto.precioVenta);                    
                    break;
                default:
                    $scope.descripcionError = "Lo sentimos, ocurrio un error interno";
                    $scope.alertaError = true;                                  
            }
        }).error(function(response) {
            console.log('Error: '+response);
        });      
    };
    
    $scope.traeProductoXNom = function(nomProducto){
        var json = "{\"nombreProducto\":\""+nomProducto+"\"}";
        $http({
            url: 'http://192.168.200.18:8081/productos/consultaproducto',
            method: "POST",
            data: json
        })
        .success(function(response) {
            switch (response.codigoOperacion){
                case "0":
                    descProducto = response.producto.descripcionProducto;                    
                    $scope.productoNom = response.producto.nombreProducto;
                    $scope.productoCod = response.producto.codigoProducto;                    
                    $scope.precio = parseFloat(response.producto.precioVenta);                    
                    break;
                default:
                    $scope.descripcionError = "Lo sentimos, ocurrio un error interno";
                    $scope.alertaError = true;                                  
            }
        }).error(function(response) {
            console.log('Error: '+response);
        });      
    };
    
    $scope.agregaTextoTabla = function(){
        if(!validaDatos($scope.cantidad, $scope.precio)){
            if(confirm('Desea agregar este producto: \nProducto: ' + $scope.productoNom +'\nPrecio: $'+$scope.precio)){
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
                    "cantidadProducto" : $scope.cantidad,
                    "codigoProducto" : $scope.productoCod,
                    "descripcion" : descProducto,
                    "precioVenta": $scope.precio,
                    "descuento": $scope.descuento,
                    "precioDesc": totalDescuentoPrecio,
                    "ahorroTotal": ahorroTotal,
                    "importe": importe
                });
                    $scope.productoNom = '';
                    $scope.cantidad='';
                    $scope.precio='';
                    $scope.productoCod='';
                    $scope.descuento='';
                    descProducto = '';
            }
        }
    };

    $scope.removeItem = function(index){
        if(confirm('Desea Eliminar este producto de la remision')){            
            var producto = $scope.productos[index];
            restarImporte(producto.importe);
            restarahorro(producto.ahorroTotal);
            $scope.productos.splice(index);
            $scope.totalRemision = totalVenta;
        }      
    };
    
    $scope.generarVenta = function(){
        var objectList = angular.toJson($scope.productos);
        var json="{\"nombreNegocio\":\""+$scope.cliente+"\","+
            "\"tipoVenta\":\""+$scope.tipoVenta+"\","+
            "\"diasCredito\":\""+$scope.diasCredito+"\","+
            "\"folioNota\":\""+$scope.folioRemision+"\","+
            "\"fechaRemision\":\""+$scope.fechaRemision+"\","+
            "\"venta\":"+objectList+","+
            "\"direccionNegocio\":\""+$scope.calle+" "+$scope.nuInt+"\","+
            "\"coloniaNegocio\":\""+$scope.colonia+"\","+
            "\"estadoNegocio\":\""+$scope.estado+"\","+
            "\"ahorro\":\""+ahorro+"\","+
            "\"totalNotaSindescuento\":\""+totalVenta+"\","+
            "\"totalNotaConDescuento\":\""+totalVenta+
            "\"}";
        $http({
            url: 'http://192.168.200.18:8081/remisiones/realizaremision',
            method: "POST",
            data: json
        })
        .success(function(response) {
            alert(response.codigoOperacion);
            switch (response.codigoOperacion){                
                case "0":
                    alert("Todo chingon bye");
                    location.reload();
                    break;
                case "5":
                    alert(response.descripcion);
                    location.reload();
                    break;
                case "6":
                    alert(response.descripcion);
                    location.reload();
                    break;
                default:
                    alert("Ocurrio un error que no se que pedo");
            }
        }).error(function(response) {
            console.log('Error: '+response);
        }); 
   
    };
    
    $scope.traeCliente = function(cliente){
        var json = "{\"nombreNegocio\":\""+cliente+"\"}";
        $http({
            url: 'http://192.168.200.18:8081/clientes/consultacliente',
            method: "POST",
            data: json
        })
        .success(function(response) {
            switch (response.codigoOperacion){
                case "0":
                    $scope.calle = response.cliente.direccion.calle;
                    $scope.nuInt = response.cliente.direccion.numInterior;
                    $scope.numExt = response.cliente.direccion.numExterior;
                    $scope.delMun = response.cliente.direccion.delgacionMunicipio;
                    $scope.colonia = response.cliente.direccion.colonia;
                    $scope.cp = response.cliente.direccion.codigoPostal;
                    $scope.estado = response.cliente.direccion.estado;
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
};

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
    return ahorroTotal;
};

function sumarAhorro(ahorroTotal){
    if(ahorro != null){
        ahorro = ahorro+ahorroTotal;
    }else{
        ahorro = ahorroTotal;
    }
};

function sumarImporte(importe){
    if(totalVenta != null){
        totalVenta = totalVenta + importe;
    }else{
        totalVenta = importe;
    }
};

function restarImporte(importeRestar){
    totalVenta = totalVenta-importeRestar;
};

function restarahorro(totalahorro){
    ahorro = ahorro-totalahorro;
};

function mayus(e) {
    e.value = e.value.toUpperCase();
}


