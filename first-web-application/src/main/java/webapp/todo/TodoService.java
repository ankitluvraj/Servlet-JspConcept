package webapp.todo;

import java.util.ArrayList;
import java.util.List;

public class TodoService {

	public static List<Todo> todos = new ArrayList<Todo>();

	
	  static { todos.add(new Todo("learn web app devloping")); todos.add(new
	  Todo("learn spring mvc")); todos.add(new Todo("learn spring Rest Services"));
	  
	  }
	  
	 
	public List<Todo> getTodo() {
		return todos;
	}
}
