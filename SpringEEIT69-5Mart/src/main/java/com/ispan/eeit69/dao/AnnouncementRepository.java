package com.ispan.eeit69.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ispan.eeit69.model.Announcement;

@Repository
public interface AnnouncementRepository extends JpaRepository<Announcement, Integer>{

}
