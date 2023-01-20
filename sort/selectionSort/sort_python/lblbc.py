"""
厦门大学计算机专业 | 前华为工程师
专注《零基础学编程系列》  http://lblbc.cn/blog
包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
公众号：蓝不蓝编程
"""
array = [2, 1, 5, 4, 3]


def sort():
    length = len(array)
    if length <= 1:
        return array

    for i in range(length):
        min_num_index = i

        for j in range(i + 1, length):
            if array[j] < array[min_num_index]:
                min_num_index = j

        array[min_num_index], array[i] = array[i], array[min_num_index]

    return array


print("排序前:")
print(array)

sort()

print("排序后:")
print(array)
