package wilgieStripe

import (
	"github.com/go-resty/resty/v2"
	"gitlab.com/william.rodriguez/wilgie-go-shared/errors"
)

var client = resty.New().SetHostURL("http://localhost:4242/api/stripe/v1")

type createCustomerDto struct {
	Email string `json:"email"`
	Name  string `json:"name"`
}

type CustomerDto struct {
	Id    string `json:"id"`
	Email string `json:"email"`
	Name  string `json:"name"`
}

func CreateCustomer(email string, name string) (*CustomerDto, *errors.Error) {
	dto := &createCustomerDto{
		Email: email,
		Name:  name,
	}
	var customer = &CustomerDto{}

	_, err := client.R().
		SetResult(customer).
		SetBody(dto).
		Post("/customer")

	if err != nil {
		return nil, errors.InternalError(err.Error())
	}

	return customer, nil
}
