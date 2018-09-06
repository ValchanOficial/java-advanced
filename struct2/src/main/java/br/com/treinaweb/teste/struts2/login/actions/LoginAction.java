package br.com.treinaweb.teste.struts2.login.actions;

public class LoginAction {
	
	private String email;
	private String senha;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}	
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	
	public String execute() {
		if(this.email.equals("teste") && this.senha.equals("teste")) {
			return "SUCCESS";
		} else {
			return "ERROR";
		}
	}
}