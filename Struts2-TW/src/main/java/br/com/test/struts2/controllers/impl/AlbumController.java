package br.com.test.struts2.controllers.impl;

import br.com.test.struts2.controllers.interfaces.Controller;
import br.com.test.struts2.dao.impl.AlbumDAO;
import br.com.test.struts2.models.Album;

public class AlbumController extends Controller<Album, Integer>{

	public AlbumController() {
		super(new AlbumDAO());
	}

	@Override
	public String listar() {
		try {
			this.setModelos(this.dao.todos());
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	@Override
	public String detalhar() {
		try {
			this.setModelo(this.dao.porId(this.getId()));
			return SUCCESS;
		} catch(Exception e) {
			return ERROR;
		}
	}
	@Override
	public String inserir() {
		return null;
	}
	@Override
	public String alterar() {
		return null;
	}
	@Override
	public String deletar() {
		return null;
	}
}