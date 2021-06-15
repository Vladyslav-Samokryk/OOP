/*package org.slava.railway.tickets.Services;


import org.slava.railway.tickets.entity.Station;
import org.slava.railway.tickets.entity.Ticket;
import org.slava.railway.tickets.entity.Train;
import org.slava.railway.tickets.repository.TrainRepository;
import org.slava.railway.tickets.service.TrainService;
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

public class TrainRepositoryTest {
    @Autowired
    TrainService trainService;

    @MockBean
    TrainRepository trainRepository;

    @Test
    @DisplayName("Test findById train")
    void testfindById() {
        // Setup our mock repository
        Ticket station = new Ticket();
        doReturn(Optional.of(station)).when(trainRepository).findById((long)1);

        // Execute the service call
        Train returnedStation = trainService.findById((long)1);

        // Assert the response
        assertNotNull(returnedStation, "The saved station should not be null");
        assertEquals(Optional.of(1), returnedStation.getId(), "id");
        assertEquals(station, returnedStation, "Names should be equal");
    }

    @Test
    @DisplayName("Test findByName train Not Found")
    void testFindByIdNotFound() {
        // Setup our mock repository
        doReturn(Optional.empty()).when(trainRepository).findById((long)1);

        Exception exception = assertThrows(IllegalArgumentException.class, () -> {
            // Execute the service call
            trainService.findById((long)1);
        });

        assertEquals("Station with name: ticket not found", exception.getMessage());
    }

    @Test
    @DisplayName("Test findAll")
    void testFindAll() {
        // Setup our mock repository
        Station station = new Station();
        Station station2= new Station();

        Pageable pageable = PageRequest.of(0, 5, Sort.by(Sort.Direction.DESC, "name"));
        Page<Station> page = new PageImpl<>(List.of(station, station2));
        doReturn(page).when(trainRepository).findAll(pageable);

        // Execute the service call
        List<Train> stations = trainService.getAll();

        // Assert the response
        Assertions.assertEquals(2, stations.size(), "findAll should return 2 station");
    }
}

*/