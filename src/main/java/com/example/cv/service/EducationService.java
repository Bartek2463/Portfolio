package com.example.cv.service;

import com.example.cv.model.Education;
import com.example.cv.repository.EducationRepository;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.List;


@AllArgsConstructor
@Service
public class EducationService {
    private EducationRepository educationRepository;


    public List<Education> getEducations() {
        return educationRepository.findAll();
    }

    public Education getEducationById(Long id) {
        return educationRepository.findById(id).orElse(null);
    }

    public void addEducation(Education education) {
        educationRepository.save(education);
    }

    public void editEducation(Education education) {
        educationRepository.save(education);
    }

    public void deleteEducation(Long id) {
        educationRepository.deleteById(id);
        System.out.println("Delete education about number id :" + id);
    }


}


