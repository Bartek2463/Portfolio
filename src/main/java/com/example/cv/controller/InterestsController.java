package com.example.cv.controller;

import com.example.cv.model.About;
import com.example.cv.model.Interests;
import com.example.cv.service.AboutService;
import com.example.cv.service.InterestsService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

import javax.validation.Valid;
import java.util.List;
@AllArgsConstructor
@Controller
@RequestMapping("/interests")
public class InterestsController {

    private InterestsService interestsService;
    private AboutService aboutService;

    @GetMapping("/add")
    public String getAddInterests(Model model){
        List<About> allAbouts = aboutService.getAllAbouts();
        model.addAttribute("about",allAbouts);
        return "interests/addInterest";
    }
    @GetMapping
    public String getInterests(Model model){
        List<Interests> interest = interestsService.interest();
        model.addAttribute("interest",interest);
        return "interests/interests";
    }
    @PostMapping
    public RedirectView postInterests (@Valid Interests interests){
        interestsService.addInterest(interests);
        return new RedirectView("/interests");
    }
    @GetMapping("/{id}")
    public String getEditInterests(@PathVariable Long id,Model model){
        Interests interestByid = interestsService.getInterestByid(id);
        model.addAttribute("interestId",interestByid);
        return "interests/editInterest";
    }
    @PostMapping("/{id}")
    public  RedirectView editInterests(@Valid Interests interests){
        interestsService.editInterest(interests);
        return new RedirectView("/interests");
    }
    @PostMapping("/delete/{id}")
    public  RedirectView deleteInterests(@PathVariable Long id){
        interestsService.deleteInterestByid(id);
        return new RedirectView("/interests");
    }
}
