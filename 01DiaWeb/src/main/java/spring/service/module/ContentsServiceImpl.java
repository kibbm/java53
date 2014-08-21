package spring.service.module;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import spring.domain.Contents;
import spring.service.module.dao.ContentsDao;


@Service("contentsService")
public class ContentsServiceImpl implements ContentsService {
	///Field
	@Autowired
	@Qualifier("contentsDao")
	ContentsDao contentsDao;
	
	///Constructor
	public ContentsServiceImpl() {
		System.out.println("::"+getClass()+" default Constructor Call.....");
	}

	///Method
	//User :: contents list가져오기	
	@Override
	public List<Contents> getConList(String conLevel) throws Exception {
		return contentsDao.getConList(conLevel);
	}
	
	
	//Admin :: 컨텐츠만들기 페이지에서 모든 컨텐츠 가지고 오기
	@Override
	public List<Contents> getAllCon() throws Exception {
		return contentsDao.getAllCon();
	}

	//Admin :: 레벨에 따른 컨텐츠 갯수
	@Override
	public int getConCount(String conLevel) throws Exception {
		return contentsDao.getConCount(conLevel);
	}

	//Admin:: Contents insert
	@Override
	public int addCon(Contents con) throws Exception {
		return contentsDao.addCon(con);
	}

	//Admin:: module insert에 필요한 cNo 값 가져오기
	@Override
	public int getCNo(Contents con) throws Exception {
		return contentsDao.getCNo(con);
	}	

}