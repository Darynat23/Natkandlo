package dto

import (
	"gitlab.com/william.rodriguez/wilgie-api-users/app/persons/person_dto"
	"go.mongodb.org/mongo-driver/bson/primitive"
)

type User struct {
	Id         primitive.ObjectID `bson:"_id" json:"id"`
	Username   string             `json:"username"`
	Password   string             `json:"password"`
	CustomerId string             `json:"customer_id"`
	Roles      []Role             `json:"roles"`
}

type UserPerson struct {
	User   *User              `json:"user"`
	Person *person_dto.Person `json:"person"`
}

func (u *User) Validate() bool {
	if u.Username == "" {
		return false
	}

	if u.Password == "" {
		return false
	}

	return true
}

type Role struct {
	Id    string `json:"id" bson:"_id"`
	Name  string `json:"name"`
	Level int    `json:"level"`
}
