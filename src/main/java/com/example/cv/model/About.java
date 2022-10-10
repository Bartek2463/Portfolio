package com.example.cv.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class About {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotEmpty
    @Size(min = 2, max = 40)
    @Column(name = "FISRT_NAME")
    private String firstName;
    @NotEmpty
    @Size(min = 2, max = 40)
    @Column(name = "LAST_NAME")
    private String lastName;
    @NotEmpty
    @Size(min = 2, max = 50)
    @Column(name = "ADRES")
    private String adres;
    @NotEmpty
    @Pattern(regexp ="[0-9]{2}-[0-9]{3}")
    @Column(name = "ZIP_CODE")
    private String zipCode;
    @Column(name = "POST_OFFICE")
    @NotEmpty
    private String postOffice;
    @NotEmpty
    @Pattern(regexp = "[0-9]{9}")
    @Column(name = "NUMBER_PHONE")
    private String numberPhone;
    @Email
    private String adresEmail;
    @NotEmpty
    @Column(name = "ABOUT_PERSON")
    private String aboutPerson;

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.REFRESH, mappedBy = "about")
    private Set<Experience> experiences = new HashSet<>();

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.REFRESH, mappedBy = "about")
    private Set<Education> educations = new HashSet<>();

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.REFRESH, mappedBy = "about")
    private Set<Skill> skills = new HashSet<>();

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.REFRESH, mappedBy = "about")
    private Set<Interests> interests = new HashSet<>();


}
