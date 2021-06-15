package org.slava.railway.tickets.dto;

import lombok.*;
import org.slava.railway.tickets.entity.Station;


@AllArgsConstructor
@Getter
@Setter
@NoArgsConstructor
@Builder
@ToString
public class TrainDTO {

    private Long id;


    private int number;


    private Station departStation;


    private Station arriveStation;

//    @Min(value=0, message="must be equal or greater than 0")
//    @Max(value=23, message="must be equal or less than 23")
    private int departHour;

//    @Min(value=0, message="must be equal or greater than 0")
//    @Max(value=59, message="must be equal or less than 59")
    private int departMinute;

//    @Min(value=0, message="must be equal or greater than 0")
//    @Max(value=23, message="must be equal or less than 23")
    private int arriveHour;

//    @Min(value=0, message="must be equal or greater than 0")
//    @Max(value=59, message="must be equal or less than 59")
    private int arriveMinute;

    private int price;



//    private int freeSeats = 200;

}
