package app

import (
	"github.com/gin-contrib/cors"
	"github.com/gin-gonic/gin"
	"gitlab.com/william.rodriguez/wilgie-api-users/app/users/user_controller"
)

func RunApplication()  {
	router := gin.Default()
	router.Use(cors.Default())
	api := router.Group("api/v1")
	users := api.Group("users")
	{
		users.GET("", user_controller.All)
		users.GET("id/:id", user_controller.FindUser)
		users.POST("", user_controller.Save)
		users.POST("register", user_controller.Register)
		users.POST("login", user_controller.Login)
		users.PUT("", user_controller.Update)
		users.PATCH("", user_controller.Update)
		users.DELETE("", user_controller.Delete)
	}
	_ = router.Run(":5005")
}
