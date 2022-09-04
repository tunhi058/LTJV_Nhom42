/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ltn.repository.impl;

import com.ltn.pojos.RecruitmentNews;
import com.ltn.repository.RecruitmentNewsRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
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
public class RecruitmentNewsRepositoryImpl implements RecruitmentNewsRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public List<RecruitmentNews> getRecruitmentNewses(String kw) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<RecruitmentNews> query = builder.createQuery(RecruitmentNews.class);
        Root root = query.from(RecruitmentNews.class);
        query = query.select(root);
        
        if(!kw.isEmpty() && kw != null) {
            Predicate p = builder.like(root.get("title").as(String.class),
                    String.format("%%%s%%", kw));
            
            query = query.where(p);
        }
        
        Query q = session.createQuery(query);
        return q.getResultList();
    }
    
}
