package com.example.cv.service;

import com.example.cv.model.About;
import com.example.cv.repository.AboutRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class AboutService {

    private AboutRepository aboutRepository;


    public void adAbout(About about){
        aboutRepository.save(about);
        System.out.println("Dodanie osoby o id "+ about.getId());
    }

    public List<About> getAllAbouts(){
        return aboutRepository.findAll();
    }


    public About getAboutByid(Long id){
        return aboutRepository.findById(id).orElse(null);
    }
    public  void editAbout(About about){
        aboutRepository.save(about);
    }

    public void deleteAbout(Long id){
        aboutRepository.deleteById(id);
        System.out.println("Usuniecie osoby o id "+id);
    }

}
