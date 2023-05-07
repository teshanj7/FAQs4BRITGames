package game.faq;

public class Faq {
	
	//initializing the variables of the Faq class
	
	//encapsulation
	private int faq_id;
	private String userType;
	private String name;
	private String email;
	private String phone;
	private String question;
	
	//default constructor
	public Faq() {
		
	}
	
	//constructor
	public Faq(int faq_id, String userType, String name, String email, String phone, String question) {
		this.faq_id = faq_id;
		this.userType = userType;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.question = question;
	}
	
	//overloading the constructor
	public Faq( String userType, String name, String email, String phone, String question) {
	
		this.userType = userType;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.question = question;
	}

	//setting up the getters of the parameters

	public int getFaq_id() {
		return faq_id;
	}

	public String getUserType() {
		return userType;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getQuestion() {
		return question;
	}

}
