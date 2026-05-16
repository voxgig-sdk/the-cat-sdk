package core

type TheCatError struct {
	IsTheCatError bool
	Sdk              string
	Code             string
	Msg              string
	Ctx              *Context
	Result           any
	Spec             any
}

func NewTheCatError(code string, msg string, ctx *Context) *TheCatError {
	return &TheCatError{
		IsTheCatError: true,
		Sdk:              "TheCat",
		Code:             code,
		Msg:              msg,
		Ctx:              ctx,
	}
}

func (e *TheCatError) Error() string {
	return e.Msg
}
