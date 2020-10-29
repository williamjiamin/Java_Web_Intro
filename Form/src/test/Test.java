package test;

import beans.User;

public class Test {

	public static void main(String[] args) {
		User user = new User("William@lexueoude.com", "lexueoude");
		if (user.validate()) {
			System.out.println("Bean's validation is good");
		} else {
			System.out.println(user.getMessage());
		}
	}

}
