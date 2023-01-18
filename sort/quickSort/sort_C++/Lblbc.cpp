/// 厦门大学计算机专业 | 前华为工程师
/// 专注《零基础学编程系列》  http://lblbc.cn/blog
/// 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
/// 公众号：蓝不蓝编程
/// 
#include <iostream>
#include <vector>
using namespace std;


void print(const vector<int>& array)
{
	for (auto val : array)
		cout << val << " ";
	cout << endl;
}

int partition(vector<int>& array, int low, int high)
{
	int pivot_value = array[low];//备份枢轴值
	while (low < high) {
		while (low < high && array[high] >= pivot_value) {
			--high;
		}
		array[low] = array[high];
		while (low < high && array[low] <= pivot_value) {
			++low;
		}
		array[high] = array[low];
	}
	array[low] = pivot_value;

	return low;
}
void quickSort(vector<int>& array, int low, int high)
{
	int pivot_index;
	if (low < high)
	{
		pivot_index = partition(array, low, high);
		quickSort(array, low, pivot_index - 1);
		quickSort(array, pivot_index + 1, high);
	}
}

void sort(vector<int>& array)
{
	quickSort(array, 0, array.size() - 1);
}

int main()
{
	vector<int> array{ 2, 1, 5, 4, 3 };
	cout << "排序前: "; print(array);
	sort(array);
	cout << "排序后: "; print(array);
	return 0;
}