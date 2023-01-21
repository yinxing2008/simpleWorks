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

void sort(int *arr, int n)
{
	int max = arr[0];
	int base = 1;

	for (int i = 0; i < n; i++)
	{
		if (arr[i] > max)
		{
			max = arr[i];
		}
	}
	int *tmpArr = new int[n];
	while (max / base > 0)
	{
		int bucket[10] = {0};
		for (int i = 0; i < n; i++)
		{
			bucket[arr[i] / base % 10]++;
		}
		for (int i = 1; i < 10; i++)
		{
			bucket[i] += bucket[i - 1];
		}
		for (int i = n - 1; i >= 0; i--)
		{
			tmpArr[bucket[arr[i] / base % 10] - 1] = arr[i];
			bucket[arr[i] / base % 10]--;
		}
		for (int i = 0; i < n; i++)
		{
			arr[i] = tmpArr[i];
		}
		base *= 10;
	}
	free(tmpArr);
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

