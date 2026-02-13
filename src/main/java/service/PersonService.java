package service;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import jdbc.PersonConnector;
import model.Person;

public class PersonService {

	public static boolean insert(Person person) {
		String sql = "INSERT INTO persons (UUID, Vorname, Nachname) VALUES (?, ?, ?)";
		PreparedStatement stmt = null;
        try {
        	Connection conn = PersonConnector.getConnection();
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, person.getUuid());
            stmt.setString(2, person.getVorname());
            stmt.setString(3, person.getNachname());
            int rowsUpdated = stmt.executeUpdate();

            // positive case of execution
            if (rowsUpdated == 1) {
                conn.commit();
                return true;
            } else {
                conn.rollback();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            PersonConnector.closeResources(stmt, null);
        }

        return false;
	}

	public static ArrayList<Person> getPersons() {
        String sql = "select * from persons";
        ArrayList<Person> persons = new ArrayList<Person>();
        try  {
        	Connection conn = PersonConnector.getConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                Person person = new Person(
                        rs.getString("Vorname"),
                        rs.getString("Nachname"),
                        rs.getString("uuid")
                );
                persons.add(person);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return persons;
	}
	/*
	public static void delete(String uuid) { 
		int index = 0; for(int i = 0; i < persons.size(); i++) { 
			Person p = persons.get(i); if (p.getUuid().equals(uuid)) { 
				index = i; break; 
			} 
		} 
		persons.remove(index); 
	}
	*/
	public static boolean delete(String uuid) { 
		String sql = "DELETE FROM persons where UUID = ?";
		PreparedStatement stmt = null;
        try {
        	Connection conn = PersonConnector.getConnection();
        	stmt = conn.prepareStatement(sql);
            stmt.setString(1, uuid);
            int rowsUpdated = stmt.executeUpdate();

            if (rowsUpdated == 1) {
                conn.commit();
                return true;
            } else {
                conn.rollback();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            PersonConnector.closeResources(stmt, null);
        }

        return false;
	}
	
	public static boolean update(String uuid, String first, String last) {
		String sql = "UPDATE persons SET Vorname = ?, Nachname = ? WHERE uuid = ?";
		PreparedStatement stmt = null;
        try {
        	Connection conn = PersonConnector.getConnection();
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, first);
            stmt.setString(2, last);
            stmt.setString(3, uuid);

            int rowsUpdated = stmt.executeUpdate();

            if (rowsUpdated == 1) {
                conn.commit();
                return true;
            } else {
                conn.rollback();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            PersonConnector.closeResources(stmt, null);
        }
        return false;
	}
	
}
