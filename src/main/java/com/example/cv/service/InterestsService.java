package com.example.cv.service;

import com.example.cv.model.Interests;
import com.example.cv.repository.InterestsRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class InterestsService {

    private InterestsRepository interestsRepository;


    public void addInterest(Interests interests){
    interestsRepository.save(interests);
    }
    public List<Interests> interest (){
        return  interestsRepository.findAll();
    }

    public Interests getInterestByid(Long id){
       return interestsRepository.findById(id).orElseThrow();
    }
    public void editInterest(Interests interests){
        interestsRepository.save(interests);
    }
    public void deleteInterestByid(Long id){
        interestsRepository.deleteById(id);
    }

}
