package com.example.cv.service;

import com.example.cv.model.Experience;
import com.example.cv.repository.ExperienceRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class ExperienceService {

    private ExperienceRepository experienceRepository;


    public void addExpirence(Experience experience){
        experienceRepository.save(experience);
    }

    public List<Experience> getExpirence(){

        return  experienceRepository.findAll();
    }

    public Experience getExperienceByid(Long id){
        return experienceRepository.findById(id).orElse(null);
    }

    public void editExperience(Experience experience){
        experienceRepository.save(experience);
    }

    public void deleteExperience(Long id){
        experienceRepository.deleteById(id);
        System.out.println("Usunięcie doświadczenia o id "+ id);

    }


}
