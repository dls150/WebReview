package beans;

import java.io.Serializable;
import javax.faces.bean.SessionScoped;
import javax.inject.Named;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

import model.Carro;

@Named
@SessionScoped
public class CarroBean implements Serializable {

	private static final long serialVersionUID = -6904919010403298937L;

	private Carro carro = new Carro();

	public String salvarCarro() {
		carro = new Carro();

		// adiciona mensagem de sucesso
		FacesMessage fm = new FacesMessage();
		fm.setSummary("Sucesso ao salvar o carro");
		fm.setSeverity(FacesMessage.SEVERITY_INFO);
		FacesContext.getCurrentInstance().addMessage("form", fm);

		return null;
	}
	
	public Carro getCarro() {
		return carro;
	}
	
	public void setCarro(Carro carro) {
		this.carro = carro;
	}
}
