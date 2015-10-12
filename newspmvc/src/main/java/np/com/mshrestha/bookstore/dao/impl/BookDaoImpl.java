package np.com.mshrestha.bookstore.dao.impl;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

import np.com.mshrestha.bookstore.dao.BookDao;
import np.com.mshrestha.bookstore.model.Book;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookDaoImpl implements BookDao {

	AbstractMap<Long, Book> books = new HashMap<Long, Book>();

	@Autowired
	private SessionFactory sessionFactory;

	public void saveBook(Book book) {
		Long id = new Long( (long) Math.random()*1000 );
		books.put(id, book);
	}

	@SuppressWarnings("unchecked")
	public List<Book> listBooks() {

		Collection<Book> values = books.values();
		List<Book> list = new ArrayList<Book>(values);
		
		return list;
	}

	public Book getBook(Long id) {
		return books.get(id);
	}

	public void deleteBook(Long id) {

		books.remove(id);

	}

	private Session getSession() {
		Session sess = getSessionFactory().getCurrentSession();
		if (sess == null) {
			sess = getSessionFactory().openSession();
		}
		return null;
	}

	private SessionFactory getSessionFactory() {
		return sessionFactory;
	}
}
