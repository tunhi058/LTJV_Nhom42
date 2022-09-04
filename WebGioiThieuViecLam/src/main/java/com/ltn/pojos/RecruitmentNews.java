/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ltn.pojos;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author tusnhi
 */
@Entity
@Table(name = "recruitment_news")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "RecruitmentNews.findAll", query = "SELECT r FROM RecruitmentNews r"),
    @NamedQuery(name = "RecruitmentNews.findById", query = "SELECT r FROM RecruitmentNews r WHERE r.id = :id"),
    @NamedQuery(name = "RecruitmentNews.findByTitle", query = "SELECT r FROM RecruitmentNews r WHERE r.title = :title"),
    @NamedQuery(name = "RecruitmentNews.findByJobLevel", query = "SELECT r FROM RecruitmentNews r WHERE r.jobLevel = :jobLevel"),
    @NamedQuery(name = "RecruitmentNews.findBySalary", query = "SELECT r FROM RecruitmentNews r WHERE r.salary = :salary"),
    @NamedQuery(name = "RecruitmentNews.findByExperience", query = "SELECT r FROM RecruitmentNews r WHERE r.experience = :experience"),
    @NamedQuery(name = "RecruitmentNews.findByCreatedDate", query = "SELECT r FROM RecruitmentNews r WHERE r.createdDate = :createdDate"),
    @NamedQuery(name = "RecruitmentNews.findByDeadlineDate", query = "SELECT r FROM RecruitmentNews r WHERE r.deadlineDate = :deadlineDate"),
    @NamedQuery(name = "RecruitmentNews.findByImage", query = "SELECT r FROM RecruitmentNews r WHERE r.image = :image")})
public class RecruitmentNews implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 255)
    @Column(name = "title")
    private String title;
    @Size(max = 255)
    @Column(name = "job_level")
    private String jobLevel;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "salary")
    private BigDecimal salary;
    @Size(max = 255)
    @Column(name = "experience")
    private String experience;
    @Column(name = "created_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdDate;
    @Column(name = "deadline_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date deadlineDate;
    @Size(max = 255)
    @Column(name = "image")
    private String image;
    @JoinColumn(name = "field", referencedColumnName = "name")
    @ManyToOne
    @JsonIgnore
    private Category field;
    @JoinColumn(name = "employer_id", referencedColumnName = "id")
    @ManyToOne
    @JsonIgnore

    private EmployerInfo employerId;

    public RecruitmentNews() {
    }

    public RecruitmentNews(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getJobLevel() {
        return jobLevel;
    }

    public void setJobLevel(String jobLevel) {
        this.jobLevel = jobLevel;
    }

    public BigDecimal getSalary() {
        return salary;
    }

    public void setSalary(BigDecimal salary) {
        this.salary = salary;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public Date getDeadlineDate() {
        return deadlineDate;
    }

    public void setDeadlineDate(Date deadlineDate) {
        this.deadlineDate = deadlineDate;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Category getField() {
        return field;
    }

    public void setField(Category field) {
        this.field = field;
    }

    public EmployerInfo getEmployerId() {
        return employerId;
    }

    public void setEmployerId(EmployerInfo employerId) {
        this.employerId = employerId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof RecruitmentNews)) {
            return false;
        }
        RecruitmentNews other = (RecruitmentNews) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.ltn.pojos.RecruitmentNews[ id=" + id + " ]";
    }

}
