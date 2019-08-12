package com.nestCor.nest.services.space.model.vo;

import java.io.Serializable;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Component
@Getter @Setter @ToString
public class Space implements Serializable {

	private static final long serialVersionUID = 1005L;
	private int spaceNo;
	private int bizNo;
	private String spaceName;
	private String spaceExplain;
	private String rightSet;
	private Date createDate;
	private String postSpaceDir;
	
	public Space() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Space(int spaceNo, int bizNo, String spaceName, String spaceExplain, String rightSet, Date createDate,
			String postSpaceDir) {
		super();
		this.spaceNo = spaceNo;
		this.bizNo = bizNo;
		this.spaceName = spaceName;
		this.spaceExplain = spaceExplain;
		this.rightSet = rightSet;
		this.createDate = createDate;
		this.postSpaceDir = postSpaceDir;
	}

	public int getSpaceNo() {
		return spaceNo;
	}

	public void setSpaceNo(int spaceNo) {
		this.spaceNo = spaceNo;
	}

	public int getBizNo() {
		return bizNo;
	}

	public void setBizNo(int bizNo) {
		this.bizNo = bizNo;
	}

	public String getSpaceName() {
		return spaceName;
	}

	public void setSpaceName(String spaceName) {
		this.spaceName = spaceName;
	}

	public String getSpaceExplain() {
		return spaceExplain;
	}

	public void setSpaceExplain(String spaceExplain) {
		this.spaceExplain = spaceExplain;
	}

	public String getRightSet() {
		return rightSet;
	}

	public void setRightSet(String rightSet) {
		this.rightSet = rightSet;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getPostSpaceDir() {
		return postSpaceDir;
	}

	public void setPostSpaceDir(String postSpaceDir) {
		this.postSpaceDir = postSpaceDir;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Space [spaceNo=" + spaceNo + ", bizNo=" + bizNo + ", spaceName=" + spaceName + ", spaceExplain="
				+ spaceExplain + ", rightSet=" + rightSet + ", createDate=" + createDate + ", postSpaceDir="
				+ postSpaceDir + "]";
	}
	
	
}
