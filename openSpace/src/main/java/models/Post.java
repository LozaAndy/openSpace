package models;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "post", uniqueConstraints = { @UniqueConstraint(columnNames = { "id" }) })
public class Post { 

	@Id
	@SequenceGenerator(name = "acc_seq", sequenceName = "account_seq")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "acc_seq")   // using this sequence for solving issue with generation id in Post 
	private long id;

	private String summary;
	private String text;
	private byte[] image;
	private byte[] video;
	private Timestamp created;

	public User getOwner() {
		return owner;
	}

	public void setOwner(User owner) {
		this.owner = owner;
	}



	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="id_account")
	private User owner;


	@OneToMany(cascade = CascadeType.ALL, orphanRemoval = true)
	private Set<Comment> comments = new HashSet<Comment>(0);

	public Post() {
		// need add logging and change public modifier
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	public byte[] getVideo() {
		return video;
	}

	public void setVideo(byte[] video) {
		this.video = video;
	}

	public Timestamp getCreated() {
		return created;
	}

	public void setCreated(Timestamp created) {
		this.created = created;
	}

	

	public Set<Comment> getComments() {
		return comments;
	}

}