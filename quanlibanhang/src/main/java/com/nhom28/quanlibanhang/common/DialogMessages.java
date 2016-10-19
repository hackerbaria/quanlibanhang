package com.nhom28.quanlibanhang.common;

import javax.swing.JOptionPane;

public final class DialogMessages {
	
	private DialogMessages() {
		// Do nothing
	}
	
	public static void infoBox(String infoMessage, String titleBar)
    {
        JOptionPane.showMessageDialog(null, infoMessage, "InfoBox: " + titleBar, JOptionPane.INFORMATION_MESSAGE);
    }
	
	public static void errorBox(String errorMessage, String titleBar)
    {
        JOptionPane.showMessageDialog(null, errorMessage, "ERROR: " + titleBar, JOptionPane.ERROR_MESSAGE);
    }

}
