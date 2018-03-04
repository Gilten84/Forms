package test;

import beans.User;

public class Test {
	public static void main(String[] args)
	{	
		User u = new User("Greg","hgt");
		if (u.validate())
		{
			System.out.println("Validation is ok");
		} else
		{
			System.out.println("Validation has failed");
		}
	}

}
