<%-- 
    Document   : modificarClientes
    Created on : 20/08/2018, 03:29:22 PM
    Author     : Jenipher Gonzalez L
--%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="<c:url value='/resources/js/cliente.js'/>"></script>

<div class="container" ng-app="cliente" ng-controller="clienteCtrl">

    <div class="row align-items-center justify-content-center">
        <div class="col-sm-4">
            <h4>Modificar cliente</h4> 
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
                    <label for="nomCliente">Nombre del negocio:</label>
                    <input type="text" class="form-control" id="nomCliente" ng-model="nomCliente">
                </div>   
            </div>
            <div class="vl">        
            </div>
            <div class="col-sm-3">
                <div class="form-group">
                    <label for="nomRes">Nombre del responsable:</label>
                    <input type="text" class="form-control" id="nomRes" ng-model="nomResp">
                </div>   
            </div>
            <div class="col-sm-2">
                <div class="form-group">
                    <label for="apePat">Apellido paterno:</label>
                    <input type="text" class="form-control" id="apePat" ng-model="apePatResp">
                </div>   
            </div>
            <div class="col-sm-2">
                <div class="form-group">
                    <label for="apeMat">Apellido materno:</label>
                    <input type="text" class="form-control" id="apeMat" ng-model="apeMatResp">
                </div>   
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">           
                <button type="button" class="btn btn-success btn-block" ng-click="buscarCliente()">Buscar</button>
            </div>
            <div class="col-sm-6">
                <button type="button" class="btn btn-sucess btn-block" ng-click="modificarCliente()">Modificar</button>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <h4 align="center">Datos del cliente</h4>
            </div>
        </div>
        <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#cliente">Datos del cliente</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#direccion">Dirección</a>
            </li>
        </ul>

        <div class="tab-content">        
            <div id="cliente" class="container tab-pane active">
                <div class="row">
                    <div class="col-sm-2">
                        <div class="form-group">
                            <label for="idCliente">ID de negocio:</label>
                            <input type="text" class="form-control" id="idCliente" readonly="readonly" ng-model="codCliente">
                        </div>   
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label for="nomCliente">Nombre de negocio:</label>
                            <input type="text" class="form-control" id="nomCliente" readonly="readonly" ng-model="nomCliente">
                        </div>   
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label for="telFijo">Teléfono fijo:</label>
                            <input type="text" class="form-control" id="telFijo" ng-model="telFijoNegocio">
                        </div>   
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label for="telCel">Teléfono celular:</label>
                            <input type="text" class="form-control" id="telCel" ng-model="telCelNegocio">
                        </div>   
                    </div>
                </div>
                <div class="row align-items-center justify-content-center">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="correo">Correo electrónico:</label>
                            <input type="mail" class="form-control" id="correo" ng-model="correoElec">
                        </div>   
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label for="rfc">RFC:</label>
                            <input type="text" class="form-control" id="rfc" readonly="readonly" ng-model="rfcNego">
                        </div>   
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <h4 align="center">Datos del responsable</h4>
                        <hr>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label for="nomRes">Nombre(s) del responsable:</label>
                            <input type="text" class="form-control" id="nomRes" ng-model="nomResp">
                        </div>   
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label for="apePat">Apellido paterno:</label>
                            <input type="text" class="form-control" id="apePat" ng-model=apePatResp">
                        </div>   
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label for="apeMat">Apellido materno:</label>
                            <input type="text" class="form-control" id="apeMat" ng-model="apeMatResp">
                        </div>   
                    </div>
                </div>
                <div class="row align-items-center justify-content-center">
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label for="telCell">Teléfono celular:</label>
                            <input type="text" class="form-control" id="telCell" ng-model="telCelResp">
                        </div>   
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label for="telFij">Teléfono fijo:</label>
                            <input type="text" class="form-control" id="telFij" ng-model="telFijResp">
                        </div>   
                    </div>
                </div>
            </div>

            <div id="direccion" class="container tab-pane fade"><br>     
                <div class="row align-items-end justify-content-center">
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label for="calle">Calle:</label>
                            <input type="text" class="form-control" id="calle" ng-model="nombreCalle">
                        </div>   
                    </div>
                    <div class="col-sm-2">
                        <div class="form-group">
                            <label for="numInt">Número interior:</label>
                            <input type="text" class="form-control" id="numInt" ng-model="numInt">
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="form-group">
                            <label for="numExt">Número exterior:</label>
                            <input type="text" class="form-control" id="numExt" ng-model="numExt">
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label for="delMun">Delegación o municipio:</label>
                            <input type="text" class="form-control" id="delMun" ng-model="">
                        </div>
                    </div>
                </div>            
                <div class="row align-items-center justify-content-center">
                    <div class="col-sm-2">
                        <div class="form-group">
                            <label for="cp">CP:</label>
                            <input type="text" class="form-control" id="cp">
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label for="tipoEst">Estado:</label>
                            <select class="form-control" id="tipoEst" >
                                <option>Estado de México</option>
                                <option>Ciudad de México</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>       
    </div>
