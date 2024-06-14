package kr.co.itcruit.mypage.enterprise.service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;

import kr.co.itcruit.ServiceResult;
import kr.co.itcruit.vo.AccountVO;
import kr.co.itcruit.vo.ApplicantCareerStatVO;
import kr.co.itcruit.vo.ApplicantEduStatVO;
import kr.co.itcruit.vo.ApplicantGenderStatVO;
import kr.co.itcruit.vo.ApplicantPassStatVO;
import kr.co.itcruit.vo.ApplyProcessListVO;
import kr.co.itcruit.vo.AvailLangListVO;
import kr.co.itcruit.vo.BoardBBS201PaginationVO;
import kr.co.itcruit.vo.BoardBBS202PaginationVO;
import kr.co.itcruit.vo.BoardVO;
import kr.co.itcruit.vo.CareerVO;
import kr.co.itcruit.vo.CertificateVO;
import kr.co.itcruit.vo.CustomPaginationInfoVO;
import kr.co.itcruit.vo.EachProcessApplyPassVO;
import kr.co.itcruit.vo.EntAccountVO;
import kr.co.itcruit.vo.EntCodingTestQstnDsnctVO;
import kr.co.itcruit.vo.EntCodingtestVO;
import kr.co.itcruit.vo.EntIntroQSTNDSNCTVO;
import kr.co.itcruit.vo.EntIntroQSTNVO;
import kr.co.itcruit.vo.EnterpriseVO;
import kr.co.itcruit.vo.ExperienceVO;
import kr.co.itcruit.vo.LogRecruitTableVO;
import kr.co.itcruit.vo.PortfolioVO;
import kr.co.itcruit.vo.QstnDSNCTVO;
import kr.co.itcruit.vo.RecruitApplicantVO;
import kr.co.itcruit.vo.RecruitVO;
import kr.co.itcruit.vo.ResumeVO;
import kr.co.itcruit.vo.UpdateApplicantVO;

public interface IMyEnterpriseService {

	public ServiceResult recruitRegisterInsert(RecruitVO recruitVO, HttpServletRequest req);

	public ServiceResult recruitRegisterEdit(RecruitVO recruitVO, HttpServletRequest req);
	
	public ServiceResult recruitRegisterRemove(RecruitVO recruitVO, HttpServletRequest req);

	public List<RecruitVO> recruitSelectList();

	public List<RecruitVO> recruitSelectInfo(String recruitNo, String pstnCmmncdNm);

	public List<RecruitVO> recruitSelectListByEntNo(int entNo);

	public int selectRecruitCount(CustomPaginationInfoVO<RecruitVO> customPagingVO);

	public List<RecruitVO> selectRecruitList(CustomPaginationInfoVO<RecruitVO> customPagingVO);

	public List<ApplyProcessListVO> selectProcess(String recruitNo, String pstnCmmncdNm);

	public List<EntIntroQSTNDSNCTVO> selectDsnct(String recruitNo, String pstnCmmncdNm);

	public ServiceResult qstnDSNCTInsert(QstnDSNCTVO qdv);

	public ServiceResult qstnDSNCTUpdate(int entIntroQstnSeqNo, String entIntroQstnUpdateCn);

	public ServiceResult qstnDSNCTDelete(int entIntroQstnSeqNo);
	
	public List<EntIntroQSTNVO> getentIntroQstnNo(String recruitNo, String pstnCmmncdNm);

	public List<ApplyProcessListVO> selectApplyProcessList(String recruitNo, String pstnCmmncdNm);

	public int selecetAccountListCount(CustomPaginationInfoVO<AccountVO> accountList);

	public List<AccountVO> selectOrderList(CustomPaginationInfoVO<AccountVO> accountList);

	public int insetEachProcess(EachProcessApplyPassVO eachProcessApplyPassVO);

	public String selectEachProcessNo(EachProcessApplyPassVO eachProcessApplyPassVO);

