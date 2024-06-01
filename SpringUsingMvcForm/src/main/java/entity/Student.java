package entity;

import java.util.List;

public class Student {
	private String name;
	private String gender;
	private String password;
	private String yes; // by default it provide true or false(boolean value), if we change some other
						// value
	// then we need to change like this
	// <form:checkbox path="yes" value="jitu" />
	private List<String> course;
	private List<String>item;
	private List<String>country;
	private List<String>fruit;
	private List<String>allGender;

	public List<String> getAllGender() {
		return allGender;
	}

	public void setAllGender(List<String> allGender) {
		this.allGender = allGender;
	}

	public List<String> getFruit() {
		return fruit;
	}

	public void setFruit(List<String> fruit) {
		this.fruit = fruit;
	}

	public List<String> getCountry() {
		return country;
	}

	public void setCountry(List<String> country) {
		this.country = country;
	}

	public List<String> getItem() {
		return item;
	}

	public void setItem(List<String> item) {
		this.item = item;
	}

	public List<String> getCourse() {
		return course;
	}

	public void setCourse(List<String> course) {
		this.course = course;
	}

	public String getYes() {
		return yes;
	}

	public void setYes(String yes) {
		this.yes = yes;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String toString() {
		return name + " " + gender + " " + password + " " + yes+" "+course+" "+item+" "+country+" "+fruit+" "+allGender;
	}
}
