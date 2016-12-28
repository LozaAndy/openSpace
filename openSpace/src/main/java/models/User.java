package models;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "account", uniqueConstraints = { @UniqueConstraint(columnNames = { "id" }) })
public class User {

	@Id
	@SequenceGenerator(name = "acc_seq", sequenceName = "account_seq")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "acc_seq")
	private long id;

	@Column(name = "first_name")
	private String firstName;

	@Column(name = "last_name")
	private String lastName;

	private String login;

	private String password;

	private String email;

	private byte[] avatar;

	@Column(name = "date_of_birth")
	private Timestamp dateOfBirth;
	
	@OneToMany( mappedBy="owner", fetch=FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
	private Set<Post> posts = new HashSet<Post>();
	
	@OneToMany(cascade = CascadeType.ALL, orphanRemoval = true)
	private Set<Comment> comments = new HashSet<Comment>(0);
			
	public Set<Post> getPosts() {
		return this.posts;
	}
	
	public Set<Comment> getComments() {
		return this.comments;
	}

	public User() {
		// need add logging when new object was created
		// change the modifier public to... ?
	}

	public long getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public byte[] getAvatar() {
		return avatar;
	}

	public void setAvatar(byte[] avatar) {
		this.avatar = avatar;
	}

	public Timestamp getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Timestamp dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

}
