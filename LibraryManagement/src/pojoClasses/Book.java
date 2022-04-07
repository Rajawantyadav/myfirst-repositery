package pojoClasses;

public class Book {

	private String bookId;
	private String name;
	private String author;
	private String publisher;
	private String quantity;

	public Book(String bookId, String name, String author, String publisher, String quantity) {

		this.bookId = bookId;
		this.name = name;
		this.author = author;
		this.publisher = publisher;
		this.quantity = quantity;
	}

	public String getBookId() {
		return bookId;
	}

	public void setBookId(String bookId) {
		this.bookId = bookId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

}
