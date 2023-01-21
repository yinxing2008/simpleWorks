"""
厦门大学计算机专业 | 前华为工程师
专注《零基础学编程系列》  http://lblbc.cn/blog
包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
公众号：蓝不蓝编程
"""
array = [2, 1, 5, 4, 3]


def sort():
    max_num = max(array)
    it = 0
    while 10 ** it <= max_num:
        buckets = [[] for _ in range(10)]
        for num in array:
            digit = (num // 10 ** it) % 10
            buckets[digit].append(num)
        array.clear()
        for buc in buckets:
            array.extend(buc)

        it += 1


print("排序前:")
print(array)

sort()

print("排序后:")
print(array)
