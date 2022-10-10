package com.example.cv.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.util.Date;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Experience {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  Long id;
    @NotEmpty
    @Size(min = 2,max = 40)
    @Column(name = "JOB_TITLE")
    private String jobTitle;
    @NotEmpty
    @Size(min = 2,max = 40)
    @Column(name = "COMPANY_NAME")
    private String companyName;
    @NotEmpty
    @Size(min = 2,max = 40)
    @Column(name = "PROJECT_NAME")
    private String projectName;
    @NotEmpty
    @Size(min = 2,max = 40)
    @Column(name = "DESCRIPTION_EXP")
    private String descriptionExp;
    @DateTimeFormat(pattern = "yyyy-MM-dd",iso = DateTimeFormat.ISO.DATE)
    private Date startJob;
    @DateTimeFormat(pattern = "yyyy-MM-dd",iso = DateTimeFormat.ISO.DATE)
    private Date endJob;
    @ManyToOne
    private About about;


}
