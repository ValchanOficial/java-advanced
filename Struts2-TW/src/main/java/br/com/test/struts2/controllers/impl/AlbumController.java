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
		try {
			this.dao.inserir(getModelo());
			return SUCCESS;
		}catch(Exception e) {
			return ERROR;
		}
	}
	@Override
	public String alterar() {
		try {
			this.dao.atualizar(getModelo());
			return SUCCESS;
		}catch(Exception e) {
			return ERROR;
		}
	}
	@Override
	public String deletar() {
		try {
			Album album = this.dao.porId(getId());
			this.dao.deletar(album);
			return SUCCESS;
		}catch(Exception e) {
			return ERROR;
		}
	}
	@Override
	public String prepararAlterar() {
		try {
			Album album = this.dao.porId(getId());
			setModelo(album);
			return SUCCESS;
		}catch(Exception e) {
			return ERROR;
		}
	}
}