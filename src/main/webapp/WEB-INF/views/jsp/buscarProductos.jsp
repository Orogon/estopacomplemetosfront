<%-- 
    Document   : buscarProductos
    Created on : 21/08/2018, 02:29:00 PM
    Author     : Jenipher Gonzalez L
--%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="<c:url value='/resources/js/producto.js'/>"></script>

<div class="container-fluid" ng-app="producto" ng-controller="productoCtrl">    
    <div class="tab-content"> 
        <div class="row align-items-center justify-content-center">
            <div class="col-sm-4">
                <h4>Buscar producto</h4> 
            </div>    
        </div>
        <div class="row">
            <div class="col-sm-12">
                <h4>Buscar por...</h4>
            </div>
        </div>
        <br/><br/>
        <div class="row align-items-center justify-content-center">
            <div class="col-sm-3">
                <div class="form-group">
                    <label for="codPro">Código del producto:</label>
                    <input type="text" class="form-control" id="codPro">
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
            <div class="col-sm-12">           
                <button type="button" class="btn btn-success btn-block" ng-click="">Buscar</button>
            </div>
        </div>
        <br/><br/>
        <div class="row">
            <div class="col-sm-12">
                <table class="table table-striped">
                    <tr>
                        <th>ID del producto</th>
                        <th>Nombre del producto</th>
                        <th>Marca</th>
                        <th>Submarca</th>
                        <th>Tipo de producto</th>
                        <th>Nombre del proveedor</th>
                        <th>Existencias</th>
                        <th>Precio compra</th>
                        <th>Precio venta</th>
                        <th>Precio c/IVA</th>
                        <th>Descripción</th>
                    </tr>
                    <tr ng-repeat="x in productos" ng-dbclick="datosDclick">
                        <td>{{x.codPro}}</td>
                        <td>{{x.nomProducto}}</td>
                        <td>{{x.marca}}</td>
                        <td>{{x.subMarca}}</td>
                        <td>{{x.tipoPro}}</td>
                        <td>{{x.nomProv}}</td>
                        <td>{{x.existencia}}</td>
                        <td>{{x.precioCompra}}</td>
                        <td>{{x.precioVenta}}</td>
                        <td>{{x.iva}}</td>
                        <td>{{x.desc}}</td>
                    </tr>
            </div>
        </div> 
    </div>
</div>

