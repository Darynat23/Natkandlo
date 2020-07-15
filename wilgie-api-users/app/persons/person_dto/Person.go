package person_dto

import "go.mongodb.org/mongo-driver/bson/primitive"

type Person struct {
	Id           primitive.ObjectID `json:"id" bson:"_id"`
	FirstName    string             `json:"first_name"`
	LastName     string             `json:"last_name"`
	TypeDocument string             `json:"type_document,omit_empty"`
	Document     string             `json:"document,omit_empty"`
	Phone        string             `json:"phone,omit_empty"`
	Email        string             `json:"email,omit_empty"`
	IdUser   primitive.ObjectID  	`json:"id_user"`
}

func (p *Person) Validate() {

}

func (p *Person) FullName() string {
	return p.FirstName + p.LastName
}

