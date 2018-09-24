package br.com.test.struts2.dao.impl;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import br.com.test.struts2.dao.interfaces.IDAOGenerico;
import br.com.test.struts2.models.Album;

public class AlbumDAO implements IDAOGenerico<Album, Integer>{

	@SuppressWarnings("unchecked")
	@Override
	public List<Album> todos() {
		List<Album> albuns = null;
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("TreinaWebTesteJPA");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		albuns = entityManager.createQuery("from Album").getResultList();
		entityManager.close();
		entityManagerFactory.close();
		return albuns;
	}
	@Override
	public Album porId(Integer id) {
		Album album = null;
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("TreinaWebTesteJPA");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		album = entityManager.find(Album.class, id);
		entityManager.close();
		entityManagerFactory.close();
		return album;
	}
	@Override
	public void inserir(Album modelo) {
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("TreinaWebTesteJPA");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		entityManager.persist(modelo);
		entityManager.getTransaction().commit();
		entityManager.close();
		entityManagerFactory.close();
	}
	@Override
	public void atualizar(Album modelo) {
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("TreinaWebTesteJPA");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		entityManager.merge(modelo);
		entityManager.getTransaction().commit();
		entityManager.close();
		entityManagerFactory.close();
	}
	@Override
	public void deletar(Album modelo) {
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("TreinaWebTesteJPA");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		modelo = entityManager.merge(modelo);//attached
		entityManager.remove(modelo);
		entityManager.getTransaction().commit();
		entityManager.close();
		entityManagerFactory.close();
	}
}