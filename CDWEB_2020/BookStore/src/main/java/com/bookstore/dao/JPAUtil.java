//package com.bookstore.dao;
//
//import javax.persistence.EntityManagerFactory;
//import javax.persistence.Persistence;
//
//public class JPAUtil {
//	private static EntityManagerFactory emf;
//	static {
//		try {
//			emf = Persistence.createEntityManagerFactory("BookStoreWebsite");
//			
//		}catch (Throwable ex) {
//			System.err.println();
//		}
//	}
//	public static EntityManagerFactory getEntityManagerFactory() {
//		return emf;
//	}
//}
