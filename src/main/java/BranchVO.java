package goott.spring.project1.domain;

// 지점
public class BranchVO {
	private String branchId;   // 지점 ID
	private String branchName; // 지점 이름
	
	public BranchVO() {}

	public BranchVO(String branchId, String branchName) {
		super();
		this.branchId = branchId;
		this.branchName = branchName;
	}

	public String getBranchId() {
		return branchId;
	}

	public void setBranchId(String branchId) {
		this.branchId = branchId;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	@Override
	public String toString() {
		return "BranchVO [branchId=" + branchId + ", branchName=" + branchName + "]";
	}
	
}
