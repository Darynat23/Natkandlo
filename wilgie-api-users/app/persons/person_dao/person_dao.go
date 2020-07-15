package person_dao

import (
	"context"
	"gitlab.com/william.rodriguez/wilgie-api-users/app/persons/person_dto"
	"gitlab.com/william.rodriguez/wilgie-go-shared/adapters/mongo"
	"gitlab.com/william.rodriguez/wilgie-go-shared/errors"
	"go.mongodb.org/mongo-driver/bson/primitive"
	"go.mongodb.org/mongo-driver/mongo/options"
)

var opts = options.Client().ApplyURI("mongodb://localhost:27017")

var personColl = mongo.NewClient("wilgie-users", "person", opts)

func Save(p *person_dto.Person) (*person_dto.Person, *errors.Error) {
	p.Id = primitive.NewObjectID()
	_, err := personColl.InsertOne(context.TODO(), p)
	if err != nil {
		return nil, errors.InternalError(err.Error())
	}
	return p, nil
}
