/*package org.slava.railway.tickets.Services;

import org.slava.railway.tickets.entity.User;
import org.slava.railway.tickets.entity.enums.RoleType;
import org.slava.railway.tickets.repository.UserRepository;
import org.slava.railway.tickets.service.UserService;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.mockito.ArgumentMatchers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;

import java.util.*;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.*;

public class UserServicesTest {

    @Autowired
    UserService userService;

    @MockBean
    UserRepository userRepository;


    @Test
    @DisplayName("Test findByEmail user")
    void testFindByEmail() {
        // Setup our mock repository
        User user = new User();
        doReturn(Optional.of(user)).when(userRepository).findByEmail("email@mail.ru");

        // Execute the service call
        User returnedUser = userService.findUserByEmail("email@mail.ru");

        // Assert the response
        assertNotNull(returnedUser, "The saved user should not be null");
        assertEquals(user, returnedUser, "Users should be equal");

        verify(userRepository, times(1)).findByEmail(anyString());
    }

    @Test
    @DisplayName("Test findByEmail user Not Found")
    void testFindByIdNotFound() {
        // Setup our mock repository
        doReturn(Optional.empty()).when(userRepository).findByEmail("email@mail.ru");

        Exception exception = assertThrows(IllegalArgumentException.class, () -> {
            // Execute the service call
            userService.findUserByEmail("email@mail.ru");
        });

        assertEquals("User with email: email@mail.ru not found", exception.getMessage());

        verify(userRepository, times(1)).findByEmail(anyString());
    }

    @Test
    @DisplayName("Test findAll")
    void testFindAll() {
        // Setup our mock repository
        User user1 = new User();
        User user2 = new User();
        doReturn(Arrays.asList(user1, user2)).when(userRepository).findAll();

        // Execute the service call
        List<User> users = (List<User>) userService.getAll();

        // Assert the response
        Assertions.assertEquals(2, users.size(), "findAll should return 2 users");

        verify(userRepository, times(1)).findAll();
    }
}
*/
