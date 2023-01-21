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
    val max = getMaxValue(array)
    var exp = 1
    while (max / exp > 0) {
        countSort(array, exp)
        exp *= 10
    }
}

private fun countSort(array: IntArray, exp: Int) {
    val tmpArr = IntArray(array.size)
    val bucketArr = IntArray(10)
    for (i in array.indices) bucketArr[array[i] / exp % 10]++
    for (i in 1..9) bucketArr[i] += bucketArr[i - 1]
    for (i in array.indices.reversed()) {
        tmpArr[bucketArr[array[i] / exp % 10] - 1] = array[i]
        bucketArr[array[i] / exp % 10]--
    }
    for (i in array.indices) {
        array[i] = tmpArr[i]
    }
}

private fun getMaxValue(array: IntArray): Int {
    var max = array[0]
    for (i in 1 until array.size) {
        if (array[i] > max) {
            max = array[i]
        }
    }
    return max
}

private fun printArray(array: IntArray) {
    for (i in array.indices) {
        print(array[i].toString() + " ")
    }
    println()
}
