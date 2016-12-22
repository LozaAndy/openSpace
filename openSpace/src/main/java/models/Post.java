package models;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "posts", uniqueConstraints={@UniqueConstraint(columnNames={"id"})})
public class Post {   // DB should be modified - need to add new field - "created": TimeStamp 
	
	@Id 
	@SequenceGenerator(name="post_seq", sequenceName="posts_seq")
	@GeneratedValue(strategy = GenerationType.SEQUENCE ,generator="post_seq")
	@Column(name = "id")
	private long id;
	@Column(name = "summary")
	private String summary;
	@Column(name = "text")
	private String text;
	@Column(name = "image")
	private byte[] image;
	@Column(name = "video")
	private byte[] video;
	@Column(name = "created")
	private Timestamp created;
	
	public Timestamp getCreated() {
		return created;
	}

	public void setCreated(Timestamp created) {
		this.created = created;
	}

	public Post() {
		// need add logging and change public modifier
	}

	public long getId() {
		return id;
	}

	public void setId(int id) {
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
	
	

}
