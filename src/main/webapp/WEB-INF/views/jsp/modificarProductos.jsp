<%-- 
    Document   : modificarProductos
    Created on : 21/08/2018, 02:25:47 PM
    Author     : Jenipher Gonzalez L
--%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="<c:url value='/resources/js/producto.js'/>"></script>

<div class="container" ng-app="producto" ng-controller="productoCtrl">

    <div class="row align-items-center justify-content-center">
        <div class="col-sm-4">
            <h4>Modificar producto</h4> 
        </div>    
    </div>
    <div class="row">
        <div class="col-sm-4">
            <h4>Buscar por...</h4> 
        </div>    
    </div>
    <div class="tab-content">        
        <div class="row align-items-center justify-content-center">
            <div class="col-sm-3">
                <div class="form-group">
                    <label for="nomCliente">Código del producto:</label>
                    <input type="text" class="form-control" id="nomCliente">
                </div>   
            </div>
            <div class="vl">        
            </div>
            <div class="col-sm-3">
                <div class="form-group">
                    <label for="nomProducto">Nombre del producto</label>
                    <input type="text" class="form-control" id="nomProducto">
                </div>   
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">           
                <button type="button" class="btn btn-success btn-block" ng-click="">Buscar</button>
            </div>
            <div class="col-sm-6">
                <button type="button" class="btn btn-sucess btn-block" ng-click="">Modificar</button>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <h4 align="center">Datos del producto</h4>
            </div>
        </div>

        <div class="tab-content">        
            <div class="row">
                <div class="col-sm-2">
                    <div class="form-group">
                        <label for="codPro">Código de producto:</label>
                        <input type="text" class="form-control" id="codPro" readonly="readonly">
                    </div>   
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="nomProducto">Nombre de producto:</label>
                        <input type="text" class="form-control" id="nomProducto">
                    </div>   
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <label for="marca">Marca:</label>
                        <input type="text" class="form-control" id="marca">
                    </div>   
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <label for="subMarca">Sub marca:</label>
                        <input type="text" class="form-control" id="subMarca">
                    </div>   
                </div>
            </div>
            <div class="row align-items-center justify-content-center">
                <div class="col-sm-3">
                    <div class="form-group">
                        <label for="tipoPro">Tipo de producto:</label>
                        <input type="text" class="form-control" id="tipoPro">
                    </div>   
                </div>
                <div class="col-sm-2">
                    <div class="form-group">
                        <label for="precioCompra">Precio compra:</label>
                        <input type="text" class="form-control" id="precioCompra">
                    </div>   
                </div>
                <div class="col-sm-2">
                    <div class="form-group">
                        <label for="precioVenta">Precio venta:</label>
                        <input type="text" class="form-control" id="precioVenta">
                    </div>   
                </div>
                <div class="col-sm-2">
                    <div class="form-group">
                        <label for="cantidad">Existencia:</label>
                        <input type="text" class="form-control" id="cantidad">
                    </div>   
                </div>
            </div>
            <div class="row align-items-center justify-content-center">
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="nomProv">Nombre de proveedor:</label>
                        <input type="text" class="form-control" id="nomProv">
                    </div>   
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="descripcion">Descripción:</label>
                        <textarea class="form-control" rows="4" id="descripcion"></textarea>
                    </div>   
                </div>
            </div>
        </div>
    </div>
</div>



