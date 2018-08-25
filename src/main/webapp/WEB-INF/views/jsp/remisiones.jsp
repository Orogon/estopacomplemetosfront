<%-- 
    Document   : remisiones
    Created on : 14/08/2018, 02:48:30 PM
    Author     : Jenipher Gonzalez L
--%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="<c:url value='/resources/js/remision.js'/>"></script>

<div class="container" ng-app="remision" ng-controller="remisionCtrl">


    <div class="row align-items-end justify-content-end">        
        <div class="col-sm-2">
            <div class="form-group">
                <label for="folio">Folio:</label>
                <input type="text" class="form-control" id="folio" readonly="readonly" ng-model="folioRemision">
            </div>   
        </div>
        <div class="col-sm-3">
            <div class="form-group">
                <label for="fecha">Fecha:</label>
                <input type="date" class="form-control" id="fecha" ng-model="fechaRemision">
            </div>   
        </div>
    </div>

    <ul class="nav nav-tabs" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#cliente">Datos del cliente</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#productos">Datos del producto</a>
        </li>
    </ul>

    <div class="tab-content">        
        <div id="cliente" class="container tab-pane active">            
            <br/><br/>            
            <div class="row row align-items-center justify-content-center">
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="nomNeg">Nombre del negocio:</label>
                        <input list="clientes" class="form-control" data-ng-model="cliente" onkeyup="mayus(this);" ng-keyup="$event.keyCode == 13 ? traeCliente(cliente) : null">
                        <datalist id="clientes">
                            <option data-ng-repeat="cliente in listaClientes | limitTo:10" value='{{cliente.nombreNegocio}}'/>
                        </datalist> 
                    </div>   
                </div>
                <div class="col-sm-2">
                    <div class="form-group">
                        <label for="tipoV">Tipo de venta:</label>
                        <select class="form-control" id="tipoVenta" ng-model="tipoVenta" >
                            <option>Crédito</option>
                            <option>Contado</option>
                        </select>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="form-group">
                        <label for="diasCredito">Condición de pago:</label>
                        <select class="form-control" id="diasCredito" ng-model="diasCredito">
                            <option>8 días</option>
                            <option>15 días</option>
                            <option>30 días</option>
                        </select>
                    </div>
                </div>
            </div>
            <br/>
            <center><b><div style="color:#FF0000;">{{descripcionError}}</div></b></center>
            <br/><br/>
            <div class="row">
                <div class="col-sm-12">
                                    <h4 align="center">Dirección</h4>
                <hr>
                </div>
            </div>
            <div class="row row align-items-center justify-content-center">
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="calle">Calle:</label>
                        <input type="text" class="form-control" id="calle" readonly="readonly" ng-model="calle">
                    </div>   
                </div>
                <div class="col-sm-2">
                    <div class="form-group">
                        <label nuIntfor="numInt">Número interior:</label>
                        <input type="text" class="form-control" id="numInt" readonly="readonly" ng-model="nuInt">
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="form-group">
                        <label for="numExt">Número exterior:</label>
                        <input type="text" class="form-control" id="numExt" readonly="readonly" ng-model="numExt">
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <label for="delMun">Delegación o municipio:</label>
                        <input type="text" class="form-control" id="delMun" readonly="readonly" ng-model="delMun">
                    </div>
                </div>
            
        </div>
            <div class="row row align-items-center justify-content-center">
                <div class="col-sm-3">
                    <div class="form-group">
                        <label for="colonia">Colonia:</label>
                        <input type="text" class="form-control" id="cp" readonly="readonly" ng-model="colonia">
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="form-group">
                        <label for="cp">Código Postal:</label>
                        <input type="text" class="form-control" id="cp" readonly="readonly" ng-model="cp">
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <label for="estado">Estado:</label>
                        <input type="text" class="form-control" id="estado" readonly="readonly" ng-model="estado">
                    </div>
                </div>
            </div>
                    </div>
        <div id="productos" class="container tab-pane fade"><br> 
            <center><b><div style="color:#FF0000;">{{descripcionErrorProd}}</div></b></center>
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="codPro">Código de producto:</label>
                        <input list="productosCod" class="form-control" data-ng-model="productoCod" onkeyup="mayus(this);" ng-keyup="$event.keyCode == 13 ? traeProductoXCod(productoCod) : null">
                        <datalist id="productosCod">
                            <option data-ng-repeat="productoCod in listaProductos | limitTo:10" value='{{productoCod.codigoProducto}}'/>
                        </datalist> 
                    </div>   
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="nomPro">Nombre de producto:</label>
                        <input list="productosName" class="form-control" data-ng-model="productoNom" onkeyup="mayus(this);" ng-keyup="$event.keyCode == 13 ? traeProductoXNom(productoNom) : null">
                        <datalist id="productosName">
                            <option data-ng-repeat="productoName in listaProductos | limitTo:10" value='{{productoName.nombreProducto}}'/>
                        </datalist> 
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3">
                    <div class="form-group">
                        <label for="cantidad">Cantidad:</label>
                        <input type="number" class="form-control" id="cantidad" ng-model="cantidad">
                    </div>
                    
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <label for="precio">Precio:</label>
                        <input type="number" class="form-control" id="folio" ng-model="precio">
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <label for="descuento">Descuento:</label>
                        <input type="number" class="form-control" id="descuento" ng-model="descuento">
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <center><label for="totalVenta">Total venta:</label><br/></center>
                        <!--<input type="number" class="form-control" id="totalVenta" ng-model="totalRemising-on" readonly="readonly">-->
                        <center><b><span ng-model="totalRemision">{{totalRemision| currency}}</span></b></center>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">           
                    <button type="button" class="btn btn-success btn-block" ng-click="agregaTextoTabla()">Agregar</button>
                </div>
                <div class="col-sm-6">
                    <button type="button" class="btn btn-info btn-block" ng-click="generarVenta()">Generar venta</button>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-sm-12">
                    <table class="table table-striped">
                        <tr>
                            <th>Cantidad</th>
                            <th>Código</th>
                            <th>Descripcion</th>
                            <th>Precio Unitario</th>
                            <th>Descuento</th>
                            <th>Precio unitario c/ Descuento</th>
                            <th>Importe</th>
                            <th>Acciones</th>
                        </tr>
                        <tr ng-repeat="x in productos" ng-dbclick="datosDclick">
                            <td>{{x.cantidadProducto}}</td>
                            <td>{{x.codigoProducto}}</td>
                            <td>{{x.descripcion}}</td>
                            <td>{{x.precioVenta | currency}}</td>
                            <td>{{x.descuento === 'No aplica' ?  x.descuento : x.descuento+'%'}}</td>
                            <td>{{x.precioDesc| currency}}</td>
                            <td>{{x.importe| currency}}</td>
                            <td><button class="btn btn-outline-danger btn-block" data-ng-click="removeItem($index)">Quitar</button></td>
                        </tr>
                </div>
            </div>       
        </div>
    </div>
</div>