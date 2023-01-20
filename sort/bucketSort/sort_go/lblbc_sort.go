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

func bucketSort(array []int) {
	bucket := make(map[int][]int)
	for _, val := range array {
		bucket[val/10] = append(bucket[val/10], val)
	}
	for _, val := range bucket {
		sort.Ints(val)
	}
	var keys []int
	for key := range bucket {
		keys = append(keys, key)
	}
	sort.Ints(keys)
	index := 0
	for _, key := range keys {
		for _, val := range bucket[key] {
			array[index] = val
			index++
		}
	}
}

func main() {
	array := [5]int{2, 1, 5, 4, 3}
	fmt.Println("排序前:  ", array)
	bucketSort(array[0:])
	fmt.Println("排序后:  ", array)
}
