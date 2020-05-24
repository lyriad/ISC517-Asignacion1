package com.web.asignacion1.isc517asignacion1.Models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import org.json.simple.JSONObject;
import org.springframework.validation.annotation.Validated;

@Entity
@Validated
@Table(name = "estudiantes")
public class Estudiante implements Serializable {

    @Id
    private Integer matricula;

    @Column(nullable = false)
    private String nombre;

    @Column(nullable = false)
    private String apellido;

    @Column(nullable = false)
    private String telefono;

    public Estudiante() {

    }

    public Estudiante(final Integer matricula, final String nombre, final String apellido, final String telefono) {
        this.matricula = matricula;
        this.nombre = nombre;
        this.apellido = apellido;
        this.telefono = telefono;
    }

    public Integer getMatricula() {
        return this.matricula;
    }

    public void setMatricula(final Integer matricula) {
        this.matricula = matricula;
    }

    public String getNombre() {
        return this.nombre;
    }

    public void setNombre(final String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return this.apellido;
    }

    public void setApellido(final String apellido) {
        this.apellido = apellido;
    }

    public String getTelefono() {
        return this.telefono;
    }

    public void setTelefono(final String telefono) {
        this.telefono = telefono;
    }

    public String toJson() {
        JSONObject json = new JSONObject();

        json.put("matricula", this.matricula);
        json.put("nombre", this.nombre);
        json.put("apellido", this.apellido);
        json.put("telefono", this.telefono);

        return json.toJSONString();
    }
}