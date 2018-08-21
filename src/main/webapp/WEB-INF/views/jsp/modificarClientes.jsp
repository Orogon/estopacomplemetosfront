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
                    <input type="text" class="form-control" id="nomCliente">
                </div>   
            </div>
            <div class="vl">        
            </div>
            <div class="col-sm-3">
                <div class="form-group">
                    <label for="nomRes">Nombre del responsable:</label>
                    <input type="text" class="form-control" id="nomRes">
                </div>   
            </div>
            <div class="col-sm-2">
                <div class="form-group">
                    <label for="apePat">Apellido paterno:</label>
                    <input type="text" class="form-control" id="apePat">
                </div>   
            </div>
            <div class="col-sm-2">
                <div class="form-group">
                    <label for="apeMat">Apellido materno:</label>
                    <input type="text" class="form-control" id="apeMat">
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
                <h4 align="center">Datos del cliente</h4>
            </div>
        </div>
        <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#cliente">Datos del cliente</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#direccion">Direcci�n</a>
            </li>
        </ul>

        <div class="tab-content">        
            <div id="cliente" class="container tab-pane active">
                <div class="row">
                    <div class="col-sm-2">
                        <div class="form-group">
                            <label for="idCliente">ID de negocio:</label>
                            <input type="text" class="form-control" id="idCliente" readonly="readonly">
                        </div>   
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label for="nomCliente">Nombre de negocio:</label>
                            <input type="text" class="form-control" id="nomCliente" readonly="readonly">
                        </div>   
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label for="telFijo">Tel�fono fijo:</label>
                            <input type="text" class="form-control" id="telFijo">
                        </div>   
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label for="telCel">Tel�fono celular:</label>
                            <input type="text" class="form-control" id="telCel">
                        </div>   
                    </div>
                </div>
                <div class="row align-items-center justify-content-center">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="correo">Correo electr�nico:</label>
                            <input type="mail" class="form-control" id="correo">
                        </div>   
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label for="rfc">RFC:</label>
                            <input type="text" class="form-control" id="rfc" readonly="readonly">
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
                            <input type="text" class="form-control" id="nomRes">
                        </div>   
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label for="apePat">Apellido paterno:</label>
                            <input type="text" class="form-control" id="apePat">
                        </div>   
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label for="apeMat">Apellido paterno:</label>
                            <input type="text" class="form-control" id="apeMat">
                        </div>   
                    </div>
                </div>
                <div class="row align-items-center justify-content-center">
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label for="telCel">Tel�fono celular:</label>
                            <input type="text" class="form-control" id="telCel">
                        </div>   
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label for="telFijo">Tel�fono fijo:</label>
                            <input type="text" class="form-control" id="telFijo">
                        </div>   
                    </div>
                </div>
            </div>

            <div id="direccion" class="container tab-pane fade"><br>     
                <div class="row align-items-end justify-content-center">
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label for="calle">Calle:</label>
                            <input type="text" class="form-control" id="calle">
                        </div>   
                    </div>
                    <div class="col-sm-2">
                        <div class="form-group">
                            <label for="numInt">N�mero interior:</label>
                            <input type="text" class="form-control" id="numInt" >
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="form-group">
                            <label for="numExt">N�mero exterior:</label>
                            <input type="text" class="form-control" id="numExt">
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label for="delMun">Delegaci�n o municipio:</label>
                            <input type="text" class="form-control" id="delMun">
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
                            <label for="tipoEstado">Estado:</label>
                            <select class="form-control" id="tipoEst" >
                                <option>Estado de M�xico</option>
                                <option>Ciudad de M�xico</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>       
    </div>
