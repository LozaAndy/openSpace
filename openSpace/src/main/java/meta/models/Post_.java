package meta.models;

import java.sql.Timestamp;

import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

import models.Comment;
import models.Post;

@StaticMetamodel(Post.class)
public class Post_ {

	public static volatile SingularAttribute<Post, Long> id;
	public static volatile SingularAttribute<Post, String> summary;
	public static volatile SingularAttribute<Post, String> text;
	public static volatile SingularAttribute<Post, Byte[]> image;
	public static volatile SingularAttribute<Post, Byte[]> video;
	public static volatile SingularAttribute<Post, Timestamp> created;
	public static volatile SingularAttribute<Post, Long> idAccount;
	public static volatile SetAttribute<Post, Comment> comments;

}
