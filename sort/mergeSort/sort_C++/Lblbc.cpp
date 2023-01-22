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

void mergeSort(int arr[], int left, int mid, int right)
{
	int i = left;
	int j = mid + 1;
	int k = 0;
	int *tmp = new int[right - left + 1];
	while (i <= mid && j <= right)
	{
		if (arr[i] < arr[j])
			tmp[k++] = arr[i++];
		else
			tmp[k++] = arr[j++];
	}
	while (i <= mid)
	{
		tmp[k++] = arr[i++];
	}
	while (j <= right)
	{
		tmp[k++] = arr[j++];
	}
	for (i = 0; i < k; i++)
	{
		arr[left++] = tmp[i];
	}
	delete[] tmp;
}

void sort(int array[], int left, int right)
{
	if (left == right)
		return;
	int mid = (left + right) / 2;
	sort(array, left, mid);
	sort(array, mid + 1, right);
	mergeSort(array, left, mid, right);
}

int main()
{
	int array[] = {2, 1, 5, 4, 3};
	int count = sizeof(array) / sizeof(int);
	printf("排序前:");
	printArray(array, count);

	sort(array, 0, count - 1);

	printf("排序后:");
	printArray(array, count);
	return 0;
}
