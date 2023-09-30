package com.ispan.eeit69.model;

import java.sql.Timestamp;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "StudentQuestion_5Mart")
public class StudentQuestion {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer StudentQuestionId;

	private Timestamp StudentQuestionTime;

	private String QuestionText;
	
	@ManyToOne
    @JoinColumn(name = "questionMember_id") 
    private member member;
	
	@ManyToOne
    @JoinColumn(name = "course_id")
    private Course course;
	
	@OneToOne(mappedBy = "studentQuestion", cascade = CascadeType.ALL)
    private TeacherReply teacherReply;

	public StudentQuestion(Integer studentQuestionId, Timestamp studentQuestionTime, String questionText,
			com.ispan.eeit69.model.member member, Course course, TeacherReply teacherReply) {
		super();
		this.StudentQuestionId = studentQuestionId;
		this.StudentQuestionTime = studentQuestionTime;
		this.QuestionText = questionText;
		this.member = member;
		this.course = course;
		this.teacherReply = teacherReply;
	}

	public Integer getStudentQuestionId() {
		return StudentQuestionId;
	}

	public void setStudentQuestionId(Integer studentQuestionId) {
		StudentQuestionId = studentQuestionId;
	}

	public Timestamp getStudentQuestionTime() {
		return StudentQuestionTime;
	}

	public void setStudentQuestionTime(Timestamp studentQuestionTime) {
		StudentQuestionTime = studentQuestionTime;
	}

	public String getQuestionText() {
		return QuestionText;
	}

	public void setQuestionText(String questionText) {
		QuestionText = questionText;
	}

	public member getMember() {
		return member;
	}

	public void setMember(member member) {
		this.member = member;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public TeacherReply getTeacherReply() {
		return teacherReply;
	}

	public void setTeacherReply(TeacherReply teacherReply) {
		this.teacherReply = teacherReply;
	}

	@Override
	public String toString() {
		return "StudentQuestion [StudentQuestionId=" + StudentQuestionId + ", StudentQuestionTime="
				+ StudentQuestionTime + ", QuestionText=" + QuestionText + ", member=" + member + ", course=" + course
				+ ", teacherReply=" + teacherReply + "]";
	}

	
}
