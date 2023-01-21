/*
  厦门大学计算机专业 | 前华为工程师
  专注《零基础学编程系列》  http://lblbc.cn/blog
  包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
  公众号：蓝不蓝编程
*/

package main

import "fmt"

var array = []int{2, 1, 5, 4, 3}

func adjustHeap(array []int, currentIndex int, maxLength int) {
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

func createHeap(array []int, length int) {
	for i := length / 2; i >= 0; i-- {
		adjustHeap(array, i, length-1)
	}
}
func heapSort(array []int, length int) {
	for i := length - 1; i > 0; i-- {
		array[0], array[i] = array[i], array[0]
		adjustHeap(array, 0, i-1)
	}
}
func main() {

	var length = len(array)
	fmt.Println("建堆之前：")
	for i := 0; i < length; i++ {
		fmt.Printf("%d,", array[i])
	}
	fmt.Println()
	fmt.Println("建堆之后：")
	createHeap(array, length)
	for i := 0; i < length; i++ {
		fmt.Printf("%d,", array[i])
	}
	fmt.Printf("堆排序之后: ")
	heapSort(array, length)
	for i := 0; i < length; i++ {
		fmt.Printf("%d,", array[i])
	}
}
