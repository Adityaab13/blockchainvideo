package com.vss.mail;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class SenderAuthentication extends Authenticator {

	@Override
	protected PasswordAuthentication getPasswordAuthentication() {
		return (new PasswordAuthentication(
				"fourmusketeers.co@gmail.com",
				"Four1397!"));
	}
}
