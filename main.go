package main
import "github.com/labstack/echo/v4"
func main(){e:=echo.New();e.GET("/healthz",func(c echo.Context)error{return c.JSON(200,map[string]string{"status":"ok"})});e.POST("/projects",func(c echo.Context)error{return c.JSON(201,map[string]bool{"accepted":true})});e.Logger.Fatal(e.Start(":8080"))}
