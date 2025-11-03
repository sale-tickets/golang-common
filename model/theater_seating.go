package model

type TheaterSeating struct {
	Base
	CinemaRoomId string `json:"cinema_room_id"`
	Name         string `json:"name"`
	Code         string `json:"code"`
	RowIndex     string `json:"row_index"`
	ColIndex     string `json:"col_index"`
}
