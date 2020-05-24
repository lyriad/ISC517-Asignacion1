package com.web.asignacion1.isc517asignacion1;

import com.web.asignacion1.isc517asignacion1.Models.Estudiante;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class MainController {

    private final EstudianteRepository repository;

    @Autowired
    public MainController(EstudianteRepository repository) {
        this.repository = repository;
    }
    
    @GetMapping("/")
    public String index(Model model) {

        model.addAttribute("estudiantes", repository.findAll());
        return "/freemarker/index";
    }

    @PostMapping(path = "/store")
    public String add(@ModelAttribute("estudiante") Estudiante estudiante) {

        repository.save(estudiante);
        return "redirect:/";
    }

    @GetMapping(path = "/delete")
    public String delete(@RequestParam String matricula) {

        repository.deleteById(Integer.parseInt(matricula));
        return "redirect:/";
    }
}