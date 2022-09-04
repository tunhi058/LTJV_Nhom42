/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ltn.service.impl;

import com.ltn.pojos.RecruitmentNews;
import com.ltn.repository.RecruitmentNewsRepository;
import com.ltn.service.RecruitmentNewsService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author tusnhi
 */
@Service
public class RecruitmentNewsServiceImpl implements RecruitmentNewsService{
    @Autowired
    private RecruitmentNewsRepository recruitmentNewsRepository;
            
    @Override
    public List<RecruitmentNews> getRecruitmentNewses(String kw) {
        return this.recruitmentNewsRepository.getRecruitmentNewses(kw);
    }
    
}
