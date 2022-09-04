/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ltn.repository.impl;

import com.ltn.pojos.EmployerInfo;
import com.ltn.pojos.RecruitmentNews;
import com.ltn.repository.EmployerInfoRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author tusnhi
 */
@Repository
@Transactional
public class EmployerInfoRepositoryImpl implements EmployerInfoRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    @Transactional
    public List<EmployerInfo> getEmployerInfos() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<RecruitmentNews> query = builder.createQuery(RecruitmentNews.class);
        Root root = query.from(RecruitmentNews.class);
        query = query.select(root);

        Query q = session.createQuery("From EmployerInfo");

        return q.getResultList();
    }
}
