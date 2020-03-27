package beans;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Author implements Serializable {

	private static final long serialVersionUID = 6849452348818159106L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	private String name;

	public Integer getId() {
		return id;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public void copyValues(Author other) {
		name = other.name;
	}

	@Override
	public String toString() {
		return "Author :: id: " + id + " name: " + name;
	}
	
}
