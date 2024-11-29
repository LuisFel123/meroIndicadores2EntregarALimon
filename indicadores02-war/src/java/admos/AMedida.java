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
import manipuladatos.MDMedida;
import modelo.Medida;

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
    private Medida medida;
    private List<Medida> medidas;

    FacesMessage message;

    public AMedida() {
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
        return medidas;
    }

    public void setMedidas(List<Medida> medidas) {
        this.medidas = medidas;
    }

}
