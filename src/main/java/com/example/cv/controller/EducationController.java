package com.example.cv.controller;

import com.example.cv.model.About;
import com.example.cv.model.Education;
import com.example.cv.model.Experience;
import com.example.cv.service.AboutService;
import com.example.cv.service.EducationService;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.apache.catalina.LifecycleState;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import javax.validation.Valid;
import java.util.List;

@AllArgsConstructor
@Controller
@RequestMapping("/education")
public class EducationController {

    private EducationService educationService;
    private AboutService aboutService;

    @GetMapping
    public String getEducations(Model model) {
        List<Education> educations = educationService.getEducations();
        model.addAttribute("educationlist", educations);
        return "education/education";
    }

    @GetMapping("/add")
    String getAddEducation(Model model) {
        List<About> aboutList = aboutService.getAllAbouts();
        model.addAttribute("about", aboutList);
        return "education/addEducation";
    }

    @GetMapping("/{id}")
    public String getEducationById(@PathVariable Long id, Model model) {
        Education educationById = educationService.getEducationById(id);
        model.addAttribute("education", educationById);
        return "education/editEducation";
    }

    @PostMapping("/add")
    public RedirectView addPostEducation(@Valid Education education) {
        educationService.addEducation(education);
        return new RedirectView("/education");
    }

    @PostMapping("/edit/{id}")
    public RedirectView editEducation(@Valid Education education) {
        educationService.editEducation(education);
        return new RedirectView("/education");
    }

    @PostMapping("/{id}")
    public RedirectView deleteEducation(Long id) {
        educationService.deleteEducation(id);
        return new RedirectView("/education");
    }
}
