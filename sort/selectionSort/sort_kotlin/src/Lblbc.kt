/**
 * 厦门大学计算机专业 | 前华为工程师
 * 专注《零基础学编程系列》  http://lblbc.cn/blog
 * 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
 * 公众号：蓝不蓝编程
 */

fun main() {
    val array = intArrayOf(2, 1, 5, 4, 3)
    println("排序前")
    printArray(array)
    sort(array)
    println("排序后")
    printArray(array)
}

private fun sort(array: IntArray) {
    sortMe(array, 0, array.size - 1)
}

fun sortMe(array: IntArray, low: Int, high: Int) {
    if (low >= high) {
        return
    }
    val pivot = array[low]
    var l = low
    var r = high
    var tmp: Int
    while (l < r) {
        while (l < r && array[r] >= pivot) {
            r--
        }
        while (l < r && array[l] <= pivot) {
            l++
        }
        if (l < r) {
            tmp = array[l]
            array[l] = array[r]
            array[r] = tmp
        }
    }
    array[low] = array[l]
    array[l] = pivot
    if (low < l) {
        sortMe(array, low, l - 1)
    }
    if (r < high) {
        sortMe(array, r + 1, high)
    }
}

private fun printArray(array: IntArray) {
    for (i in array.indices) {
        print(array[i].toString() + " ")
    }
    println()
}
