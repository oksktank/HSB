package kr.swmaestro.hsb.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;

/**
 * @author 심영재
 */
@RooJavaBean
@RooToString
@RooEntity
public class FriendRelation {
	
	@ManyToOne
	@JoinColumn(name = "username1", nullable = false)
	private UserInfo user1;

	@ManyToOne
	@JoinColumn(name = "username2", nullable = false)
	private UserInfo user2;

	@Column(nullable = false)
	private Date relateDate;
	
}
