package com.example.cv.controller;

import com.example.cv.model.About;
import com.example.cv.model.Experience;
import com.example.cv.service.AboutService;
import com.example.cv.service.ExperienceService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import javax.validation.Valid;
import java.util.List;

@Controller
@AllArgsConstructor
public class ExperienceController {

    private ExperienceService experienceService;
    private AboutService aboutService;

    @GetMapping("/experience")
    String getExpirence(Model model) {
        List<Experience> expirences = experienceService.getExpirence();
        model.addAttribute("experiences", expirences);
        return "experience/experience";
    }

    @GetMapping("/addExperience")
    String getAddExperience(Model model) {
        List<About> allAbouts = aboutService.getAllAbouts();
        model.addAttribute("about", allAbouts);
        return "experience/addExperience";
    }

    @PostMapping("/addExperience")
    public RedirectView postAddExperience(@Valid Experience experience) {
        experienceService.addExpirence(experience);
        return new RedirectView("/experience");
    }

    @GetMapping("/editExperience/{id}")
    public String getEditExperience(@PathVariable Long id, Model model) {
        Experience experienceByid = experienceService.getExperienceByid(id);
        model.addAttribute("experience", experienceByid);
        return "experience/editExperience";
    }

    @PostMapping("/editExperience/{id}")
    public RedirectView postEditExperience(@Valid Experience experience) {
        experienceService.editExperience(experience);
        return new RedirectView("/experience");
    }

    @PostMapping("/deleteExperience/{id}")
    public RedirectView deleteExperience(@PathVariable Long id) {
        experienceService.deleteExperience(id);
        return new RedirectView("/experience");
    }

}
