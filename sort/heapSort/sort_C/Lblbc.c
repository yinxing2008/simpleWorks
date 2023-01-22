/// 厦门大学计算机专业 | 前华为工程师
/// 专注《零基础学编程系列》  http://lblbc.cn/blog
/// 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
/// 公众号：蓝不蓝编程

#include<stdio.h>

void printArray(int* array, int count)
{
	for (int i = 0; i < count; i++)
	{
		printf("%d ", array[i]);
	}
}

void adjustHeap(int* array, int i, int length)
{
    int tmp = array[i];
    for (int j = i * 2 + 1; j < length; j = j * 2 + 1)
    {
        if (j + 1 < length && array[j] < array[j + 1])
        {
            j++;
        }
        if (array[j] > tmp)
        {
            array[i] = array[j];
            i = j;
        }
        else
        {
            break;
        }
    }
    array[i] = tmp;
}

 void sort(int* array, int count)
{
    for (int i = count / 2 - 1; i >= 0; i--)
    {
        adjustHeap(array, i, count);
    }
    for (int j = count - 1; j > 0; j--)
    {
        int temp = array[0];
        array[0] = array[j];
        array[j] = temp;
        adjustHeap(array, 0, j);
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