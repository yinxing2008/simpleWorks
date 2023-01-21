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
    for (int gap = count / 2; gap > 0; gap /= 2)
    {
        for (int i = gap; i < count; i++)
        {
            int j = i;
            int tmp = array[j];
            if (array[j] < array[j - gap])
            {
                while (j - gap >= 0 && tmp < array[j - gap])
                {
                    array[j] = array[j - gap];
                    j -= gap;
                }
                array[j] = tmp;
            }
        }
    }
}

int main()
{
	int array[5] = { 2, 1, 5, 4, 3 };
	int count = sizeof(array) / sizeof(int);
	printf("����ǰ:");
	printArray(array, count);
	
	sort(array, count);

	printf("�����:");
	printArray(array, count);
	return 0;
}