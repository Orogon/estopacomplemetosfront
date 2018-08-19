<%-- 
    Document   : clientes
    Created on : 14/08/2018, 05:35:34 PM
    Author     : Jenipher Gonzalez L
--%>

<div class="container" ng-app="clientes" ng-controller="clientesCtrl">

    <br/><br/><br/>
    <ul class="nav nav-tabs" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#clientes">Datos del cliente</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#direccion">Dirección</a>
        </li>
    </ul>
    
<div class="tab-content">        
        <div id="cliente" class="container tab-pane active">
            <br/><br/>
            <div class="row">
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="ideCliente">Identificador de negocio:</label>
                        <input type="text" class="form-control" id="ideCliente">
                    </div>   
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="nomCliente">Nombre de negocio:</label>
                        <input type="text" class="form-control" id="nomCliente">
                    </div>   
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="telFijo">Teléfono fijo:</label>
                        <input type="text" class="form-control" id="telFijo">
                    </div>   
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="correo">Correo electrónico:</label>
                        <input type="mail" class="form-control" id="correo">
                    </div>   
                </div>
                 <div class="col-sm-6">
                    <div class="form-group">
                        <label for="rfc">RFC:</label>
                        <input type="text" class="form-control" id="rfc">
                    </div>   
                </div>
            </div>
             <br/><br/>
            <div class="row">
                <div class="col-sm-12">
                       <h4 align="center">Datos del encargado</h4>
                       <hr>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="nomRes">Responsable:</label>
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
        </div>
    
        <div id="direccion" class="container tab-pane fade"><br>     
            <div class="row">
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="calle">Calle:</label>
                        <input type="text" class="form-control" id="calle">
                    </div>   
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="numInt">Número interior:</label>
                        <input type="text" class="form-control" id="numInt" >
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="numExt">Número exterior:</label>
                        <input type="text" class="form-control" id="numExt">
                    </div>
                </div>
            </div>            
            <div class="row">
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="numExt">Delegación o municipio:</label>
                        <input type="text" class="form-control" id="numExt">
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="cp">CP:</label>
                        <input type="text" class="form-control" id="cp">
                    </div>
                </div>
            </div>
        </div>
    </div>       
</div>
