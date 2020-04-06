/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by amainicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package webportal.whs.main.service.impl;

import java.util.List;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import webportal.whs.main.service.WebPortalMainDefaultVO;
import webportal.whs.main.service.WebPortalMainVO;

import org.springframework.stereotype.Repository;

/**
 * @Class Name : WebPortalMainDAO.java
 * @Description : WebPortalMain DAO Class
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2009.03.16           최초생성
 *
 * @author 개발프레임웍크 실행환경 개발팀
 * @since 2009. 03.16
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */

@Repository("webPortalMainDAO")
public class WebPortalMainDAO extends EgovAbstractDAO {

	/**
	 * 글을 등록한다.
	 * @param vo - 등록할 정보가 담긴 WebPortalMainVO
	 * @return 등록 결과
	 * @exception Exception
	 */
	public String insertSample(WebPortalMainVO vo) throws Exception {
		return (String) insert("webPortalMainDAO.insertSample", vo);
	}

	/**
	 * 글을 수정한다.
	 * @param vo - 수정할 정보가 담긴 WebPortalMainVO
	 * @return void형
	 * @exception Exception
	 */
	public void updateSample(WebPortalMainVO vo) throws Exception {
		update("webPortalMainDAO.updateSample", vo);
	}

	/**
	 * 글을 삭제한다.
	 * @param vo - 삭제할 정보가 담긴 WebPortalMainVO
	 * @return void형
	 * @exception Exception
	 */
	public void deleteSample(WebPortalMainVO vo) throws Exception {
		delete("webPortalMainDAO.deleteSample", vo);
	}

	/**
	 * 글을 조회한다.
	 * @param vo - 조회할 정보가 담긴 WebPortalMainVO
	 * @return 조회한 글
	 * @exception Exception
	 */
	public WebPortalMainVO selectSample(WebPortalMainVO vo) throws Exception {
		return (WebPortalMainVO) select("webPortalMainDAO.selectSample", vo);
	}

	/**
	 * 글 목록을 조회한다.
	 * @param searchMap - 조회할 정보가 담긴 Map
	 * @return 글 목록
	 * @exception Exception
	 */
	public List<?> selectSampleList(WebPortalMainDefaultVO webPortalMainVO) throws Exception {
		return list("webPortalMainDAO.selectSampleList", webPortalMainVO);
	}

	/**
	 * 글 총 갯수를 조회한다.
	 * @param searchMap - 조회할 정보가 담긴 Map
	 * @return 글 총 갯수
	 * @exception
	 */
	public int selectSampleListTotCnt(WebPortalMainDefaultVO searchVO) {
		return (Integer) select("webPortalMainDAO.selectSampleListTotCnt", searchVO);
	}

}
