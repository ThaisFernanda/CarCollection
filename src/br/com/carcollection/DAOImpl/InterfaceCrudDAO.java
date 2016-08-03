
package br.com.carcollection.DAOImpl;

import java.util.List;

public interface InterfaceCrudDAO<T> {
	
	public void insert(T obj);  // (INSERT/CREATE)
	
	public void update(T obj);  // (UPDATE)
	
	public void deleta(Integer id);  // (DELETE)
		
	public List<T> recuperaTodos(); // (RECUPERA CONJUNTO)
	
	public T recupera(int id);  //  (RECUPERA UM ELEMENTO)
	

	
	
}
