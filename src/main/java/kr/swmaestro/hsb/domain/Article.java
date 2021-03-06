package kr.swmaestro.hsb.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;

/**
 * @author 심영재
 */
@RooJavaBean
@RooToString
@RooEntity
public class Article {
	
	@ManyToOne
	@JoinColumn(name = "subjectId", nullable = false)
	private Subject subject;
	
	@NotEmpty
	@Size(max = 500)
	@Column(length = 500, nullable = false)
	private String title;

	@NotEmpty
	@Size(max = 3000)
	@Column(length = 3000, nullable = false)
	private String content;

	@ManyToOne
	@JoinColumn(name = "writerUsername", nullable = false)
	private UserInfo writerUser;

	@Column(nullable = false)
	private Date writeDate;

	@OneToMany(mappedBy = "article", cascade = { CascadeType.ALL }, orphanRemoval = true)
	private List<Comment> commentList = new ArrayList<Comment>();
	
}
