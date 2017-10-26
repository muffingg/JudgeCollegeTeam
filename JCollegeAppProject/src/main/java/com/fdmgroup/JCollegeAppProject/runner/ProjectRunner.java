package com.fdmgroup.JCollegeAppProject.runner;

import java.util.List;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.fdmgroup.JCollegeAppProject.daos.CourseDAO;
import com.fdmgroup.JCollegeAppProject.daos.CourseDAOImpl;
import com.fdmgroup.JCollegeAppProject.daos.StudentDAO;
import com.fdmgroup.JCollegeAppProject.daos.StudentDAOImpl;
import com.fdmgroup.JCollegeAppProject.entities.Course;

public class ProjectRunner {

	public static void main(String[] args) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("DemoPersistence");
		
		CourseDAO courseDao = new CourseDAOImpl(factory);
		StudentDAO studentDao = new StudentDAOImpl(factory);
		
		List<Course> list = courseDao.getAllNonEnrolledCoursesByStudent(studentDao.getStudent("student"));
		System.out.println(list.size());
		
		
		
		factory.close();
	}

}
