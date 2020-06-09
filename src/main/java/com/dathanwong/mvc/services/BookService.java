package com.dathanwong.mvc.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.dathanwong.mvc.models.Book;
import com.dathanwong.mvc.repositories.BookRepository;

@Service
public class BookService {
	private final BookRepository bookRepo;
	
	public BookService(BookRepository bookRepo) {
		this.bookRepo = bookRepo;
	}
	
	public List<Book> allBooks(){
		return bookRepo.findAll();
	}
	
	public Book createBook(Book b) {
		return bookRepo.save(b);
	}
	
	public Book findBook(Long id) {
		Optional<Book> book = bookRepo.findById(id);
		if(book.isPresent()) {
			return book.get();
		}else {
			return null;
		}
	}
	
	public Book updateBook(Book b) {
		return bookRepo.save(b);
	}
	
	public void deleteBook(Long id) {
		bookRepo.deleteById(id);
	}
}
