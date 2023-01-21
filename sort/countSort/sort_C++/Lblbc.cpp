/// 厦门大学计算机专业 | 前华为工程师
/// 专注《零基础学编程系列》  http://lblbc.cn/blog
/// 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
/// 公众号：蓝不蓝编程

#include <iostream>
using namespace std;

void printArray(int *array, int count)
{
	for (int i = 0; i < count; i++)
	{
		cout << array[i] << " ";
	}
}

void sort(int *array, int count)
{
	int min = array[0];
	int max = min;
	for (int i = 1; i < count; i++)
	{
		if (array[i] > max)
		{
			max = array[i];
		}
		else if (array[i] < min)
		{
			min = array[i];
		}
	}
	int countingLen = max - min + 1;
	int *counting = new int[countingLen];
	for (int i = 0; i < count; i++)
	{
		counting[array[i] - min] += 1;
	}
	int index = -1;
	for (int i = 0; i < countingLen; i++)
	{
		for (int j = 0; j < counting[i]; j++)
		{
			index++;
			array[index] = i + min;
		}
	}
}

int main()
{
	int array[5] = {2, 1, 5, 4, 3};
	int count = sizeof(array) / sizeof(int);
	printf("排序前:");
	printArray(array, count);

	sort(array, count);

	printf("排序后:");
	printArray(array, count);
	return 0;
}
