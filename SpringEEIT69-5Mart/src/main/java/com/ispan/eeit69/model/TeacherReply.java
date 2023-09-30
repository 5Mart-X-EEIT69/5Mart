package com.ispan.eeit69.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="TeacherReply_5Mart")
public class TeacherReply {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer TeacherReplyId;
	
	private String TeacherReply;
	
	@OneToOne
    @JoinColumn(name = "student_question_id")
    private StudentQuestion studentQuestion;

	public TeacherReply() {
		
	}



	public TeacherReply(String teacherReply, StudentQuestion studentQuestion) {
		this.TeacherReply = teacherReply;
		this.studentQuestion = studentQuestion;
	}



	public TeacherReply(String teacherReply) {
		this.TeacherReply = teacherReply;
	}



	public Integer getTeacherReplyId() {
		return TeacherReplyId;
	}

	public void setTeacherReplyId(Integer teacherReplyId) {
		TeacherReplyId = teacherReplyId;
	}

	public String getTeacherReply() {
		return TeacherReply;
	}

	public void setTeacherReply(String teacherReply) {
		TeacherReply = teacherReply;
	}

	public StudentQuestion getStudentQuestion() {
		return studentQuestion;
	}

	public void setStudentQuestion(StudentQuestion studentQuestion) {
		this.studentQuestion = studentQuestion;
	}

	@Override
	public String toString() {
		return "TeacherReply [TeacherReplyId=" + TeacherReplyId + ", TeacherReply=" + TeacherReply
				+ ", studentQuestion=" + studentQuestion + "]";
	}
	
	

}
