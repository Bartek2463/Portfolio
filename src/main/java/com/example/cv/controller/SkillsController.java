package com.example.cv.controller;

import com.example.cv.model.About;
import com.example.cv.model.Skill;
import com.example.cv.service.AboutService;
import com.example.cv.service.SkillService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import javax.validation.Valid;
import java.util.List;

@Controller
@AllArgsConstructor
@RequestMapping("/skill")
public class SkillsController {

    private SkillService skillService;
    private AboutService aboutService;

    @GetMapping("/add")
    public String getSkill(Model model) {
        List<About> allAbouts = aboutService.getAllAbouts();
        model.addAttribute("about", allAbouts);
        return "skills/addSkill";
    }

    @PostMapping("/add")
    public RedirectView postAddSkill(@Valid Skill skill) {
        skillService.addSkill(skill);
        return new RedirectView("/skill");
    }

    @GetMapping
    public String getSkills(Model model) {
        List<Skill> skills = skillService.getSkills();
        model.addAttribute("skill", skills);
        return "skills/skills";
    }

    @PostMapping("/{id}")
    public RedirectView putEditSkill(@Valid Skill skill){
        skillService.editSkill(skill);
        return  new RedirectView("/skill");
    }

    @GetMapping("/{id}")
    public String getEditSkill(@PathVariable Long id,Model model){
        Skill skillById = skillService.getSkillById(id);
        model.addAttribute("skill",skillById);
        return "skills/editSkill";
    }

    @PostMapping("/delete/{id}")
    public RedirectView deleteSkill( @PathVariable  Long id){
        skillService.deleteSkillByid(id);
        return new RedirectView("/skill");
    }
}
