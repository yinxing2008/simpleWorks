"""
厦门大学计算机专业 | 前华为工程师
专注《零基础学编程系列》  http://lblbc.cn/blog
包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
公众号：蓝不蓝编程
"""
array = [2, 1, 5, 4, 3]


def sort():
    max_num = max(array)
    count = [0 for i in range(max_num + 1)]
    for val in array:
        count[val] += 1
    array.clear()
    for index, val in enumerate(count):
        for i in range(val):
            array.append(index)


print("排序前:")
print(array)

sort()

print("排序后:")
print(array)
