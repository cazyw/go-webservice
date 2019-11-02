package logger

import (
	"fmt"
	"log"
)

func Logger(msg string) {
	log.Printf(msg)
	fmt.Printf(msg)
}