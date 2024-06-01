package controller.entity;

public class Address 
{
	private String city;
	private String state;
	
	public String toString()
	{
		return city+" "+state;
	}

	public String getCity() {
		return city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public void setCity(String city) {
		this.city = city;
	}



}
