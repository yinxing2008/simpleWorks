/// 厦门大学计算机专业 | 前华为工程师
/// 专注《零基础学编程系列》  http://lblbc.cn/blog
/// 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
/// 公众号：蓝不蓝编程

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void printArray(int *array, int count)
{
	for (int i = 0; i < count; i++)
	{
		printf("%d ", array[i]);
	}
}

void mergeSort(int *a, int *tmp, int begin, int end)
{
	if (begin >= end)
		return; 
	int middle = (begin + end) / 2;
	int begin1 = begin;
	int end1 = middle;
	int begin2 = middle + 1;
	int end2 = end;
	mergeSort(a, tmp, begin1, end1);
	mergeSort(a, tmp, begin2, end2);

	int i = begin;
	while (begin1 <= end1 && begin2 <= end2)
	{
		if (a[begin1] <= a[begin2])
		{
			tmp[i++] = a[begin1++];
		}
		else
		{
			tmp[i++] = a[begin2++];
		}
	}
	while (begin1 <= end1)
	{
		tmp[i++] = a[begin1++];
	}
	while (begin2 <= end2)
	{
		tmp[i++] = a[begin2++];
	}
	memcpy(a + begin, tmp + begin, sizeof(int) * (end - begin + 1)); 
}

void sort(int *array, int n)
{
	int *tmp = (int *)malloc(sizeof(int) * n);
	mergeSort(array, tmp, 0, n - 1);
	free(tmp);
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