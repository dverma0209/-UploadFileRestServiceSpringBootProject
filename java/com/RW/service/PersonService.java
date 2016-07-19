package com.classifieds.service;

import java.util.Hashtable;
import org.springframework.stereotype.Service;
import com.classifieds.model.*;

@Service
public class PersonService {
	Hashtable<String, Person> persons = new Hashtable<String, Person>();
	public PersonService(){
		Person p = new Person();
		p.setId("1");
		p.setAge(29);
		p.setFirstName("Deepak");
		p.setLastName("Verma");
		persons.put("1", p);
		
		p = new Person();
		p.setId("2");
		p.setAge(9);
		p.setFirstName("Yash");
		p.setLastName("Malhotra");
		persons.put("2", p);
	}
	
	public Person getPerson(String id){
		if(persons.containsKey(id))
			return persons.get(id);
		else
			return null;
	}
	
	public Hashtable<String, Person> getAll(){
		return persons;
	}
	
}
