/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ltn.controllers;

import com.ltn.pojos.User;
import com.ltn.service.EmployerInfoService;
import com.ltn.service.RecruitmentNewsService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author tusnhi
 */
@Controller
public class HomeController {

    @Autowired
    private RecruitmentNewsService recruitmentNewsService;
    @Autowired
    private EmployerInfoService employerInfoService;

    @Autowired
    private Environment env;

    @RequestMapping("/")
    public String index(Model model, @RequestParam Map<String, String> param) {
        String kw = param.getOrDefault("kw", "");
        model.addAttribute("recruitmentNewses", this.recruitmentNewsService.getRecruitmentNewses(kw));
        model.addAttribute("employerInfos", this.employerInfoService.getEmployerInfos());

        return "index";
    }

}
