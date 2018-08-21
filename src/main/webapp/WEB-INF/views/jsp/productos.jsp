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
                <h4>Producto</h4> 
            </div>    
        </div>
        <br/><br/>
        <div class="row">
            <div class="col-sm-2">
                <div class="form-group">
                    <label for="codPro">Código de producto:</label>
                    <input type="text" class="form-control" id="codPro">
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
        <br/>
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
                    <label for="iva">Precio c/ IVA:</label>
                    <input type="number" class="form-control" id="iva">
                </div>
            </div>
            <div class="col-sm-2">
                <div class="form-group">
                    <label for="existencia">Existencia:</label>
                    <input type="text" class="form-control" id="cantidad">
                </div>   
            </div>
        </div>
        <br/>
        <div class="row align-items-center justify-content-center">
            <div class="col-sm-4">
                <div class="form-group">
                    <label for="nomProv">Nombre de proveedor:</label>
                    <input type="text" class="form-control" id="nomProv">
                </div>   
            </div>
            <div class="col-sm-4">
                <div class="form-group">
                    <label for="desc">Descripción:</label>
                    <textarea class="form-control" rows="4" id="descripcion"></textarea>
                </div>   
            </div>
        </div>
        <br/><br/>
        <div clas="row">
            <div class="form-group">
                <button type="button" class="btn btn-secondary">Guardar</button>
            </div>
        </div>
    </div>
</div>       