package com.example.cv.service;

import com.example.cv.model.Skill;
import com.example.cv.repository.SkillsRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class SkillService {

    private SkillsRepository skillsRepository;


    public  void addSkill(Skill skill){
        skillsRepository.save(skill);
    }

    public List<Skill> getSkills(){
      return   skillsRepository.findAll();
    }

    public Skill getSkillById(Long id){
       return skillsRepository.findById(id).orElseThrow();
    }

    public void editSkill(Skill skill){
        skillsRepository.save(skill);
    }
    public void deleteSkillByid(Long id){
        skillsRepository.deleteById(id);
    }



}
