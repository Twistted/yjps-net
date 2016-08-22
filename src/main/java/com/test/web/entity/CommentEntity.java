package com.test.web.entity;

import java.util.Date;

public class CommentEntity {
	
	private int commentId;
	private int houseId;
	private int userId;
	private int agentId;
	private String content;
    private int state;
    private Date timestamp;
    
	public int getCommentId() {
		return commentId;
	}
	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}
	public int getHouseId() {
		return houseId;
	}
	public void setHouseId(int houseId) {
		this.houseId = houseId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getAgentId() {
		return agentId;
	}
	public void setAgentId(int agentId) {
		this.agentId = agentId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public Date getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(Date timestamp) {
		this.timestamp = timestamp;
	}
	
	@Override
	public String toString(){
		return "Comment [commentId=" + commentId + ",houseId=" + houseId + ",userId=" + userId + ",agentId=" + 
	           agentId + ",contente=" + content + ",state=" + state + ",timestamp=" + timestamp;
	}
	
}
