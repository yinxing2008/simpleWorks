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
    for (i in array.size / 2 - 1 downTo 0) {
        adjustHeap(array, i, array.size)
    }
    for (j in array.size - 1 downTo 1) {
        val temp = array[0]
        array[0] = array[j]
        array[j] = temp
        adjustHeap(array, 0, j)
    }
}

private fun adjustHeap(array: IntArray, _startIndex: Int, length: Int) {
    var startIndex = _startIndex
    val tmp = array[startIndex]
    var j = startIndex * 2 + 1
    while (j < length) {
        if (j + 1 < length && array[j] < array[j + 1]) {
            j++
        }
        if (array[j] > tmp) {
            array[startIndex] = array[j]
            startIndex = j
        } else {
            break
        }
        j = j * 2 + 1
    }
    array[startIndex] = tmp
}

private fun printArray(array: IntArray) {
    for (i in array.indices) {
        print(array[i].toString() + " ")
    }
    println()
}
