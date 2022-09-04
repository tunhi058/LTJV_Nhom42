/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ltn.service;

import com.ltn.pojos.RecruitmentNews;
import java.util.List;

/**
 *
 * @author tusnhi
 */
public interface RecruitmentNewsService {
    List<RecruitmentNews> getRecruitmentNewses(String kw);
}
