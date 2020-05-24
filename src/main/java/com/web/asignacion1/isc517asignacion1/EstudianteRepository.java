package com.web.asignacion1.isc517asignacion1;

import com.web.asignacion1.isc517asignacion1.Models.Estudiante;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EstudianteRepository extends CrudRepository<Estudiante, Integer> {

}