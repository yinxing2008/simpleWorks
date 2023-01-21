/// 厦门大学计算机专业 | 前华为工程师
/// 专注《零基础学编程系列》  http://lblbc.cn/blog
/// 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
/// 公众号：蓝不蓝编程

#include <iostream>
using namespace std;

void printArray(int* array, int count)
{
	for (int i = 0; i < count; i++)
	{
		cout << array[i] << " ";
	}
}

void sort(int *array, int count)
{
	for (int i = 1; i < count; i++)
	{
		int insertVal = array[i];
		int insertIndex = i - 1;
		while (insertIndex >= 0 && insertVal < array[insertIndex])
		{
			array[insertIndex + 1] = array[insertIndex];
			insertIndex--;
		}
		array[insertIndex + 1] = insertVal;
	}
}

int main()
{
	int array[5] = { 2, 1, 5, 4, 3 };
	int count = sizeof(array) / sizeof(int);
	printf("排序前:");
	printArray(array, count);

	sort(array, count);

	printf("排序后:");
	printArray(array, count);
	return 0;
}

