<%-- 
    Document   : facturas
    Created on : 14/08/2018, 05:36:37 PM
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
        <title>Facturas</title>
    </head>
    <body>
    <div class="container-fluid">
  <div class="row content">
    <div class="col-sm-9">
      <h2 align="center"><small>Facturas</small></h2>      
        </div>
      </br></br></br></br></br></br></br></br></br></br></br></br>
      <h4 align="center">
          Ingrese al link para hacer sus facturas electr�nicas</h4>
          </br></br></br></br></br></br></br></br>
        <button type="button" class="btn btn-default" onclick="parent.open('https://cfdiau.sat.gob.mx/nidp/wsfed/ep?id=SATUPCFDiCon&sid=2&option=credential&sid=2')">Facturar</button>
      </div>
    </div>
    </body>
</html>

