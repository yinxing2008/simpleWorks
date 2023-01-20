"""
厦门大学计算机专业 | 前华为工程师
专注《零基础学编程系列》  http://lblbc.cn/blog
包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
公众号：蓝不蓝编程
"""
array = [2, 1, 5, 4, 3]


def sort():
    min_num, max_num = min(array), max(array)
    bucket_num = (max_num - min_num) // 3 + 1
    buckets = [[] for _ in range(bucket_num)]
    for num in array:
        buckets[(num - min_num) // 3].append(num)
    new_array = list()
    for i in buckets:
        for j in sorted(i):
            new_array.append(j)
    return new_array


print("排序前:")
print(array)

array = sort()

print("排序后:")
print(array)
