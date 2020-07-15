package person_service

import (
	"gitlab.com/william.rodriguez/wilgie-api-users/app/persons/person_dao"
	"gitlab.com/william.rodriguez/wilgie-api-users/app/persons/person_dto"
	"gitlab.com/william.rodriguez/wilgie-go-shared/errors"
)

func Save(p *person_dto.Person) (*person_dto.Person, *errors.Error) {
	return person_dao.Save(p)
}