"""
厦门大学计算机专业 | 前华为工程师
专注《零基础学编程系列》  http://lblbc.cn/blog
包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
公众号：蓝不蓝编程
"""
array = [2, 1, 5, 4, 3]


def sort():
    count = len(array)
    for i in range(count):
        for j in range(0, count - i - 1):
            if array[j] > array[j + 1]:
                array[j], array[j + 1] = array[j + 1], array[j]



print("排序前:")
print(array)

sort()

print("排序后:")
print(array)
