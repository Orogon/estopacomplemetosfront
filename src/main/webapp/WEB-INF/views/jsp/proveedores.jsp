<%-- 
    Document   : proveedores
    Created on : 14/08/2018, 05:36:14 PM
    Author     : Jenipher Gonzalez L
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">   
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 1500px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 
    }
  
    /*radio del borde de agrupacion*/
    p.round2 {
    border: 2px solid red;
    border-radius: 8px;
}
  </style>
        <title>Proveedores</title>
    </head>
    <body>
    <div class="container-fluid">
  <div class="row content">
    <div class="col-sm-9">
      <h2 align="center"><small>Proveedores</small></h2>      
 </br></br>
        </div>
      <form class="form-inline">
    <div class="form-group">
      <label>&nbsp;&nbsp;&nbsp;&nbsp;Número de proveedor:</label>
      <input type="text" class="form-control" id="numCliente" name="numProveedor" disabled>
    </div>
          <div class="form-group">
      <label>&nbsp;&nbsp;&nbsp;&nbsp;Razón social:</label>
      <input type="text" class="form-control" id="nomCliente" name="nomCliente">
    </div>
          </br></br></br>
    <div class="form-group">
      <label>&nbsp;&nbsp;&nbsp;&nbsp;Responsable:</label>
      <input type="text" class="form-control" id="nomCliente" name="nomCliente">
    </div>
    <div class="form-group">
      <label>&nbsp;&nbsp;&nbsp;&nbsp;Apellido paterno:</label>
      <input type="text" class="form-control" id="apePat" name="apePat">
    </div>
    <div class="form-group">
      <label>&nbsp;&nbsp;&nbsp;&nbsp;Apellido materno:</label>
      <input type="text" class="form-control" id="apeMat" name="apeMat">
    </div>
           </br></br></br>
    <div class="form-group">
      <label>&nbsp;&nbsp;&nbsp;&nbsp;Teléfono fijo:</label>
      <input type="text" class="form-control" id="telefono" name="telefono">
    </div>
    <div class="form-group">
      <label>&nbsp;&nbsp;&nbsp;&nbsp;Teléfono celular:</label>
      <input type="text" class="form-control" id="telCel" name="telCel">
    </div>
            <div class="form-group">
      <label>&nbsp;&nbsp;&nbsp;&nbsp;Correo Electronico:</label>
      <input type="email" class="form-control" id="email" name="email">
    </div>
           </br></br></br>
    <div class="form-group">
      <label>&nbsp;&nbsp;&nbsp;&nbsp;RFC:</label>
      <input type="text" class="form-control" id="rfc" name="rfc">
    </div>
           </br>
          </br>
          <h4 align="center"> Dirección</h4>
          <hr>
          </br>
    <div class="form-group">
      <label>&nbsp;&nbsp;&nbsp;&nbsp;Calle:</label>
      <input type="text" class="form-control" id="calle" name="calle">
    </div>
    <div class="form-group">
      <label>&nbsp;&nbsp;&nbsp;&nbsp;Número interior:</label>
      <input type="text" class="form-control" id="numInt" name="numInt">
    </div>
    <div class="form-group">
      <label>&nbsp;&nbsp;&nbsp;&nbsp;Número exterior:</label>
      <input type="text" class="form-control" id="numExt" name="numExt">
    </div>
          </br></br></br>
    <div class="form-group">
      <label>&nbsp;&nbsp;&nbsp;&nbsp;Delegación o municipio:</label>
      <input type="text" class="form-control" id="delMun" name="delMun">
    </div>
    <div class="form-group">
      <label>&nbsp;&nbsp;&nbsp;&nbsp;Estado:</label>
      <input type="text" class="form-control" id="estado" name="estado">
    </div>
    <div class="form-group">
      <label>Código postal:</label>
      <input type="text" class="form-control" id="cp" name="cp">
    </div>
    </br></br></br>
    <button type="submit" class="btn btn-default">Agregar</button>
  </form>
</div>
      </div>
    </div>
    </body>
</html>

