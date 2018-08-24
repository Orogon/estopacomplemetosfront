package com.estopaycomplementos.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Jenipher Gonzalez L
 */

@Controller
public class IndexController {
    
    @RequestMapping(value = {"/","/inicio"}, method = RequestMethod.GET)
    public String welcomePage(String index){         
        return "inicio";     
    }
    
    @RequestMapping(value = {"/clientes"}, method = RequestMethod.GET)
    public String clientes(String clientes){         
      return "clientes";     
    }
    
    @RequestMapping(value = {"/modificarClientes"}, method = RequestMethod.GET)
    public String modificarClientes(String modificarClientes){         
        return "modificarClientes";     
    }
    
    @RequestMapping(value = {"/eliminarClientes"}, method = RequestMethod.GET)
    public String eliminarClientes(String eliminarClientes){         
        return "eliminarClientes";     
    }
    
    @RequestMapping(value = {"/buscarClientes"}, method = RequestMethod.GET)
    public String buscarClientes(String buscarClientes){         
        return "buscarClientes";     
    }
    
    @RequestMapping(value = {"/proveedores"}, method = RequestMethod.GET)
    public String proveedores(String proveedores){         
      return "proveedores";     
    }
    
    @RequestMapping(value = {"/productos"}, method = RequestMethod.GET)
    public String productos(String productos){         
      return "productos";     
    }
    
    @RequestMapping(value = {"/modificarProductos"}, method = RequestMethod.GET)
    public String modificarProductos(String modificarProductos){         
      return "modificarProductos";     
    }
    
    @RequestMapping(value = {"/buscarProductos"}, method = RequestMethod.GET)
    public String buscarProductos(String buscarProductos){         
      return "buscarProductos";     
    }
    
    @RequestMapping(value = {"/eliminarProductos"}, method = RequestMethod.GET)
    public String eliminarProductos(String eliminarProductos){         
      return "eliminarProductos";     
    }
    
    @RequestMapping(value = {"/remisiones"}, method = RequestMethod.GET)
    public String remisiones(String remisiones){         
      return "remisiones";     
    }
    
    @RequestMapping(value = {"/modificarRemisiones"}, method = RequestMethod.GET)
    public String modificarRemisiones(String modificarRemisiones){         
      return "modificarRemisiones";     
    }
    
    @RequestMapping(value = {"/buscarRemisiones"}, method = RequestMethod.GET)
    public String buscarRemisiones(String buscarRemisiones){         
      return "buscarRemisiones";     
    }
    
    @RequestMapping(value = {"/facturas"}, method = RequestMethod.GET)
    public String facturas(String facturas){         
      return "facturas";     
    }
    
    @RequestMapping(value = {"/inventarios"}, method = RequestMethod.GET)
    public String inventario(String inventarios){         
      return "inventario";     
    }
    
    @RequestMapping(value = {"/reportes"}, method = RequestMethod.GET)
    public String reportes(String reportes){         
      return "reportes";     
    }
    
    @RequestMapping(value = {"/utilerias"}, method = RequestMethod.GET)
    public String utilerias(String utilerias){         
      return "utilerias";     
    }
}
