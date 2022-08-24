/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ltn.controllers;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author tusnhi
 */
@Controller
public class IndexController {
    @RequestMapping("/")
    public String index(Model model) {
        List<String> categories = new ArrayList<>();
        categories.add("Mobile");
        categories.add("Laptop");        
        categories.add("PC");

        model.addAttribute("categories", categories);
        return "index";
    }
    
    @RequestMapping("/hello/{name}")
    public String hello(Model model, 
            @PathVariable(value = "name") String name) {
        model.addAttribute("message", "Welcome " + name + "!!!");
        return "hello";
    }
}
