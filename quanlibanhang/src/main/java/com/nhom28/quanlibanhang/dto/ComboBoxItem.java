package com.nhom28.quanlibanhang.dto;

import java.io.Serializable;

public class ComboBoxItem implements Serializable{
	private static final long serialVersionUID = 8949570569098290731L;

	private Integer key;
	
	private String value;

	public ComboBoxItem(Integer key, String value) {
		super();
		this.key = key;
		this.value = value;
	}

	@Override
    public String toString()
    {
        return value;
    }

	
	public Integer getKey() {
		return key;
	}

	public void setKey(Integer key) {
		this.key = key;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}
	
}
