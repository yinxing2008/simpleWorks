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
	for i := 0; i < len(array)-1; i++ {
		for j := 0; j < len(array)-1-i; j++ {
			if array[j] > array[j+1] {
				tmp := array[j+1]
				array[j+1] = array[j]
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
