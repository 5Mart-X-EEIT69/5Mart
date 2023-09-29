package com.ispan.eeit69.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ispan.eeit69.model.Course;
import com.ispan.eeit69.model.member;

@Repository
public interface CourseRepository extends JpaRepository<Course, Integer> {
	List<Course> findByTeacher(member teacher);
    Optional<Course> findByIdAndTeacher(Integer id, member teacher);
}
