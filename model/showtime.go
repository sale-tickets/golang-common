package model

import "time"

type Showtime struct {
	Base
	FilmId       string    `json:"dilmId"`
	CinemaRoomId string    `json:"cinemaRoomId"`
	StartTime    time.Time `json:"startTime"`
	EndTime      time.Time `json:"endTime"`
}
