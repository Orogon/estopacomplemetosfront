<%-- 
    Document   : remisiones
    Created on : 14/08/2018, 02:48:30 PM
    Author     : Jenipher Gonzalez L
--%>
<div class="container">
    
    <div class="row align-items-end justify-content-end">        
        <div class="col-sm-3">
            <div class="form-group">
                <label for="folio">Folio:</label>
                <input type="text" class="form-control" id="folio" readonly="readonly">
            </div>   
        </div>
        <div class="col-sm-3">
            <div class="form-group">
                <label for="fecha">Fecha:</label>
                <input type="date" class="form-control" id="fecha">
            </div>   
        </div>
    </div>
    
    <ul class="nav nav-tabs" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#cliente">Datos del clinete</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#productos">Datos del procducto</a>
        </li>
    </ul>
    
    <div class="tab-content">        
        <div id="cliente" class="container tab-pane active">
            <br/><br/>
            <div class="row row align-items-center justify-content-center">
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="folio">Nombre de negocio:</label>
                        <input type="text" class="form-control" id="folio">
                    </div>   
                </div>
                <div class="col-sm-2">
                   <div class="form-group">
                        <label for="tipoV">Tipo de venta:</label>
                        <select class="form-control" id="tipoV" >
                            <option>Crédito</option>
                            <option>Contado</option>
                        </select>
                   </div>
                </div>
                <div class="col-sm-2">
                   <div class="form-group">
                        <label for="condicionP">Condición de pago:</label>
                        <select class="form-control" id="condicionP" >
                            <option>8 días</option>
                            <option>15 días</option>
                            <option>30 días</option>
                        </select>
                   </div>
                </div>
            </div>
        </div>
        <div id="productos" class="container tab-pane fade"><br>     
            <div class="row">
                <div class="col-sm-3">
                    <div class="form-group">
                        <label for="folio">Código de producto:</label>
                        <input type="text" class="form-control" id="folio">
                    </div>   
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <label for="folio">Nombre de producto:</label>
                        <input type="text" class="form-control" id="folio">
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <label for="folio">Cantidad:</label>
                        <input type="text" class="form-control" id="folio">
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <label for="folio">Precio:</label>
                        <input type="text" class="form-control" id="folio">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">           
                    <button type="button" class="btn btn-success btn-block">Agregar</button>
                </div>
                <div class="col-sm-6">           
                    <button type="button" class="btn btn-danger btn-block">Eliminar</button>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-sm-12">
                    <table class="table table-striped">
                        <tr>
                            <th>Cantidad</th>
                            <th>Descripción</th> 
                            <th>Precio unitario</th>
                            <th>Importe</th>
                        </tr>
                        <tr>
                            <td>15</td>
                            <td>Pegamento Kolaloka</td>
                            <td>15.50</td>
                            <td>155.00</td>
                        </tr>
                </div>
            </div>       
        </div>
    </div>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
</div>