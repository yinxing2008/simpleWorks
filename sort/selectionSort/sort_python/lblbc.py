"""
厦门大学计算机专业 | 前华为工程师
专注《零基础学编程系列》  http://lblbc.cn/blog
包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
公众号：蓝不蓝编程
"""
array = [2, 1, 5, 4, 3]


def sort(array, low, high):
    if low >= high:
        return array
    i = low
    j = high
    pivot = array[low]
    while i < j:
        while i < j and array[j] > pivot:
            j -= 1
        array[i] = array[j]
        while i < j and array[i] < pivot:
            i += 1
        array[j] = array[i]
    array[j] = pivot

    sort(array, low, j - 1)
    sort(array, j + 1, high)

    return


print("排序前:")
print(array)

sort(array, 0, len(array) - 1)

print("排序后:")
print(array)
