<%-- 
    Document   : menu
    Created on : 13/08/2018, 08:43:45 PM
    Author     : Jenipher Gonzalez L
--%>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="${pageContext.request.contextPath}/">Logo</a>

  <!--Dropdowns-->
  <ul class="navbar-nav">
    <!-- Dropdown Remision-->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Remisiones
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="${pageContext.request.contextPath}/remisiones">Generar remision</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/modificarRemisiones">Modificar remision</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/buscarRemisiones">Buscar remision</a>
      </div>
    </li>
    <!-- Dropdown Cliente-->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Clientes
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="${pageContext.request.contextPath}/clientes">Nuevo cliente</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/modificarClientes">Modificar cliente</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/buscarClientes">Buscar cliente</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/eliminarClientes">Eliminar cliente</a>
      </div>
    </li>
    <!-- Dropdown Producto-->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Productos
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="${pageContext.request.contextPath}/productos">Nuevo producto</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/modificarProductos">Modificar producto</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/buscarProductos">Buscar producto</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/eliminarProductos">Eliminar producto</a>
      </div>
    </li>
  </ul>
</nav>
<br>


</div>
