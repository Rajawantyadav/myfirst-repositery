package pojoClasses;

public class librarianData {
	private String name;
	private String email;
	private String password;
	private String city;
	private String contact;

	public librarianData(String name, String email, String password, String city, String contact) {

		this.name = name;
		this.email = email;
		this.password = password;
		this.city = city;
		this.contact = contact;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

}
