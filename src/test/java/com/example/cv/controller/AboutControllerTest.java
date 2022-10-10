package com.example.cv.controller;

import com.example.cv.CvApplication;
import com.example.cv.CvApplicationTests;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
class AboutControllerTest extends CvApplicationTests {

    @Test
    @DisplayName("Sholud return list of about, at least one  entry")
    void shouldReturnListOfAbout() throws Exception {
        var url = "/about";

        mockMvc.perform(get(url))
                .andDo(print())
                .andExpect(status().isOk())
//                .andExpect(jsonPath("$[0].id").isNotEmpty())
//                .andExpect(jsonPath("$[0].id").exists())
                .andExpect(jsonPath("$[0].firstName").exists())
                .andExpect(jsonPath("$[0].lastName").exists())
                .andExpect(jsonPath("$[5].adres").exists())
                .andExpect(jsonPath("$[1].zipCode").exists())
                .andExpect(jsonPath("$[0].postOffice").exists())
                .andExpect(jsonPath("$[0].numberPhone").exists())
                .andExpect(jsonPath("$[0].adresEmail").exists());

    }
}