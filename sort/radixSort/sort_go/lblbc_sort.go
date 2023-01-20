/*
  厦门大学计算机专业 | 前华为工程师
  专注《零基础学编程系列》  http://lblbc.cn/blog
  包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
  公众号：蓝不蓝编程
*/
package main

import (
	"fmt"
	"sort"
)

var max_num_bucket int = 0

func radixSort(arr []int) {
	var queue map[int][]int
	var radix int = 0
	var base int = 1
	var key int
	var keys []int
	var index int
	max := arr[0]
	for _, val := range arr {
		if val > max {
			max = val
		}
	}
	for max != 0 {
		radix++
		max /= 10
	}

	for i := 0; i < radix; i++ {
		queue = make(map[int][]int)
		keys = nil
		index = 0
		for _, val := range arr {
			key = val % (base * 10) / base
			queue[key] = append(queue[key], val)
		}
		if len(queue) > max_num_bucket {
			max_num_bucket = len(queue)
		}
		for key := range queue {
			keys = append(keys, key)
		}
		sort.Ints(keys)
		for _, key := range keys {
			for _, val := range queue[key] {
				arr[index] = val
				index++
			}
		}
		base *= 10
	}
}

func main() {
	array := [5]int{2, 1, 5, 4, 3}
	fmt.Println("排序前:  ", array)
	radixSort(array[0:])
	fmt.Println("排序后:  ", array)
}
