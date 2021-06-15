package org.slava.railway.tickets.repository;

import org.slava.railway.tickets.entity.Station;
import org.slava.railway.tickets.entity.Train;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TrainRepository extends JpaRepository<Train, Long> {

    @Query ("select t from Train t where t.departStation= ?1 and t.arriveStation = ?2")
    public List<Train> findTrainsBetween (Station departStation, Station arriveStation);


    public List<Train> findTrainsByDepartStation (Station departStation);

    public List<Train> findTrainsByArriveStation (Station arriveStation);

    public Train findByNumber(int number);

}
