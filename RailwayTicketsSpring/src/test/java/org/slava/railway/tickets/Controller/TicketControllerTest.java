/*package org.slava.railway.tickets.Controller;

import org.slava.railway.tickets.service.TicketService;
import org.slava.railway.tickets.service.UserService;
        import org.junit.jupiter.api.Test;
        import org.springframework.beans.factory.annotation.Autowired;
        import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
        import org.springframework.boot.test.context.SpringBootTest;
        import org.springframework.boot.test.mock.mockito.MockBean;
        import org.springframework.security.test.context.support.WithMockUser;
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
public class TicketControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    UserService userService;

    @MockBean
    TicketService ticketService;


    @Test
    @WithMockUser(username = "admin@railway.com", authorities = { "ADMIN", "USER" })
    public void deleteStation() throws Exception {
        this.mockMvc.perform(get("/ticket/delete/{ticket}", 2))
                .andDo(print())
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/ticket?pageNo=0&pageSize=5&sortBy=name&order=asc"));

        verify(ticketService, times(1)).delete(2L);
    }

    @Test
    @WithMockUser(username = "admin@railway.com", authorities = { "ADMIN", "USER" })
    public void stationPage() throws Exception {
        this.mockMvc.perform(get("/ticket/{ticket}", 2))
                .andDo(print())
                .andExpect(status().isOk());
    }

    @Test
    @WithMockUser(username = "admin@railway.com", authorities = { "ADMIN", "USER" })
    public void stationAdd() throws Exception {
        this.mockMvc.perform(get("/ticket/add"))
                .andDo(print())
                .andExpect(status().isOk());
    }
}

*/