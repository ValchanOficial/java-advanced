package br.com.test.struts2.dao.impl;

import java.util.List;
import br.com.test.struts2.dao.interfaces.IDAOGenerico;
import br.com.test.struts2.models.Album;

public class AlbumDAO implements IDAOGenerico<Album, Integer>{

	@Override
	public List<Album> todos() {
		return null;
	}

	@Override
	public Album porId(Integer id) {
		return null;
	}

	@Override
	public void inserir(Album modelo) {		
	}

	@Override
	public void atualizar(Album modelo) {		
	}

	@Override
	public void deletar(Album modelo) {		
	}
}