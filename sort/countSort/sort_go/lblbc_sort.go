package main

import "fmt"

var array = []int{2, 1, 5, 4, 3}

func sort() {
	var index int = 0
	var tmpLen int = 0
	for _, data := range array {
		if tmpLen < data {
			tmpLen = data
		}
	}
	tmpLen++
	tmpArray := make([][]int, tmpLen)
	for _, data := range array {
		tmpArray[data] = append(tmpArray[data], data)
	}
	for i := 0; i < tmpLen; i++ {
		if tmpArray[i] != nil {
			for j := 0; j < len(tmpArray[i]); j++ {
				array[index] = tmpArray[i][j]
				index++
			}
		}
	}
}

func printArray() {
	for _, value := range array {
		fmt.Printf("%d  ", value)
	}
	fmt.Println()
}

func main() {
	fmt.Println("排序前")
	printArray()

	sort()

	fmt.Println("排序后")
	printArray()
}
