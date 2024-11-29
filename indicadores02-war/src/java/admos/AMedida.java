/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSF/JSFManagedBean.java to edit this template
 */
package admos;

import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.inject.Inject;
import manipuladatos.MDMedida;
import modelo.Medida;
import modelo.Persona;

/**
 *
 * @author felip
 */
@Named(value = "aMedida")
@SessionScoped
public class AMedida implements Serializable {

    /**
     * Creates a new instance of AMedida
     */
    @EJB
    private MDMedida mDMedida;
    @Inject
    private APersona aPersona; // Asegúrate de que aPersona esté correctamente inyectado
    private Medida medida;
    private List<Medida> medidas;
    //quitar esto si no
    private int numero = 0;

    FacesMessage message;

    public int getNumero() {
        medida.setIdMedida(numero);
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public AMedida() {
        medida = new Medida();
    }

    public MDMedida getmDMedida() {
        return mDMedida;
    }

    public void setmDMedida(MDMedida mDMedida) {
        this.mDMedida = mDMedida;
    }

    public Medida getMedida() {
        return medida;
    }

    public void setMedida(Medida medida) {
        this.medida = medida;
    }

    public List<Medida> getMedidas() {

        return mDMedida.medidas();

    }
    
    

    public void registroMedida(Persona idPersona) {
        medidas = getMedidas();
        try {
            medida.setIdPersona(idPersona);
            mDMedida.registrarMedida(medida);
            medida = new Medida();
            System.out.println("Medida registrada correctamente");
            message = new FacesMessage(FacesMessage.SEVERITY_INFO,
                        "Medida Registrada correctamente",
                        null);
                FacesContext.getCurrentInstance().addMessage(null, message);

                FacesContext.getCurrentInstance().validationFailed();
        } catch (Exception ex) {
            System.err.println(ex);
        }
    }

}
