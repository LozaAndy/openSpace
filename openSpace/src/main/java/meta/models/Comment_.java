package meta.models;

import java.sql.Timestamp;

import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

import models.Comment;


@StaticMetamodel(Comment.class)
public class Comment_ {

	public static volatile SingularAttribute<Comment, Long> id;
	public static volatile SingularAttribute<Comment, Timestamp> created;
	public static volatile SingularAttribute<Comment, String> text;
	public static volatile SingularAttribute<Comment, Byte[]> avatar;
	public static volatile SingularAttribute<Comment, Long> idPost;
	public static volatile SingularAttribute<Comment, Long> idAccount;
	
}
