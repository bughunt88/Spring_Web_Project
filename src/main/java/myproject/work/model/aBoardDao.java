package myproject.work.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myaBoardDao")
public class aBoardDao {
	private final String namespace = "myproject.work.model.";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public aBoardDao() { }

	public Integer InsertData(aBoard bean) {
		Integer cnt = -1;
		cnt = sqlSessionTemplate.insert(namespace + "InsertData", bean);
		return cnt;
	}	
	
	public List<aBoard> SelectDataList(RowBounds rowBounds) {
		List<aBoard> lists = new ArrayList<aBoard>();
		lists = sqlSessionTemplate.selectList(namespace + "SelectDataList", null, rowBounds); 
		return lists;
	}
	
	public aBoard SelectDataByPk(int pmKey) {
		aBoard bean = null;
		bean = sqlSessionTemplate.selectOne(namespace + "SelectDataByPk",
				pmKey);
		return bean;
	}	
	
	public aBoard SelectDataByPk1(int pmKey) {
		aBoard bean = null;
		bean = sqlSessionTemplate.selectOne(namespace + "SelectDataByPk1",
				pmKey);
		return bean;
	}	
	
	public int DeleteData(int pmKey) {
		int cnt = -1;
		cnt = sqlSessionTemplate.delete(namespace + "DeleteData", pmKey);
		return cnt;
	}	
	
	public Integer UpdateData(aBoard bean) {
		Integer cnt = -1;
		cnt = sqlSessionTemplate.update(namespace + "UpdateData", bean);
		return cnt;
	}
	
	public int GetTotalCount(  ) {
		int cnt = -1;
		cnt = sqlSessionTemplate.selectOne(namespace + "GetTotalCount");
		return cnt;
	}
	
	
}
