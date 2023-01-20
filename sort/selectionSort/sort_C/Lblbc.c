/// 厦门大学计算机专业 | 前华为工程师
/// 专注《零基础学编程系列》  http://lblbc.cn/blog
/// 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
/// 公众号：蓝不蓝编程
/// 
#include<stdio.h>


void printArray(int* array, int count)
{
	for (int i = 0; i < count; i++)
	{
		printf("%d ", array[i]);
	}
}

void sort(int* array, int count)
{
    for (int i = 0; i < count - 1; i++)
    {
        int minIndex = i;
        int min = array[i];
        for (int j = i + 1; j < count; j++)
        {
            if (min > array[j])
            {
                min = array[j];
                minIndex = j;
            }
        }
        if (minIndex != i)
        {
            array[minIndex] = array[i];
            array[i] = min;
        }
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