package br.com.test.struts2.controllers.impl;

import java.util.List;
import br.com.test.struts2.controllers.interfaces.Controller;
import br.com.test.struts2.dao.impl.AlbumDAO;
import br.com.test.struts2.dao.impl.MusicaDAO;
import br.com.test.struts2.dao.interfaces.IDAOGenerico;
import br.com.test.struts2.models.Album;
import br.com.test.struts2.models.Musica;

public class MusicaController extends Controller<Musica, Integer>{

	private List<Album> albuns;
	private int albumId;
	private IDAOGenerico<Album, Integer> albumDao = new AlbumDAO();
	
	public List<Album> getAlbuns() {
		return albuns;
	}
	public void setAlbuns(List<Album> albuns) {
		this.albuns = albuns;
	}
	public int getAlbumId() {
		return albumId;
	}
	public void setAlbumId(int albumId) {
		this.albumId = albumId;
	}
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
	public String prepararInserir() {
		try {
			albuns = albumDao.todos(); 
			return SUCCESS;
		}catch(Exception e) {
			return ERROR;
		}
	}
	@Override
	public String inserir() {
		try {
			Musica musica = getModelo();
			Album albumSelecionado = albumDao.porId(getId());
			musica.setAlbum(albumSelecionado);
			dao.inserir(musica);
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