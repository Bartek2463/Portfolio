package com.example.cv.controller;

import com.example.cv.model.About;
import com.example.cv.service.AboutService;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
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
public class AboutController {

    private AboutService aboutService;

    @GetMapping("/about")
    public String getAbout(Model model) {
        List<About> allAbouts = aboutService.getAllAbouts();
        model.addAttribute("about", allAbouts);
        return "about/about";
    }

    @GetMapping("/addAbout")
    public String getAddaAbout() {
        return "about/addAbout";
    }

    @PostMapping("/addAbout")
    public RedirectView postAddAbout(@Valid About about) {
        aboutService.adAbout(about);
        return new RedirectView("/about");
    }

    @GetMapping("/editAbout/{id}")
    public String getEditAbout(@PathVariable Long id, Model model) {
        About aboutByid = aboutService.getAboutByid(id);
        model.addAttribute("about", aboutByid);
        return "about/editAbout";
    }

    @PostMapping("/editAbout/{id}")
    public RedirectView postEditAbout(@Valid About about) {
        aboutService.editAbout(about);
        return new RedirectView("/about");
    }

    @PostMapping("/delete/{id}")
    public RedirectView postDeleteAbout(@PathVariable Long id) {
        aboutService.deleteAbout(id);
        return new RedirectView("/about");
    }

}
