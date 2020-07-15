package dao

import (
	"context"
	"gitlab.com/william.rodriguez/wilgie-api-users/app/users/dto"
	"gitlab.com/william.rodriguez/wilgie-go-shared/adapters/mongo"
	"gitlab.com/william.rodriguez/wilgie-go-shared/errors"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/bson/primitive"
	"go.mongodb.org/mongo-driver/mongo/options"
)

var opts = options.Client().ApplyURI("mongodb://localhost:27017")

var usersColl = mongo.NewClient("wilgie-users", "users", opts)

func FindAll() ([]*dto.User, *errors.Error) {
	cursor, err := usersColl.Find(context.TODO(), bson.D{{}})

	if err != nil {
		return nil, errors.InternalError(err.Error())
	}

	var users []*dto.User

	defer cursor.Close(context.TODO())

	for cursor.Next(context.TODO()) {
		var user *dto.User
		err = cursor.Decode(&user)

		users = append(users, user)
	}
	err = cursor.Err()
	if err != nil {
		return nil, errors.InternalError(err.Error())
	}

	return users, nil
}

func Save(user *dto.User) (*dto.User, *errors.Error) {

	user.Id = primitive.NewObjectID()
	_, err := usersColl.InsertOne(context.TODO(), user)

	if err != nil {
		return nil, errors.InternalError(err.Error())
	}

	return user, nil
}

func FindByUser(username string) (*dto.User, *errors.Error) {
	var user dto.User
	if err := usersColl.FindOne(context.TODO(), bson.D{{"username", username}}).Decode(&user); err != nil {

		if string(err.Error()) == "mongo: no documents in result" {
			return nil, errors.NotFound("user not exist")
		}

		return nil, errors.InternalError(err.Error())
	}

	return &user, nil
}
