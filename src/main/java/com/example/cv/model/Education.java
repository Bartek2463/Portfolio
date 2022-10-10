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
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Education {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotEmpty
    @Size(min = 2,max = 40)
    @Column(name = "SCHOOL_NAME")
    private String schoolName;
    @NotEmpty
    @Size(min = 2,max = 40)
    @Column(name = "DIRECTION")
    private String direction;
    @NotEmpty
    @Size(min = 2,max = 40)
    @Column(name = "SPECIALIZATION")
    private String specialization;
    @DateTimeFormat(pattern = "yyyy-MM-dd", iso = DateTimeFormat.ISO.DATE)
    private Date startSience;
    @DateTimeFormat(pattern = "yyyy-MM-dd", iso = DateTimeFormat.ISO.DATE)
    private Date endSience;
    @ManyToOne
    private About about;


}
