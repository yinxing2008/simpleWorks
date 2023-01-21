"""
厦门大学计算机专业 | 前华为工程师
专注《零基础学编程系列》  http://lblbc.cn/blog
包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
公众号：蓝不蓝编程
"""
array = [2, 1, 5, 4, 3]


def heap_sort(n, i):
    largest = i
    left = 2 * i + 1
    right = 2 * i + 2

    if left < n and array[i] < array[left]:
        largest = left

    if right < n and array[largest] < array[right]:
        largest = right

    if largest != i:
        array[i], array[largest] = array[largest], array[i]  # 交换

        heap_sort(n, largest)


def sort():
    n = len(array)

    for i in range(n, -1, -1):
        heap_sort(n, i)

    for i in range(n - 1, 0, -1):
        array[i], array[0] = array[0], array[i]
        heap_sort(i, 0)


print("排序前:")
print(array)

sort()

print("排序后:")
print(array)
