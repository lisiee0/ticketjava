package com.ticketjava.util;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Random;

public class PasswordHash {

	public static String getSHA256(String input){

		String toReturn = null;
		try {
			MessageDigest digest = MessageDigest.getInstance("SHA-256");
			digest.reset();
			digest.update(input.getBytes("utf8"));
			toReturn = String.format("%064x", new BigInteger(1, digest.digest()));
		} catch (Exception e) {
			e.printStackTrace();
		}

		return toReturn;
	}
	
	public static String getSalt() {
		int leftLimit = 48;
	    int rightLimit = 122;
	    int targetStringLength = 16;
	    Random random = new Random();
	    String salt = random.ints(leftLimit, rightLimit + 1)
	                                   .filter(i -> (i <= 57 || i >= 65) && (i <= 90 || i >= 97))
	                                   .limit(targetStringLength)
	                                   .collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append)
	                                   .toString();
	    return salt;
	}
	
}
