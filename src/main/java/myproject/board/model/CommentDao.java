package myproject.board.model;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myCommentDao")
public class CommentDao {
	private final String namespace = "myproject.board.model.";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public CommentDao() { }

	
	public List<Comment> SelectDataByPk(int pmKey) {
		List<Comment> lists = new ArrayList<Comment>();
		lists = sqlSessionTemplate.selectList(namespace + "SelectDataByPk",
				pmKey);
		return lists;
	}	
	
	public Integer InsertComment(Comment bean) {
		Integer cnt = -1;
		cnt = sqlSessionTemplate.insert(namespace + "InsertComment", bean);
		return cnt;
	}	
	
	public int DeleteData1(int pmKey) {
		int cnt = -1;
		cnt = sqlSessionTemplate.delete(namespace + "DeleteData1", pmKey);
		return cnt;
	}	
	
	
}
