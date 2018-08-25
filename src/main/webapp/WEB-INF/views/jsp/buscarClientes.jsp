<%-- 
    Document   : buscarClientes
    Created on : 20/08/2018, 03:29:35 PM
    Author     : Jenipher Gonzalez L
--%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="<c:url value='/resources/js/cliente.js'/>"></script>

<div class="container-fluid" ng-app="cliente" ng-controller="clienteCtrl">    
    <div class="tab-content"> 
        <div class="row align-items-center justify-content-center">
            <div class="col-sm-4">
                <h4>Buscar cliente</h4> 
            </div>    
        </div>
        <div class="row">
            <div class="col-sm-12">
                <h4>Buscar por...</h4>
            </div>
        </div>
        <br/><br/>
        <div class="row align-items-center justify-content-center">
            <div class="col-sm-2">
                <div class="form-group">
                    <label for="codCliente">Código de negocio</label>
                    <input type="text" class="form-control" id="codCliente">
                </div>   
            </div>
            <div class="vl">        
            </div>
            <div class="col-sm-3">
                <div class="form-group">
                    <label for="nomCliente">Nombre del negocio:</label>
                    <input type="text" class="form-control" id="nomCliente">
                </div>   
            </div>
        </div>
        <br/>
            <div class="row align-items-center justify-content-center">
            <div class="col-sm-2">
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
            <div class="col-sm-12">           
                <button type="button" class="btn btn-success btn-block" ng-click="buscar()">Buscar</button>
            </div>
        </div>
        <br/><br/>
        <div class="row">
            <div class="col-sm-12">
                <table class="table table-striped">
                    <tr>
                        <th>Nombre del negocio</th>
                        <th>Teléfono fijo</th>
                        <th>Correo</th>
                        <th>RFC</th>
                        <th>Nombre del responsable</th>
                        <th>Apellido paterno</th>
                        <th>Apellido materno</th>
                    </tr>
                    <tr ng-repeat="x in productos" ng-dbclick="datosDclick">
                        <td>{{x.nomCliente}}</td>
                        <td>{{x.telFijoNegocio}}</td>
                        <td>{{x.correoElec}}</td>
                        <td>{{x.rfcNego}}</td>
                        <td>{{x.nomResp}}</td>
                        <td>{{x.apePatResp}}</td>
                        <td>{{x.apeMatResp}}</td>
                    </tr>
            </div>
        </div> 
    </div>
</div>
