/*
  厦门大学计算机专业 | 前华为工程师
  专注《零基础学编程系列》  http://lblbc.cn/blog
  包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
  公众号：蓝不蓝编程
*/

package main

import "fmt"

var array = []int{2, 1, 5, 4, 3}

func adjustHeap(currentIndex int, maxLength int) {
	var noLeafValue = array[currentIndex]
	for j := 2*currentIndex + 1; j <= maxLength; j = currentIndex*2 + 1 {
		if j < maxLength && array[j] < array[j+1] {
			j++
		}
		if noLeafValue >= array[j] {
			break
		}
		array[currentIndex] = array[j]
		currentIndex = j
	}
	array[currentIndex] = noLeafValue
}

func createHeap(length int) {
	for i := length / 2; i >= 0; i-- {
		adjustHeap(i, length-1)
	}
}

func sort(array []int) {
	var length = len(array)
	createHeap(length)
	for i := length - 1; i > 0; i-- {
		array[0], array[i] = array[i], array[0]
		adjustHeap(0, i-1)
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

	sort(array)

	fmt.Println("排序后")
	printArray()
}
