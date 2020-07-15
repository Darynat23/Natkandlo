package user_controller

import (
	"github.com/gin-gonic/gin"
	"gitlab.com/william.rodriguez/wilgie-api-users/app/users/dto"
	"gitlab.com/william.rodriguez/wilgie-api-users/app/users/user_service"
	"gitlab.com/william.rodriguez/wilgie-go-shared/errors"
	"net/http"
)

func All(c *gin.Context) {
	all, err := user_service.FindAll()
	if err != nil {
		c.JSON(err.Status, err)
		return
	}
	c.JSON(200, all)
}

func FindUser(c *gin.Context) {
	c.JSON(200, nil)
}

func Save(c *gin.Context) {
	var user *dto.User
	err := c.ShouldBindJSON(&user)

	if err != nil {
		c.JSON(400, errors.BadRequest(err.Error()))
		return
	}

	save, e := user_service.Save(user)

	if e != nil {
		c.JSON(e.Status, e)
		return
	}

	c.JSON(200, save)
}

func Register(c *gin.Context) {
	var register *dto.Register
	err := c.ShouldBindJSON(&register)

	if err != nil {
		c.JSON(400, errors.BadRequest(err.Error()))
		return
	}
	userPerson, errRegister := user_service.Register(register)

	if errRegister != nil {
		c.JSON(errRegister.Status, errRegister)
		return
	}

	c.JSON(http.StatusCreated, userPerson)
}

func Update(c *gin.Context) {
	c.JSON(200, nil)
}

func Delete(c *gin.Context) {
	c.JSON(200, nil)
}

func Login(c *gin.Context) {

	var user dto.User
	err := c.ShouldBindJSON(&user)

	if err != nil {
		c.JSON(http.StatusBadRequest, err)
		return
	}

	login, e := user_service.Login(user.Username, user.Password)

	if e != nil {
		c.JSON(e.Status, e)
		return
	}

	c.JSON(http.StatusOK, login)
}
