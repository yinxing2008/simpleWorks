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
	for gap := len(array) / 2; gap > 0; gap /= 2 {
		for i := gap; i < len(array); i++ {
			var j = i
			var tmp = array[j]
			if array[j] < array[j-gap] {
				for {
					array[j] = array[j-gap]
					j -= gap
					if j-gap < 0 || tmp >= array[j-gap] {
						break
					}
				}

				array[j] = tmp
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
