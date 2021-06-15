package org.slava.railway.tickets.repository;

import org.slava.railway.tickets.entity.Station;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface StationRepository extends JpaRepository<Station, Long> {

    public Optional<Station> getByName(String name);



}
