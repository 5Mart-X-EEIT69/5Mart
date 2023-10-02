package com.ispan.eeit69.model;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.LinkedHashSet;
import java.util.Set;

import org.springframework.web.multipart.MultipartFile;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.OrderBy;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;

@Entity
@Table(name = "Member_5mart") // 在資料庫的table名稱
public class member implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String username;
	private String account;
	private String password;
	private Timestamp registerTime;
	
    @OneToOne(mappedBy = "member", cascade = CascadeType.ALL)
    private TeacherPicture TeacherPicture;
    

    @OneToOne(mappedBy = "member", cascade = CascadeType.ALL)
    private Introduction introduction;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "member_course_5mart" , 
    joinColumns = {
    		@JoinColumn(name = "member_id", referencedColumnName = "id")
    },
    inverseJoinColumns = {
    		@JoinColumn(name = "course_id", referencedColumnName = "id")
    }
    )
    private Set<Course> course = new LinkedHashSet<Course>();


    @OneToMany(mappedBy = "teacher", cascade = CascadeType.ALL)
    @OrderBy("id")
    private Set<Course> createCourse = new LinkedHashSet<Course>();
    
//    @OneToOne(mappedBy = "member", cascade = CascadeType.ALL)
//    private AccountSetting accountSetting;

	// 建構式
	public member() {
		super();
	}

	public member(Integer id, String username, String account, String password) {
		this.username = username;
		this.account = account;
		this.password = password;
	}


	@Transient // 不會映射到資料庫中，但仍然可以在 Java 程式碼中使用。這可以用於存儲某個計算結果或臨時數據，而不需要將其持久化。
	MultipartFile memberMultipartFile;  // 這是Spring Framework 中的一個介面，通常用於處理上傳文件的功能，如圖片、文檔、視頻等
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Timestamp getRegisterTime() {
		return registerTime;
	}

	public void setRegisterTime(Timestamp registerTime) {
		this.registerTime = registerTime;
	}
	
	

	public TeacherPicture getTeacherPicture() {
		return TeacherPicture;
	}

	public void setTeacherPicture(TeacherPicture teacherPicture) {
		TeacherPicture = teacherPicture;
	}

	public Set<Course> getCourse() {
		return course;
	}

	public void setCourse(Set<Course> course) {
		this.course = course;
	}	

	public Set<Course> getCreateCourse() {
		return createCourse;
	}

	public void setCreateCourse(Set<Course> createCourse) {
		this.createCourse = createCourse;
	}

	

	public Introduction getIntroduction() {
		return introduction;
	}

	public void setIntroduction(Introduction introduction) {
		this.introduction = introduction;
	}

	public MultipartFile getMemberMultipartFile() {
		return memberMultipartFile;
	}

	public void setMemberMultipartFile(MultipartFile memberMultipartFile) {
		this.memberMultipartFile = memberMultipartFile;
	}
	
//	public AccountSetting getAccountSetting() {
//		return accountSetting;
//	}
//
//	public void setAccountSetting(AccountSetting accountSetting) {
//		this.accountSetting = accountSetting; 
//	}

	@Override
	public String toString() {
		return "member [id=" + id + ", username=" + username + ", account=" + account + ", password=" + password
				+ ", registerTime=" + registerTime + ", TeacherPicture=" + TeacherPicture + "]";
	}

	
	
	

}
