package model

type Ticket struct {
	Base
	MovieScreeningUuid string  `json:"movie_screening_uuid"`
	TheaterSeatingUuid string  `json:"theater_seating_uuid"`
	Price              float64 `json:"price"`
}
