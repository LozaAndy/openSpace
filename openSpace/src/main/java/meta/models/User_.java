package meta.models;

import java.sql.Timestamp;

import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

import models.Post;
import models.User;

@StaticMetamodel(User.class)
public class User_ {
	
	public static volatile SingularAttribute<User, Long> id;
	public static volatile SingularAttribute<User, String> firstName;
	public static volatile SingularAttribute<User, String> lastName;
	public static volatile SingularAttribute<User, String> login;
	public static volatile SingularAttribute<User, String> password;
	public static volatile SingularAttribute<User, String> email;
	public static volatile SingularAttribute<User, Timestamp> dateOfBirth;
	public static volatile SingularAttribute<User, Byte[]> avatar;
	public static volatile SetAttribute<User, Post> posts;
	
}
