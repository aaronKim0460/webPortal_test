/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package webportal.whs.ppl.service.impl;

import java.util.List;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import webportal.whs.ppl.service.WebPortalPplDefaultVO;
import webportal.whs.ppl.service.WebPortalPplVO;

import org.springframework.stereotype.Repository;

/**
 * @Class Name : WebPortalPplDAO.java
 * @Description : WebPortalPpl DAO Class
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

@Repository("webPortalPplDAO")
public class WebPortalPplDAO extends EgovAbstractDAO {

	/**
	 * 글을 등록한다.
	 * @param vo - 등록할 정보가 담긴 WebPortalPplVO
	 * @return 등록 결과
	 * @exception Exception
	 */
	public String insertSample(WebPortalPplVO vo) throws Exception {
		return (String) insert("webPortalPplDAO.insertSample", vo);
	}

	/**
	 * 글을 수정한다.
	 * @param vo - 수정할 정보가 담긴 WebPortalPplVO
	 * @return void형
	 * @exception Exception
	 */
	public void updateSample(WebPortalPplVO vo) throws Exception {
		update("webPortalPplDAO.updateSample", vo);
	}

	/**
	 * 글을 삭제한다.
	 * @param vo - 삭제할 정보가 담긴 WebPortalPplVO
	 * @return void형
	 * @exception Exception
	 */
	public void deleteSample(WebPortalPplVO vo) throws Exception {
		delete("webPortalPplDAO.deleteSample", vo);
	}

	/**
	 * 글을 조회한다.
	 * @param vo - 조회할 정보가 담긴 WebPortalPplVO
	 * @return 조회한 글
	 * @exception Exception
	 */
	public WebPortalPplVO selectSample(WebPortalPplVO vo) throws Exception {
		return (WebPortalPplVO) select("webPortalPplDAO.selectSample", vo);
	}

	/**
	 * 글 목록을 조회한다.
	 * @param searchMap - 조회할 정보가 담긴 Map
	 * @return 글 목록
	 * @exception Exception
	 */
	public List<?> selectSampleList(WebPortalPplDefaultVO webPortalPplVO) throws Exception {
		return list("webPortalPplDAO.selectSampleList", webPortalPplVO);
	}

	/**
	 * 글 총 갯수를 조회한다.
	 * @param searchMap - 조회할 정보가 담긴 Map
	 * @return 글 총 갯수
	 * @exception
	 */
	public int selectSampleListTotCnt(WebPortalPplDefaultVO searchVO) {
		return (Integer) select("webPortalPplDAO.selectSampleListTotCnt", searchVO);
	}

}
