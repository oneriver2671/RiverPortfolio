package perform.svc;

import java.util.List;

import perform.PerformDTO;
import perform.PerformDataModel;

public class PerformListService {
	
	/* 게시글 갯수 세는 메소드 */
	public int getPerformListCount() throws Exception{
		int listCount = 0;
		PerformDataModel performDataModel = PerformDataModel.instance();
//		listCount = boardDAO.selectListCount(sort);	
		
		return listCount;
	}

	/* 게시글 select 메소드 */
	public List<PerformDTO> getPerformList(int page, int limit) throws Exception{
		int listCount = 0;
		List<PerformDTO> performList = null;
		PerformDataModel performDataModel = PerformDataModel.instance();
		performList = performDataModel.getPerformList();	// page, limit도 활용해야 함.
	
		return performList;
	}

}
