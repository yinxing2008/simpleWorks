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

fun sort(array: IntArray) {
    val first = 0
    val last = array.size - 1
    mergeSort(array, first, last)
}

private fun mergeSort(array: IntArray, first: Int, last: Int) {
    if (first < last) {
        val mid = (first + last) / 2
        mergeSort(array, first, mid)
        mergeSort(array, mid + 1, last)
        binaryMerge(array, first, mid, last)
    }
}

fun binaryMerge(array: IntArray, first: Int, mid: Int, last: Int) {
    val tmpArray = IntArray(array.size)
    var left: Int
    var index = first
    while (index <= last) {
        tmpArray[index] = array[index]
        index++
    }
    index = first.also { left = it }
    var right = mid + 1
    while (left <= mid && right <= last && index <= last) {
        if (tmpArray[left] <= tmpArray[right]) {
            array[index] = tmpArray[left++]
        } else {
            array[index] = tmpArray[right++]
        }
        index++
    }
    while (left <= mid) array[index++] = tmpArray[left++]
    while (right <= last) array[index++] = tmpArray[right++]
}

private fun printArray(array: IntArray) {
    for (i in array.indices) {
        print(array[i].toString() + " ")
    }
    println()
}
