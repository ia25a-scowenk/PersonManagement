package service;

import java.util.ArrayList;

import model.Person;

public class oldService {
	private static ArrayList<Person> persons = new ArrayList<Person>();
	
	public static void insert(Person person) {
		persons.add(person);
	}
	
	public static ArrayList<Person> getPersons() {
		return persons;
	}
	/*
	public static void delete(String uuid) {
		int index = 0;
		for(int i = 0; i < persons.size(); i++) {
			Person p = persons.get(i);
			if (p.getUuid().equals(uuid)) {
				index = i;
				break;				
			}
		}
		persons.remove(index);
	}
	*/
	public static void delete(String uuid) {
		for(Person p : persons) {
			if (p.getUuid().equals(uuid)) {
				persons.remove(p);			
			}
		}
	}
	
	public static void update(String uuid, String first, String last) {
		for(Person p : persons) {
			if (p.getUuid().equals(uuid)) {
				Person original = p;
				p.setVorname(first);
				p.setNachname(last);
				persons.set(persons.indexOf(original), p);
			}
		}
	}
}