	public List<EntIntroQSTNDSNCTVO> selectOrderDsnct(String recruitNo, String pstnCmmncdNm, String orderNumber);

	public int BBS201Count(int entNo);

	public List<BoardVO> BBS201List(BoardBBS201PaginationVO<BoardVO> bBS201PagingVO);

	public ServiceResult noticeInsert(HttpServletRequest req, BoardVO bv);

	public int BBS202Count(int entNo);

	public List<BoardVO> BBS202List(BoardBBS202PaginationVO<BoardVO> bBS202PagingVO);

	public ServiceResult idCheck(String id);

	public ServiceResult signUp(AccountVO av);

	public int countId(int entNo);

	public List<EntAccountVO> selectId(int entNo);

	public ServiceResult deleteId(String accountId);

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public List<Map<String, String>> getQstnAnswer(Map<String, String> qstnAnswer);

	public ServiceResult updateApplicantPass(String applyNo, String updateClsNm, int updateOrderNumber);

	public List<RecruitApplicantVO> getApplyNumber(String applyNo);

	public List<LogRecruitTableVO> getApplyHit(String recruitNo,String pstnCmmncdNm);

	public List<ApplicantPassStatVO> getApplyPass(String applyNo, String yn);

	public List<ApplicantCareerStatVO> getApplyCareer(String applyNo);

	public List<ApplicantGenderStatVO> getApplyGender(String applyNo);

	public List<ApplicantEduStatVO> getApplyEdu(String applyNo);

	public List<Map<String, String>> getPstnCmmncdList();

	public List<Map<String, String>> getPreferCmmncdNm();

	public ServiceResult updateProcessDate(int updateSeq, LocalDateTime startDate, LocalDateTime endDate);

	public int getTodayApply(String customEntNo);

	public int getTotalRecruitCount(String customEntNo);

	public int getTotalApply(String customEntNo);

	public EnterpriseVO getEnterMyInfo(int entNo);

	public int getEndedRecruitCount(String customEntNo);

	public List<Map<String, Object>> getProgressRecruit(int entNo);

	public List<Map<String, Object>> getRecentApply(String customEntNo2);

	public List<RecruitVO> getDeadLineRecruit(int entNo);

	public int insertApplicantPass(UpdateApplicantVO uav);

	public AccountVO selecteResumeByRsmNo(String rsmNo);

	public ResumeVO selecteEducationByRsmNo(String rsmNo);

	public List<CareerVO> selecteCareerByRsmNo(String rsmNo);

	public List<ExperienceVO> selectExperienceByRsmNo(String rsmNo);

	public List<CertificateVO> selectCertificateByRsmNo(String rsmNo);

	public List<PortfolioVO> selectPortfolioByRsmNo(String rsmNo);

	public List<AvailLangListVO> selectAvailLangListByRsmNo(String rsmNo);

	public ServiceResult updateApplicantFail(String eachProcessSeq);

	public List<EntIntroQSTNVO> getEntCodingTestNo(String recruitNo, String pstnCmmncdNm);

	public ServiceResult codingTestInsert(EntCodingTestQstnDsnctVO ectqdv);

	public List<EntCodingTestQstnDsnctVO> selectCondingTestOrder(String recruitNo, String pstnCmmncdNm,
			String orderNumber);

	public List<AccountVO> selectCodingTesterList(CustomPaginationInfoVO<AccountVO> accountList);

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public List<EntCodingtestVO> getcodingtestAnswer(EntCodingtestVO entcodingtestVO);

	//기업이 올린 공고 마지막 차수일때(2차 이상)
	public ServiceResult updateFinalApplicantPass(String eachProcessSeq);

	public Integer selectCodingTestLastNoOrder(int entCodingTestNo);

	public List<AccountVO> getApplicantRtcList(CustomPaginationInfoVO<AccountVO> accountList);

	public ApplyProcessListVO selectApplicantDate(Map<String, String> params);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	
	
	
	
	
	
	



}
