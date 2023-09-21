package com.ispan.eeit69.utils;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.sql.Clob;
import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.sql.rowset.serial.SerialClob;
import javax.sql.rowset.serial.SerialException;

public class SystemService {
	public static String JNDI_String = "java:comp/env/jdbc/JSPDB";

	public static Clob stringToClob(String text) throws SerialException, SQLException {
		char[] ca = text.toCharArray();
		return new SerialClob(ca);
	};
	public static String clobToString(Clob clob) throws SerialException, SQLException {
		return clob.getSubString(1, (int)clob.length());
	};

	static public Date toSqlDate(String dateString) {
		java.sql.Date date = null;
		java.util.Date utilDate = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		sdf.setLenient(false);
		try {
			utilDate = sdf.parse(dateString);
			date = new Date(utilDate.getTime());
		} catch (ParseException e) {
			throw new IllegalArgumentException(e.getMessage());
		}
		return date;
	}

	public static boolean isValidEmailAddress(String email) {
		boolean result = true;
		final String regex = 
				"^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^-]+(?:\\.[a-zA-Z0-9_!#$%&'*+/=?`{|}~^-]+↵\n"
		    	+ ")*@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$";
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(email);
		if (!matcher.matches()) {
			result = false;
		}
		return result;
	}
	
	public static String fileToBase64(File file) {
	    try {
	        byte[] fileContent = Files.readAllBytes(file.toPath());
	        return Base64.getEncoder().encodeToString(fileContent);
	    } catch (IOException e) {
	        throw new IllegalStateException("could not read file " + file, e);
	    }
	}
	
}
