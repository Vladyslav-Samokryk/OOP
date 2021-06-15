/*package org.slava.railway.tickets.Services;

import org.slava.railway.tickets.entity.Station;
import org.slava.railway.tickets.repository.StationRepository;
import org.slava.railway.tickets.service.StationService;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.mockito.ArgumentMatchers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.data.domain.*;

import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.Set;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@SpringBootTest
class StationServisesTest {

    @Autowired
    StationService stationService;

    @MockBean
    StationRepository stationRepository;

    @Test
    @DisplayName("Test save station")
    void testSave() {
        // Setup our mock repository
        Station station = new Station();
        doReturn(station).when(stationRepository).save(any());

        // Execute the service call
        StationService returnedStation = stationService.save(station);

        // Assert the response
        assertNotNull(returnedStation, "The saved station should not be null");
        assertEquals(1, returnedStation.getAll(), "Get all station");
    }

    @Test
    @DisplayName("Test save station station")
    void testSaveFailed() {
        // Setup our mock repository

        // Execute the service call
        StationService returnedStation = stationService.save(null);

        // Assert the response
        assertNull(returnedStation, "The saved user should be null");
        verify(stationRepository, times(0)).save(ArgumentMatchers.any(Station.class));
    }

    @Test
    @DisplayName("Test findByName station")
    void testGetByName() {
        // Setup our mock repository
        Station station = new Station();
        doReturn(Optional.of(station)).when(stationRepository).getByName("Station1");

        // Execute the service call
        Station returnedStation = stationService.findByName("Station1");

        // Assert the response
        assertNotNull(returnedStation, "The saved station should not be null");
        assertEquals(1, returnedStation.getName(), "Name");
        assertEquals(station, returnedStation, "Names should be equal");
    }

    @Test
    @DisplayName("Test findByName station Not Found")
    void testFindByIdNotFound() {
        // Setup our mock repository
        doReturn(Optional.empty()).when(stationRepository).getByName("station1");

        Exception exception = assertThrows(IllegalArgumentException.class, () -> {
            // Execute the service call
            stationService.findByName("station1");
        });

        assertEquals("Station with name: Station1 not found", exception.getMessage());
    }

    @Test
    @DisplayName("Test findAll")
    void testFindAll() {
        // Setup our mock repository
        Station station = new Station();
        Station station2= new Station();

        Pageable pageable = PageRequest.of(0, 5, Sort.by(Sort.Direction.DESC, "name"));
        Page<Station> page = new PageImpl<>(List.of(station, station2));
        doReturn(page).when(stationRepository).findAll(pageable);

        // Execute the service call
        Page<Station> stations = (Page<Station>) stationService.getAll();

        // Assert the response
        Assertions.assertEquals(2, stations.getTotalElements(), "findAll should return 2 station");
    }
}
*/
