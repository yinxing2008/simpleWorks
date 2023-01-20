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
    var gap = array.size / 2
    while (gap > 0) {
        for (i in gap until array.size) {
            var j = i
            val tmp = array[j]
            if (array[j] < array[j - gap]) {
                while (j - gap >= 0 && tmp < array[j - gap]) {
                    array[j] = array[j - gap]
                    j -= gap
                }
                array[j] = tmp
            }
        }
        gap /= 2
    }
}

private fun printArray(array: IntArray) {
    for (i in array.indices) {
        print(array[i].toString() + " ")
    }
    println()
}
