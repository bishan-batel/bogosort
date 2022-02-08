package main

import (
	"bufio"
	"fmt"
	"math/rand"
	"os"
	"strconv"
	"strings"
	"time"
)

func main() {

	reader := bufio.NewReader(os.Stdin)
	values := make([]int, 0)
	input := ""
	inputInt := 0
	var err error

	for input != "y" {

		fmt.Print("Enter a number: ")
		input, err = reader.ReadString('\n')

		if err != nil {
			panic(err)
		} else if input != "\r\n" {
			inputInt, err = strconv.Atoi(strings.Trim(strings.Trim(input, " "), "\r\n"))
			if err != nil {
				fmt.Println("Please enter a valid number")
			} else {
				fmt.Printf("%d\n", inputInt)
				values = append(values, inputInt)
				input = ""
				for input == "" {
					fmt.Print("Do you want to quit? (y/n) ")
					input, err = reader.ReadString('\n')
					if err != nil {
						panic(err)
					} else if input != "\r\n" {
						if strings.Contains(strings.ToLower(strings.Trim(input, " ")), "y") {
							input = "y"
						} else if strings.Contains(strings.ToLower(strings.Trim(input, " ")), "n") {
							input = "n"
						} else {
							fmt.Println("Please enter yes or no")
						}
					}

					time.Sleep(5 * time.Millisecond)
				}
			}
		}

		time.Sleep(5 * time.Millisecond)

	}

	fmt.Println(values)
	fmt.Println("Sorting. . .")

	bogoSort(&values)
	fmt.Println("Complete")
	fmt.Println(values)

}

func bogoSort(arr *[]int) *[]int {
	for !isSorted(arr) {
		shuffle(arr)
	}
	return arr
}

func isSorted(arr *[]int) bool {
	for i := 0; i < (len(*arr) - 1); i++ {
		if !((*arr)[i] <= (*arr)[i+1]) {
			return false
		}
	}
	return true
}

func shuffle(arr *[]int) {
	var j int
	for i := range *arr {
		j = rand.Int() % len(*arr)
		(*arr)[i], (*arr)[j] = (*arr)[j], (*arr)[i]
	}
}
