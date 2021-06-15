/*package org.slava.railway.tickets.Controller;

import org.slava.railway.tickets.service.StationService;
import org.slava.railway.tickets.service.UserService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.jdbc.Sql;
import org.springframework.test.web.servlet.MockMvc;

import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@SpringBootTest
@AutoConfigureMockMvc
@TestPropertySource("/application-test.properties")
@Sql(value = {"/create-user-before.sql", "/create-train-before.sql"}, executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD)
@Sql(value = {"/create-user-after.sql", "/create-train-after.sql"}, executionPhase = Sql.ExecutionPhase.AFTER_TEST_METHOD)
public class StationControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    UserService userService;

    @MockBean
    StationService staionService;


    @Test
    @WithMockUser(username = "admin@railway.com", authorities = { "ADMIN", "USER" })
    public void deleteStation() throws Exception {
        this.mockMvc.perform(get("/station/delete/{station}", 2))
                .andDo(print())
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/station?pageNo=0&pageSize=5&sortBy=name&order=asc"));

        verify(staionService, times(1)).delete(2L);
    }

    @Test
    @WithMockUser(username = "admin@railway.com", authorities = { "ADMIN", "USER" })
    public void stationPage() throws Exception {
        this.mockMvc.perform(get("/station/{station}", 2))
                .andDo(print())
                .andExpect(status().isOk());
    }

    @Test
    @WithMockUser(username = "admin@railway.com", authorities = { "ADMIN", "USER" })
    public void stationAdd() throws Exception {
        this.mockMvc.perform(get("/station/add"))
                .andDo(print())
                .andExpect(status().isOk());
    }
}
*/