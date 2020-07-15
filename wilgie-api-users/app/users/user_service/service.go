package user_service

import (
	"gitlab.com/william.rodriguez/wilgie-api-users/adapters/wilgieStripe"
	"gitlab.com/william.rodriguez/wilgie-api-users/app/persons/person_dto"
	"gitlab.com/william.rodriguez/wilgie-api-users/app/persons/person_service"
	"gitlab.com/william.rodriguez/wilgie-api-users/app/users/dao"
	"gitlab.com/william.rodriguez/wilgie-api-users/app/users/dto"
	"gitlab.com/william.rodriguez/wilgie-go-shared/crypto"
	"gitlab.com/william.rodriguez/wilgie-go-shared/errors"
)

func FindAll() ([]*dto.User, *errors.Error) {
	return dao.FindAll()
}
func Save(user *dto.User) (*dto.User, *errors.Error) {
	return dao.Save(user)
}

func Register(register *dto.Register) (*person_dto.Person, *errors.Error) {

	exists, _ := dao.FindByUser(register.Email)

	if exists != nil {
		return nil, errors.BadRequest("user exists")
	}

	hash, e := crypto.HashPassword(register.Password)

	if e != nil {
		return nil, errors.InternalError(e.Error())
	}

	customer, err := wilgieStripe.CreateCustomer(register.Email, register.FirstName+register.LastName)

	if err != nil {
		return nil, err
	}

	user := &dto.User{
		Username:   register.Email,
		Password:   hash,
		CustomerId: customer.Id,
		Roles: []dto.Role{
			{
				Name:  "admin",
				Level: 0,
			},
		},
	}

	if !user.Validate() {
		return nil, errors.BadRequest("user info invalid")
	}

	userSaved, errUser := Save(user)
	if errUser != nil {
		return nil, errors.BadRequest("user info invalid")
	}

	person := &person_dto.Person{
		FirstName:    register.FirstName,
		LastName:     register.LastName,
		TypeDocument: "",
		Document:     "",
		Phone:        "",
		Email:        register.Email,
		IdUser:       userSaved.Id,
	}

	personSaved, e2 := person_service.Save(person)

	if e2 != nil {
		return nil, e2
	}

	return personSaved, nil
}

func Login(username string, password string) (*dto.User, *errors.Error) {

	user, err := dao.FindByUser(username)

	if err != nil {
		return nil, err
	}

	correct := crypto.CheckPasswordHash(password, user.Password)

	if correct {
		return user, nil
	}

	return nil, errors.NotFound("User and password not found")
}

func Update() {

}
