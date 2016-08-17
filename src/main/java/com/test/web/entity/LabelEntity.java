package com.test.web.entity;

public class LabelEntity {

	private int labelId;
	private String label;
	public int getLabelId() {
		return labelId;
	}
	public void setLabelId(int labelId) {
		this.labelId = labelId;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	
	@Override
	public String toString(){
		return "Label [labelId=" + labelId + ",label=" + label;
	}
	
}
