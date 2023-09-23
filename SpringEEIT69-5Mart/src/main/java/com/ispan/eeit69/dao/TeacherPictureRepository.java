package com.ispan.eeit69.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ispan.eeit69.model.TeacherPicture;

@Repository
public interface TeacherPictureRepository extends JpaRepository<TeacherPicture, Integer>{

}
