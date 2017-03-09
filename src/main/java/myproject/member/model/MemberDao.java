package myproject.member.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myMemberDao")
public class MemberDao {

	private final String namespace = "myproject.member.model.";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public MemberDao() { }
	
	
	
	public Integer InsertData(Member bean) {
		Integer cnt = -99999;
		cnt = sqlSessionTemplate.insert(namespace + "InsertData", bean);
		return cnt;
	}
	
	public Member SelectDataByPk(String pmKey) {
		Member bean = null;
		bean = sqlSessionTemplate.selectOne(namespace + "SelectDataByPk",pmKey);
		return bean;
	}
	
}
