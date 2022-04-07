package pojoClasses;

public class IssueBook {

	private String bookId;
	private String bookName;
	private String StudentId;
	private String StudentName;
	private String StudentContact;
	public IssueBook(String bookId, String bookName, String studentId, String studentName, String studentContact) {
		
		this.bookId = bookId;
		this.bookName = bookName;
		this.StudentId = studentId;
		this.StudentName = studentName;
		this.StudentContact = studentContact;
	}
	public String getBookId() {
		return bookId;
	}
	public void setBookId(String bookId) {
		this.bookId = bookId;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getStudentId() {
		return StudentId;
	}
	public void setStudentId(String studentId) {
		StudentId = studentId;
	}
	public String getStudentName() {
		return StudentName;
	}
	public void setStudentName(String studentName) {
		StudentName = studentName;
	}
	public String getStudentContact() {
		return StudentContact;
	}
	public void setStudentContact(String studentContact) {
		StudentContact = studentContact;
	}
	

}