package myproject.work.model;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myaCommentDao")
public class aCommentDao {
	private final String namespace = "myproject.work.model.";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public aCommentDao() { }

	
	public List<aComment> SelectDataByPk(int pmKey) {
		List<aComment> lists = new ArrayList<aComment>();
		lists = sqlSessionTemplate.selectList(namespace + "SelectDataByPk",
				pmKey);
		return lists;
	}	
	
	public Integer InsertaComment(aComment bean) {
		Integer cnt = -1;
		cnt = sqlSessionTemplate.insert(namespace + "InsertaComment", bean);
		return cnt;
	}	
		
	public int DeleteData1(int pmKey) {
		int cnt = -1;
		cnt = sqlSessionTemplate.delete(namespace + "DeleteData1", pmKey);
		return cnt;
	}	
	
	public int GetTotalCount1( int pmKey ) {
		int cnt = -1;
		cnt = sqlSessionTemplate.selectOne(namespace + "GetTotalCount", pmKey);
		return cnt;
	}
	
}
