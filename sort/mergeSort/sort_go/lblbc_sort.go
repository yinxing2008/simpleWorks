/*
  厦门大学计算机专业 | 前华为工程师
  专注《零基础学编程系列》  http://lblbc.cn/blog
  包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
  公众号：蓝不蓝编程
*/

package main

import (
	"fmt"
)

var array = []int{2, 1, 5, 4, 3}

func sort() {
	mergeSort(array, 0, len(array))
}

func mergeSort(array []int, begin int, end int) {
	if end-begin > 1 {
		mid := begin + (end-begin+1)/2
		mergeSort(array, begin, mid)
		mergeSort(array, mid, end)
		merge(array, begin, mid, end)
	}
}

func merge(array []int, begin int, mid int, end int) {
	leftSize := mid - begin
	rightSize := end - mid
	newSize := leftSize + rightSize
	result := make([]int, 0, newSize)

	left := 0
	right := 0
	for left < leftSize && right < rightSize {
		lValue := array[begin+left]
		rValue := array[mid+right]
		if lValue < rValue {
			result = append(result, lValue)
			left++
		} else {
			result = append(result, rValue)
			right++
		}
	}

	result = append(result, array[begin+left:mid]...)
	result = append(result, array[mid+right:end]...)

	for i := 0; i < newSize; i++ {
		array[begin+i] = result[i]
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
