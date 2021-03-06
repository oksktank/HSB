// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package kr.swmaestro.hsb.domain;

import java.lang.Integer;
import java.lang.String;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import kr.swmaestro.hsb.domain.UserInfo;
import org.springframework.transaction.annotation.Transactional;

privileged aspect UserInfo_Roo_Entity {
    
    declare @type: UserInfo: @Entity;
    
    @PersistenceContext
    transient EntityManager UserInfo.entityManager;
    
    @Version
    @Column(name = "version")
    private Integer UserInfo.version;
    
    public Integer UserInfo.getVersion() {
        return this.version;
    }
    
    public void UserInfo.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void UserInfo.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void UserInfo.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            UserInfo attached = UserInfo.findUserInfo(this.username);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void UserInfo.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void UserInfo.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public UserInfo UserInfo.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        UserInfo merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager UserInfo.entityManager() {
        EntityManager em = new UserInfo().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long UserInfo.countUserInfoes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM UserInfo o", Long.class).getSingleResult();
    }
    
    public static List<UserInfo> UserInfo.findAllUserInfoes() {
        return entityManager().createQuery("SELECT o FROM UserInfo o", UserInfo.class).getResultList();
    }
    
    public static UserInfo UserInfo.findUserInfo(String username) {
        if (username == null || username.length() == 0) return null;
        return entityManager().find(UserInfo.class, username);
    }
    
    public static List<UserInfo> UserInfo.findUserInfoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM UserInfo o", UserInfo.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
