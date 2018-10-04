package br.com.test.struts2.controllers.impl;

import br.com.test.struts2.controllers.interfaces.Controller;
import br.com.test.struts2.dao.impl.MusicaDAO;
import br.com.test.struts2.models.Musica;

public class MusicaController extends Controller<Musica, Integer>{

	public MusicaController() {
		super(new MusicaDAO());
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
			Musica musica = this.dao.porId(getId());
			this.dao.deletar(musica);
			return SUCCESS;
		}catch(Exception e) {
			return ERROR;
		}
	}
	@Override
	public String prepararAlterar() {
		try {
			Musica musica = this.dao.porId(getId());
			setModelo(musica);
			return SUCCESS;
		}catch(Exception e) {
			return ERROR;
		}
	}
}