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
    public String clientes(String remisiones){         
      return "clientes";     
    }
    
    @RequestMapping(value = {"/proveedores"}, method = RequestMethod.GET)
    public String proveedores(String remisiones){         
      return "proveedores";     
    }
    
    @RequestMapping(value = {"/productos"}, method = RequestMethod.GET)
    public String productos(String remisiones){         
      return "productos";     
    }
    
    @RequestMapping(value = {"/remisiones"}, method = RequestMethod.GET)
    public String remisiones(String remisiones){         
      return "remisiones";     
    }
    
    @RequestMapping(value = {"/facturas"}, method = RequestMethod.GET)
    public String facturas(String remisiones){         
      return "facturas";     
    }
    
    @RequestMapping(value = {"/inventario"}, method = RequestMethod.GET)
    public String inventario(String remisiones){         
      return "inventario";     
    }
    
    @RequestMapping(value = {"/reportes"}, method = RequestMethod.GET)
    public String reportes(String remisiones){         
      return "reportes";     
    }
    
    @RequestMapping(value = {"/utilerias"}, method = RequestMethod.GET)
    public String utilerias(String remisiones){         
      return "utilerias";     
    }
}
