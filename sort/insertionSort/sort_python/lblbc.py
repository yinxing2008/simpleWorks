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
        insert_val = array[i]
        insert_index = i - 1
        while insert_index >= 0 and insert_val < array[insert_index]:
            array[insert_index + 1] = array[insert_index]
            insert_index -= 1

        array[insert_index + 1] = insert_val


print("排序前:")
print(array)

sort()

print("排序后:")
print(array)
