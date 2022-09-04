/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ltn.pojos;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author tusnhi
 */
@Entity
@Table(name = "employer_info")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "EmployerInfo.findAll", query = "SELECT e FROM EmployerInfo e"),
    @NamedQuery(name = "EmployerInfo.findById", query = "SELECT e FROM EmployerInfo e WHERE e.id = :id"),
    @NamedQuery(name = "EmployerInfo.findByEmployerName", query = "SELECT e FROM EmployerInfo e WHERE e.employerName = :employerName"),
    @NamedQuery(name = "EmployerInfo.findByEmployerDescription", query = "SELECT e FROM EmployerInfo e WHERE e.employerDescription = :employerDescription"),
    @NamedQuery(name = "EmployerInfo.findByLocation", query = "SELECT e FROM EmployerInfo e WHERE e.location = :location")})
public class EmployerInfo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Size(max = 255)
    @Column(name = "employer_name")
    private String employerName;
    @Size(max = 255)
    @Column(name = "employer_description")
    private String employerDescription;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "location")
    private String location;
    @JoinColumn(name = "id", referencedColumnName = "id", insertable = false, updatable = false)
    @OneToOne(optional = false)
    @JsonIgnore
    private User user;
    @OneToMany(mappedBy = "employerId")
    @JsonIgnore
    private Collection<RecruitmentNews> recruitmentNewsCollection;
    @OneToMany(mappedBy = "employerId")
    @JsonIgnore

    private Collection<Comment> commentCollection;

    public EmployerInfo() {
    }

    public EmployerInfo(Integer id) {
        this.id = id;
    }

    public EmployerInfo(Integer id, String location) {
        this.id = id;
        this.location = location;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmployerName() {
        return employerName;
    }

    public void setEmployerName(String employerName) {
        this.employerName = employerName;
    }

    public String getEmployerDescription() {
        return employerDescription;
    }

    public void setEmployerDescription(String employerDescription) {
        this.employerDescription = employerDescription;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @XmlTransient
    public Collection<RecruitmentNews> getRecruitmentNewsCollection() {
        return recruitmentNewsCollection;
    }

    public void setRecruitmentNewsCollection(Collection<RecruitmentNews> recruitmentNewsCollection) {
        this.recruitmentNewsCollection = recruitmentNewsCollection;
    }

    @XmlTransient
    public Collection<Comment> getCommentCollection() {
        return commentCollection;
    }

    public void setCommentCollection(Collection<Comment> commentCollection) {
        this.commentCollection = commentCollection;
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
        if (!(object instanceof EmployerInfo)) {
            return false;
        }
        EmployerInfo other = (EmployerInfo) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.ltn.pojos.EmployerInfo[ id=" + id + " ]";
    }

}
