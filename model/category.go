package model

type Category struct {
	Base
	Name string `json:"name"`
	Code string `json:"code" gorm:"unique"`
}
