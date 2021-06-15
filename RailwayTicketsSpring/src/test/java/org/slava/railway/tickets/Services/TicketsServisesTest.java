/*package org.slava.railway.tickets.Services;

import org.slava.railway.tickets.entity.Station;
import org.slava.railway.tickets.entity.Ticket;
import org.slava.railway.tickets.repository.TicketRepository;
import org.slava.railway.tickets.service.StationService;
import org.slava.railway.tickets.service.TicketService;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.mockito.ArgumentMatchers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.data.domain.*;

import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;
import static org.mockito.Mockito.doReturn;

public class TicketsServisesTest {
    @Autowired
     TicketService ticketService;

    @MockBean
    TicketRepository ticketRepository;

    @Test
    @DisplayName("Test save tickets")
    void testSave() {
        // Setup our mock repository
        Ticket faculty = new Ticket();
        doReturn(faculty).when(ticketRepository).save(any());

        // Execute the service call
        Ticket returnedFaculty = ticketService.save(faculty);

        // Assert the response
        assertNotNull(returnedFaculty, "The saved station should not be null");
        assertEquals(1, returnedFaculty, "Get all tickets");
    }

    @Test
    @DisplayName("Test save tickets")
    void testSaveFailed() {
        // Setup our mock repository

        // Execute the service call
        Ticket returnedFaculty = ticketService.save(null);

        // Assert the response
        assertNull(returnedFaculty, "The saved user should be null");
        verify(ticketRepository, times(0)).save(ArgumentMatchers.any(Ticket.class));
    }

    @Test
    @DisplayName("Test findById station")
    void testfindById() {
        // Setup our mock repository
        Ticket station = new Ticket();
        doReturn(Optional.of(station)).when(ticketRepository).findById((long)1);

        // Execute the service call
        Ticket returnedStation = ticketService.findById((long)1);

        // Assert the response
        assertNotNull(returnedStation, "The saved station should not be null");
        assertEquals(Optional.of(1), returnedStation.getId(), "id");
        assertEquals(station, returnedStation, "Names should be equal");
    }

    @Test
    @DisplayName("Test findByName tickets Not Found")
    void testFindByIdNotFound() {
        // Setup our mock repository
        doReturn(Optional.empty()).when(ticketRepository).findById((long)1);

        Exception exception = assertThrows(IllegalArgumentException.class, () -> {
            // Execute the service call
            ticketService.findById((long)1);
        });

        assertEquals("Station with name: ticket not found", exception.getMessage());
    }
}
*/