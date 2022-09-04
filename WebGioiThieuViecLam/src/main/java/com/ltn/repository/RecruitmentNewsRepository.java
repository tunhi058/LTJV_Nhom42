/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ltn.repository;

import com.ltn.pojos.RecruitmentNews;
import java.util.List;

/**
 *
 * @author tusnhi
 */
public interface RecruitmentNewsRepository {
    List<RecruitmentNews> getRecruitmentNewses(String kw);
}
