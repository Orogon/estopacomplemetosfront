<%-- 
    Document   : productos
    Created on : 14/08/2018, 05:36:27 PM
    Author     : Jenipher Gonzalez L
--%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="<c:url value='/resources/js/producto.js'/>"></script>

<div class="container" ng-app="producto" ng-controller="productoCtrl">

    <br/>

    <div class="tab-content">        
        <div class="row align-items-center justify-content-center">
            <div class="col-sm-4">
                <center><h4>Producto</h4></center>
            </div>    
        </div>
        <br/><br/>
        <div class="alert alert-danger" ng-show="errorDescripcion">
            <strong>Success!</strong> You should <a href="#" class="alert-link">read this message</a>.
        </div>
        <br/>
        <div class="row">
            <div class="col-sm-2">
                <div class="form-group">
                    <label for="codPro">Código de producto:</label>
                    <input type="text" class="form-control" onkeyup="mayus(this);" ng-model="codProducto">
                </div>   
            </div>
            <div class="col-sm-4">
                <div class="form-group">
                    <label for="nomProducto">Nombre de producto:</label>
                    <input type="text" class="form-control" onkeyup="mayus(this);" ng-model="nombreProducto">
                </div>   
            </div>
            <div class="col-sm-3">
                <div class="form-group">
                    <label for="marca">Marca:</label>
                    <input type="text" class="form-control" onkeyup="mayus(this);" ng-model="marcaProducto">
                </div>   
            </div>
            <div class="col-sm-3">
                <div class="form-group">
                    <label for="subMarca">Submarca:</label>
                    <input type="text" class="form-control" onkeyup="mayus(this);" ng-model="submarcaProducto">
                </div>   
            </div>
        </div>
        <br/>
        <div class="row align-items-center justify-content-center">
            <div class="col-sm-2">
                <div class="form-group">
                    <label for="precioCompra">Precio compra:</label>
                    <input type="number" class="form-control" ng-model="precioCompraProd">
                </div>   
            </div>
            <div class="col-sm-2">
                <div class="form-group">
                    <label for="precioVentaProd">Precio venta:</label>
                    <input type="number" class="form-control" ng-model="precioVentaProd">
                </div>   
            </div>
            <div class="col-sm-2">
                <div class="form-group">
                    <label for="existencia">Existencia:</label>
                    <input type="number" class="form-control">
                </div>   
            </div>
            <div class="col-sm-3">
                <div class="form-group">
                    <label for="nomProv">Nombre de proveedor:</label>
                    <input type="text" class="form-control" onkeyup="mayus(this);">
                </div>   
            </div>
        </div>
        <br/>
        <div class="row align-items-center justify-content-center">
            <div class="col-sm-4">
                <div class="form-group">
                    <label for="desc">Descripción:</label>
                    <textarea class="form-control" rows="4" onkeyup="mayus(this);" ng-model="descripcionProd"></textarea>
                </div>   
            </div>
        </div>
        <br/><br/>
        <div clas="row">
            <div class="form-group">
              <button type="button" class="btn btn-success btn-block" ng-click="guardaProducto()">Guardar</button>
            </div>
        </div>
    </div>
</div>       