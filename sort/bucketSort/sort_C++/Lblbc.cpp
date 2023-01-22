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

void sort(int array[], int count)
{
	int max = array[0];
	int min = array[0];
	for (int i = 1; i < count; i++)
	{
		if (array[i] > max)
		{
			max = array[i];
		}

		if (array[i] < min)
		{
			min = array[i];
		}
	}

	int bucketLen = max - min + 1;
	int *bucket = new int[bucketLen];
	for (int i = 0; i < bucketLen; i++)
	{
		bucket[i] = 0;
	}

	int index = 0;
	for (int i = 0; i < count; i++)
	{
		index = array[i] - min;
		bucket[index] += 1;
	}

	int start = 0;
	for (int i = 0; i < bucketLen; i++)
	{
		for (int j = start; j < start + bucket[i]; j++)
		{
			array[j] = min + i;
		}
		start += bucket[i];
	}
	delete[] bucket;
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
