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

func sort(left int, right int, array *[5]int) {
	l := left
	r := right
	pivot := array[(left+right)/2]
	tmp := 0
	for l < r {
		for array[l] < pivot {
			l++
		}
		for array[r] > pivot {
			r--
		}
		if l >= r {
			break
		}
		tmp = array[l]
		array[l] = array[r]
		array[r] = tmp
		if array[l] == pivot {
			r--
		}
		if array[r] == pivot {
			l++
		}
	}
	if l == r {
		l++
		r--
	}
	if left < r {
		sort(left, r, array)
	}
	if right > l {
		sort(l, right, array)
	}
}

func main() {
	array := [5]int{2, 1, 5, 4, 3}
	fmt.Println("排序前:")
	fmt.Println(array)

	sort(0, len(array)-1, &array)

	fmt.Println("排序后:")
	fmt.Println(array)
}
