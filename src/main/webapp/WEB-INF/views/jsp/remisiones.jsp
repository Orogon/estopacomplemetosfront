<%-- 
    Document   : remisiones
    Created on : 14/08/2018, 02:48:30 PM
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
  </style>
        <title>Remisiones</title>
    </head>
    <body>
    <div class="container-fluid">
  <div class="row content">
    <div class="col-sm-9">
      <h2 align="center"><small>Remisiones</small></h2>  
      </br></br>
        </div>
      <form class="form-inline">
    <div class="form-group">
      <label>&nbsp;&nbsp;&nbsp;&nbsp;Folio:</label>
      <input type="text" class="form-control" id="folio" name="folio" disabled>
    </div>
    <div class="form-group">
      <label>&nbsp;&nbsp;&nbsp;&nbsp;Fecha:</label>
      <input type="date" class="form-control" id="fecha" name="fecha">
    </div>
    </br>
    <h4 align="center">Datos del cliente</h4>
    <hr>
    </br>
    <div class="form-group">
      <label>&nbsp;&nbsp;&nbsp;&nbsp;Nombre de negocio:</label>
      <input type="text" class="form-control" id="nombre" name="nombre">
    </div>
    <div class="form-group">
      <label>&nbsp;&nbsp;&nbsp;&nbsp;Tipo de venta:</label>
      <select>
  <option value="volvo">Volvo</option>
  <option value="saab">Saab</option>
  <option value="opel">Opel</option>
  <option value="audi">Audi</option>
</select>
    </div>
    <div class="form-group">
      <label>&nbsp;&nbsp;&nbsp;&nbsp;Condición de pago:</label>
      <select>
  <option value="volvo">Volvo</option>
  <option value="saab">Saab</option>
  <option value="opel">Opel</option>
  <option value="audi">Audi</option>
</select>
    </div>
    </br></br></br>
    <div class="form-group">
      <label>&nbsp;&nbsp;&nbsp;&nbsp;Código de producto:</label>
      <input type="text" class="form-control" id="codPro" name="codPro">
    </div>
    <div class="form-group">
      <label>&nbsp;&nbsp;&nbsp;&nbsp;Nombre de producto:</label>
      <input type="text" class="form-control" id="codPro" name="codPro" disabled>
    </div>
    <div class="form-group">
      <label>&nbsp;&nbsp;&nbsp;&nbsp;Cantidad:</label>
      <input type="text" class="form-control" id="cantidad" name="cantidad">
    </div>
        </br></br></br>
     <div class="form-group">
         <label>&nbsp;&nbsp;&nbsp;&nbsp;Precio:</label>
      <input type="text" class="form-control" id="codPro" name="codPro">
    </div>
     <div class="form-group">
      <label>&nbsp;&nbsp;&nbsp;&nbsp;Descuento:</label>
      <input type="text" class="form-control" id="descuento" name="descuento">
    </div>
        <div class="form-group">
      <label>&nbsp;&nbsp;&nbsp;&nbsp;Total:</label>
      <input type="text" class="form-control" id="total" name="total">
    </div>
        </br></br>
        <h4 align="center">Productos</h4>
  <table class="table table-striped" style="width:70%" align="center">
  <tr>
    <th>Cantidad</th>
    <th>Descripción</th> 
    <th>Precio unitario</th>
    <th>Descuento</th>
    <th>Importe</th>
  </tr>
  <tr>
    <td>Jill</td>
    <td>Smith</td>
    <td>50</td>
    <td>noier</td>
    <td>89</td>
  </tr>
  <tr>
    <td>Eve</td>
    <td>Jackson</td>
    <td>94</td>
    <td>Smith</td>
    <td>50</td>
  </tr>
  <tr>
    <td>John</td>
    <td>Doe</td>
    <td>80</td>
    <td>Smith</td>
    <td>50</td>
  </tr>
</table>
    <button type="submit" class="btn btn-default">Generar venta</button>
  </form>
</div>
      </div>
    </div>
    </body>
</html>

