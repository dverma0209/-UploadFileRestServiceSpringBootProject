package com.rw.controller;

import java.util.Hashtable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.rw.model.Person;
import com.rw.service.PersonService;

@RestController
@RequestMapping("/persons")
public class PersonController {
	
	@Autowired
	PersonService ps;
	
	@RequestMapping("/all")
	public Hashtable<String, Person> getAll(){
		return ps.getAll();
	}
	
	/*@RequestMapping("{id}")
	public Person getPerson(@PathVariable("id") String id){
		return ps.getPerson(id);
	}*/
	
	@RequestMapping("/withid")
	public Person getPerson(@RequestParam(value="id") String id){
		return ps.getPerson(id);
	}
}
