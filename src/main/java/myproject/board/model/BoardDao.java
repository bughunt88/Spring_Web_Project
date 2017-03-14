package myproject.board.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myBoardDao")
public class BoardDao {
	private final String namespace = "myproject.board.model.";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public BoardDao() { }

	public Integer InsertData(Board bean) {
		Integer cnt = -1;
		cnt = sqlSessionTemplate.insert(namespace + "InsertData", bean);
		return cnt;
	}	
	
	public List<Board> SelectDataList( Map<String, String> map) {
		List<Board> lists = new ArrayList<Board>();
		lists = sqlSessionTemplate.selectList(namespace + "SelectDataList", map); 
		return lists;
	}
	
	
	
}
