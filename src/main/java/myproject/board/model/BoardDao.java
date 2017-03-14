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
	
	public List<Board> SelectDataList() {
		List<Board> lists = new ArrayList<Board>();
		lists = sqlSessionTemplate.selectList(namespace + "SelectDataList"); 
		return lists;
	}
	
	public List<Board> SelectDataList1() {
		List<Board> lists1 = new ArrayList<Board>();
		lists1 = sqlSessionTemplate.selectList(namespace + "SelectDataList1"); 
		return lists1;
	}
	
	public Board SelectDataByPk(int pmKey) {
		Board bean = null;
		bean = sqlSessionTemplate.selectOne(namespace + "SelectDataByPk",
				pmKey);
		return bean;
	}	
	
	public Board SelectDataByPk1(int pmKey) {
		Board bean = null;
		bean = sqlSessionTemplate.selectOne(namespace + "SelectDataByPk1",
				pmKey);
		return bean;
	}	
	
	
}
