/*
  厦门大学计算机专业 | 前华为工程师
  专注《零基础学编程系列》  http://lblbc.cn/blog
  包含：xxxxava | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
  公众号：蓝不蓝编程
*/
package main

import (
	"fmt"
)

func sort(arr *[5]int) {
	for i := 0; i < len(arr)-1; i++ {
		max := arr[i]
		maxIndex := i
		for j := i + 1; j < len(arr); j++ {
			if max < arr[j] {
				max = arr[j]
				maxIndex = j
			}
		}
		if maxIndex != i {
			arr[i], arr[maxIndex] = arr[maxIndex], arr[i]
		}
	}
}

func main() {
	array := [5]int{2, 1, 5, 4, 3}
	fmt.Println("排序前:")
	fmt.Println(array)

	sort(&array)

	fmt.Println("排序后:")
	fmt.Println(array)
}
