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
@Table(name = "comment", uniqueConstraints = { @UniqueConstraint(columnNames = { "id" }) })
public class Comment {

	@Id
	@SequenceGenerator(name = "comm_seq", sequenceName = "comment_seq")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "comm_seq")
	private long id;

	private Timestamp created;
	private String text;
	private byte[] avatar;

	@Column(name = "id_post")
	private long idPost;

	@Column(name = "id_account")
	private long idAccount;

	public Comment() {
		// need add logging and change public modifier
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Timestamp getCreated() {
		return created;
	}

	public void setCreated(Timestamp created) {
		this.created = created;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public byte[] getAvatar() {
		return avatar;
	}

	public void setAvatar(byte[] avatar) {
		this.avatar = avatar;
	}

	public long getIdPost() {
		return idPost;
	}

	public void setIdPost(long idPost) {
		this.idPost = idPost;
	}

	public long getIdAccount() {
		return idAccount;
	}

	public void setIdAccount(long idAccount) {
		this.idAccount = idAccount;
	}

}