package model;

import java.util.UUID;

public class Person {
	private String uuid;
	private String vorname;
	private String nachname;
	
	public Person(String vornam, String nachnam, String uuid) {
		this.vorname = vornam;
		this.nachname = nachnam;
		this.uuid = uuid;
	}
	
	public Person(String vornam, String nachnam) {
		this.vorname = vornam;
		this.nachname = nachnam;
		this.uuid = UUID.randomUUID().toString();
	}
	
	public String getUuid() {
        return uuid;
	}
	
	public String getVorname() {
        return vorname;
	}
	
	public void setVorname(String name) {
        this.vorname = name;
	}
	
	public String getNachname() {
        return nachname;
	}
	
	public void setNachname(String name) {
        this.nachname = name;
	}
}