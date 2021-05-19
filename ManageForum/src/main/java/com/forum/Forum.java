package com.forum;

public class Forum {

	
	
	
	private int forumID;
	private String forumName;
	private String forumContent;
	private String forumCatagory;
	private String createdBy;
	
	
	public Forum(int forumID, String forumName, String forumContent, String forumCatagory, String createdBy) {
	
		
		this.forumID = forumID;
		this.forumName = forumName;
		this.forumContent = forumContent;
		this.forumCatagory = forumCatagory;
		this.createdBy = createdBy;
	}


	public int getForumID() {
		return forumID;
	}




	public String getForumName() {
		return forumName;
	}





	public String getForumContent() {
		return forumContent;
	}



	public String getForumCatagory() {
		return forumCatagory;
	}


	

	public String getCreatedBy() {
		return createdBy;
	}
	
	
	
	
	
	
	
	
}
