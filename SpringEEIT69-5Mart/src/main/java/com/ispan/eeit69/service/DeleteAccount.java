package com.ispan.eeit69.service;

import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class DeleteAccount {
	
	public static void main(String[] args) {
		//創建一個JFrame 窗口
		JFrame frame = new JFrame("彈出窗口示例");
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setSize(300, 200);
	
		//創建一個按鈕
		JButton button = new JButton("點擊我彈出窗口");
		
		//添加按鈕的點擊事件處理程序
		button.addActionListener(new ActionListener( ) {
			@Override
			public void actionPerformed(ActionEvent e) {
				//創建一個彈出對話框
				JOptionPane.showMessageDialog(frame, "Hello, 這是一個彈出視窗示例!", "提示", JOptionPane.INFORMATION_MESSAGE);
			}
		});
		
		//將按鈕添加到視窗
		frame.getContentPane().setLayout(new FlowLayout());
		frame.getContentPane().add(button);
		
		//設定視窗可見
		frame.setVisible(true);
	}

}
