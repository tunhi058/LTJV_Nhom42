/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ltn.service.impl;

import com.ltn.pojos.EmployerInfo;
import com.ltn.repository.EmployerInfoRepository;
import com.ltn.service.EmployerInfoService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author tusnhi
 */
@Service
public class EmployerInfoServiceImpl implements EmployerInfoService{
    @Autowired
    private EmployerInfoRepository employerInfoRepository;

    @Override
    public List<EmployerInfo> getEmployerInfos() {
        return this.employerInfoRepository.getEmployerInfos();
    }
    
}
