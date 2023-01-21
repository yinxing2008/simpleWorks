"""
厦门大学计算机专业 | 前华为工程师
专注《零基础学编程系列》  http://lblbc.cn/blog
包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
公众号：蓝不蓝编程
"""
array = [2, 1, 5, 4, 3]


def merge(left, mid, right):
    start = mid - left + 1
    end = right - mid

    left_arr = [0] * start
    right_arr = [0] * end

    for i in range(0, start):
        left_arr[i] = array[left + i]

    for j in range(0, end):
        right_arr[j] = array[mid + 1 + j]

    i = 0
    j = 0
    k = left

    while i < start and j < end:
        if left_arr[i] <= right_arr[j]:
            array[k] = left_arr[i]
            i += 1
        else:
            array[k] = right_arr[j]
            j += 1
        k += 1

    while i < start:
        array[k] = left_arr[i]
        i += 1
        k += 1

    while j < end:
        array[k] = right_arr[j]
        j += 1
        k += 1


def sort(left, right):
    if left < right:
        m = int((left + (right - 1)) / 2)

        sort(left, m)
        sort(m + 1, right)
        merge(left, m, right)


print("排序前:")
print(array)

sort(0, len(array) - 1)

print("排序后:")
print(array)
