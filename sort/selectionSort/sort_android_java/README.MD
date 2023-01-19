# 开源地址
[https://gitee.com/lblbc/simple-works/tree/master/sort/](https://gitee.com/lblbc/simple-works/tree/master/sort/)
覆盖语言：C、C++、C#、Java、Kotlin、Dart、Go、JavaScript(JS)、TypeScript(TS)、ArkTS、swift、PHP。
覆盖平台：安卓(Java、Kotlin)、iOS(SwiftUI)、Flutter(Dart)、Window桌面(C#)、前端(微信小程序、uni-app、vue)、后端（Java、Kotlin、NodeJS、Python、PHP、Go、C、C++）、鸿蒙
![](https://img-blog.csdnimg.cn/94c1c52fe64f4e0b879829679e535cf8.png)

![image](https://img-blog.csdnimg.cn/img_convert/965af557d5b8cc11b30f1dfd9f67eb90.png)
# 1. 安卓Java版
```java
private static void sort(int[] array) {
    sortMe(array, 0, array.length - 1);
}

private static void sortMe(int[] array, int low, int high) {
    if (low >= high) {
        return;
    }
    int pivot = array[low];
    int l = low;
    int r = high;
    int tmp;
    while (l < r) {
        while (l < r && array[r] >= pivot) {
            r--;
        }
        while (l < r && array[l] <= pivot) {
            l++;
        }
        if (l < r) {
            tmp = array[l];
            array[l] = array[r];
            array[r] = tmp;
        }
    }
    array[low] = array[l];
    array[l] = pivot;
    if (low < l) {
        sortMe(array, low, l - 1);
    }
    if (r < high) {
        sortMe(array, r + 1, high);
    }
}
```
![](https://img-blog.csdnimg.cn/img_convert/dd8fdfe899ee0f7c57b5726a27ce8989.png)

# 2. 安卓Kotlin版
```kotlin
private fun sort(array: IntArray) {
    sortMe(array, 0, array.size - 1)
}

private fun sortMe(array: IntArray, low: Int, high: Int) {
    if (low >= high) {
        return
    }
    val pivot = array[low]
    var l = low
    var r = high
    var tmp: Int
    while (l < r) {
        while (l < r && array[r] >= pivot) {
            r--
        }
        while (l < r && array[l] <= pivot) {
            l++
        }
        if (l < r) {
            tmp = array[l]
            array[l] = array[r]
            array[r] = tmp
        }
    }
    array[low] = array[l]
    array[l] = pivot
    if (low < l) {
        sortMe(array, low, l - 1)
    }
    if (r < high) {
        sortMe(array, r + 1, high)
    }
}
```
![](https://img-blog.csdnimg.cn/img_convert/c18ef8d72a0d8533cfcf56e1381d0e4d.png)

# 3. NodeJS
```js
function sort() {
  sortMe(0, array.length - 1);
  return convertToStr(array);
}

function sortMe(slow, fast) {
  let base = array[slow];
  array[slow] = 0;
  let left = slow;
  let right = fast;
  while (left < right) {

    if (array[left] === 0) {
      if (array[right] < base) {
        array[left] = array[right];
        array[right] = 0;
        left = left + 1;
      }
      else {
        right = right - 1;
      }
    } else if (array[right] === 0) {
      if (array[left] >= base) {
        array[right] = array[left];
        array[left] = 0;
        right = right - 1;
      }
      else {
        left = left + 1;
      }
    }
  }
  array[left] = base;
  if ((left - 1) - slow > 0) {
    sortMe(slow, left - 1);
  }
  if (fast - (right + 1) > 0) {
    sortMe(right + 1, fast);
  }
  return
}
```
![](https://img-blog.csdnimg.cn/62b76ce5e5ac44b281c9de3a9e99577b.png)

# 4. Php
```php
public function sort()
    {
        $array = [2, 1, 5, 4, 3];
        $result = $this->sortMe($array);
        return var_dump($result);
    }

    public function sortMe($arr)
    {
        $length = count($arr);
        if (!is_array($arr) || $length <= 1) {
            return $arr;
        }
        $baseValue = $arr[0];
        $leftArr = array();
        $rightArr = array();
        for ($i = 1; $i < $length; $i++) {
            if ($arr[$i] < $baseValue) {
                $leftArr[] = $arr[$i];
            } else {
                $rightArr[] = $arr[$i];
            }
        }
        $leftArr = $this->sortMe($leftArr);
        $rightArr = $this->sortMe($rightArr);
        return array_merge($leftArr, array($baseValue), $rightArr);
    }
```
![](https://img-blog.csdnimg.cn/1b86b47fb80045afb0478cfe36a103b6.png)

# 5. Python
```python
array = [2, 1, 5, 4, 3]


def sort(array, low, high):
    if low >= high:
        return array
    i = low
    j = high
    pivot = array[low]
    while i < j:
        while i < j and array[j] > pivot:
            j -= 1
        array[i] = array[j]
        while i < j and array[i] < pivot:
            i += 1
        array[j] = array[i]
    array[j] = pivot

    sort(array, low, j - 1)
    sort(array, j + 1, high)

    return
```
![](https://img-blog.csdnimg.cn/f0f6b38ef4cc4e11afbb2abad6f2a03e.png)
# 6. Swift(SwiftUI版)
```swift
var array = [2, 1, 5, 4, 3]
func sort() {
    sortMe(array: &array, left: 0, right: array.count - 1)
}

func sortMe(array: inout [Int], left: Int, right: Int) {
    if right - left <= 0 {
        return
    }
    
    var flagIndex = left
    let flagValue = array[left]
    
    for index in stride(from: left + 1, to: right + 1, by: 1) {
        let value = array[index]
        if value < flagValue {
            array[flagIndex] = value
            flagIndex += 1
            array[index] = array[flagIndex]
            array[flagIndex] = flagValue
        }
    }
    
    sortMe(array: &array, left: left, right: flagIndex - 1)
    sortMe(array: &array, left: flagIndex + 1, right: right)
}
```
![](https://img-blog.csdnimg.cn/af6896d2a6ff4166bfd308335b0f749b.png)

# 7. uni-app
```js
sort() {
	let array = this.array;
	this.sortMe(array, 0, array.length - 1);
	this.array = array
	this.arrayStr = this.convertToStr(array)
},
sortMe(array: number[], low: number, high: number) {
	if (low >= high) {
		return;
	}
	var index = array[low];
	var i = low;
	var j = high;
	while (i < j) {
		while (i < j && array[j] >= index) {
			j--;
		}
		if (i < j) {
			array[i] = array[j];
			i++;
		}
		while (i < j && array[i] < index) {
			i++;
		}
		if (i < j) {
			array[j] = array[i];
			j--;
		}
	}
	array[i] = index;
	this.sortMe(array, low, i - 1);
	this.sortMe(array, i + 1, high);
},
```
![](https://img-blog.csdnimg.cn/img_convert/f53374e28b7d0841c8ebbb2de0ecd647.png)

# 8. vue
```js

```
![](https://img-blog.csdnimg.cn/1167456bbf824e729553a0e7dbd4c1ca.png)
# 9. 微信小程序
```js
sort() {
  let array = this.data.array;
  this.sortMe(array, 0, array.length - 1);
  this.setData({
    array: array,
    arrayStr: this.convertToStr(array),
  })
},
sortMe(array: number[], low: number, high: number) {
  if (low >= high) {
    return;
  }
  var index = array[low];
  var i = low;
  var j = high;
  while (i < j) {
    while (i < j && array[j] >= index) {
      j--;
    }
    if (i < j) {
      array[i] = array[j];
      i++;
    }
    while (i < j && array[i] < index) {
      i++;
    }
    if (i < j) {
      array[j] = array[i];
      j--;
    }
  }
  array[i] = index;
  this.sortMe(array, low, i - 1);
  this.sortMe(array, i + 1, high);
},
```
![](https://img-blog.csdnimg.cn/img_convert/28ba1be7231483c6826a865c2bceea0d.png)

# 10. 鸿蒙(ArkTS)
```js
 sort() {
    let array = this.array;
    this.sortMe(array, 0, array.length - 1);
    this.array = array
  }

  sortMe(array: number[], low: number, high: number) {
    if (low >= high) {
      return;
    }
    var index = array[low];
    var i = low;
    var j = high;
    while (i < j) {
      while (i < j && array[j] >= index) {
        j--;
      }
      if (i < j) {
        array[i] = array[j];
        i++;
      }
      while (i < j && array[i] < index) {
        i++;
      }
      if (i < j) {
        array[j] = array[i];
        j--;
      }
    }
    array[i] = index;
    this.sortMe(array, low, i - 1);
    this.sortMe(array, i + 1, high);
  }
```
![](https://img-blog.csdnimg.cn/11b4a3311b24416da4b7ca2077924a81.png)
# 11. Go语言
```go
func sort(left int, right int, array *[5]int) {
	l := left
	r := right
	pivot := array[(left+right)/2]
	tmp := 0
	for l < r {
		for array[l] < pivot {
			l++
		}
		for array[r] > pivot {
			r--
		}
		if l >= r {
			break
		}
		tmp = array[l]
		array[l] = array[r]
		array[r] = tmp
		if array[l] == pivot {
			r--
		}
		if array[r] == pivot {
			l++
		}
	}
	if l == r {
		l++
		r--
	}
	if left < r {
		sort(left, r, array)
	}
	if right > l {
		sort(l, right, array)
	}
}
```
![](https://img-blog.csdnimg.cn/d39afaa953aa4a0f967f54072b8d9df0.png)
# 12. Java
```java
private static void sort(int[] array) {
    sortMe(array, 0, array.length - 1);
}

public static void sortMe(int[] array, int low, int high) {
    if (low >= high) {
        return;
    }
    int pivot = array[low];
    int l = low;
    int r = high;
    int tmp;
    while (l < r) {
        while (l < r && array[r] >= pivot) {
            r--;
        }
        while (l < r && array[l] <= pivot) {
            l++;
        }
        if (l < r) {
            tmp = array[l];
            array[l] = array[r];
            array[r] = tmp;
        }
    }
    array[low] = array[l];
    array[l] = pivot;
    if (low < l) {
        sortMe(array, low, l - 1);
    }
    if (r < high) {
        sortMe(array, r + 1, high);
    }
}
```
![](https://img-blog.csdnimg.cn/img_convert/d0e1f96e0e5d0869ee9a72964fbd0ffa.png)

# 13. Kotlin
```kotlin
private fun sort(array: IntArray) {
    sortMe(array, 0, array.size - 1)
}

fun sortMe(array: IntArray, low: Int, high: Int) {
    if (low >= high) {
        return
    }
    val pivot = array[low]
    var l = low
    var r = high
    var tmp: Int
    while (l < r) {
        while (l < r && array[r] >= pivot) {
            r--
        }
        while (l < r && array[l] <= pivot) {
            l++
        }
        if (l < r) {
            tmp = array[l]
            array[l] = array[r]
            array[r] = tmp
        }
    }
    array[low] = array[l]
    array[l] = pivot
    if (low < l) {
        sortMe(array, low, l - 1)
    }
    if (r < high) {
        sortMe(array, r + 1, high)
    }
}
```
![](https://img-blog.csdnimg.cn/img_convert/08588b3ff383e7591394b88507b07f94.png)

# 14. Flutter
```dart
List<int> sort(List<int> list) {
  if (list.length < 2) {
    return list;
  } else {
    var pivot = list[0];
    var less = <int>[];
    var greater = <int>[];
    list.removeAt(0);
    for (var i in list) {
      if (i <= pivot) {
        less.add(i);
      } else {
        greater.add(i);
      }
    }
    return sort(less) + [pivot] + sort(greater);
  }
}
```
![](https://img-blog.csdnimg.cn/a57f561c0fa4429b854cc31834dc4afc.png)

# 15. C语言
```c

void sortMe(int* array, int low, int high)
{
    if (low >= high)
    {
        return;
    }
    int index = array[low];
    int i = low;
    int j = high;
    while (i < j)
    {
        while (i < j && array[j] >= index)
        {
            j--;
        }
        if (i < j)
        {
            array[i] = array[j];
            i++;
        }
        while (i < j && array[i] < index)
        {
            i++;
        }
        if (i < j)
        {
            array[j] = array[i];
            j--;
        }
    }
    array[i] = index;
    sortMe(array, low, i - 1);
    sortMe(array, i + 1, high);
}

void sort(int* array, int count)
{
    sortMe(array, 0, count - 1);
}
```
![](https://img-blog.csdnimg.cn/img_convert/0798e17c80f2a8fe637d48fa46ff9fc8.png)

# 16. C++
```cpp

void sortMe(int* array, int low, int high)
{
    if (low >= high)
    {
        return;
    }
    int index = array[low];
    int i = low;
    int j = high;
    while (i < j)
    {
        while (i < j && array[j] >= index)
        {
            j--;
        }
        if (i < j)
        {
            array[i] = array[j];
            i++;
        }
        while (i < j && array[i] < index)
        {
            i++;
        }
        if (i < j)
        {
            array[j] = array[i];
            j--;
        }
    }
    array[i] = index;
    sortMe(array, low, i - 1);
    sortMe(array, i + 1, high);
}


void sort(int* array, int count)
{
    sortMe(array, 0, count - 1);
}
```
![](https://img-blog.csdnimg.cn/img_convert/33ec37ddc4c804056a2411ffd7673ab6.png)
# 17. C#
```csharp
private static void Sort(int[] array)
{
    SortMe(array, 0, array.Length - 1);
}
private static void SortMe(int[] array, int low, int high)
{
    if (low >= high)
    {
        return;
    }
    int index = array[low];
    int i = low;
    int j = high;
    while (i < j)
    {
        while (i < j && array[j] >= index)
        {
            j--;
        }
        if (i < j)
        {
            array[i] = array[j];
            i++;
        }
        while (i < j && array[i] < index)
        {
            i++;
        }
        if (i < j)
        {
            array[j] = array[i];
            j--;
        }
    }
    array[i] = index;
    SortMe(array, low, i - 1);
    SortMe(array, i + 1, high);
}
```
![](https://img-blog.csdnimg.cn/img_convert/5845e6642e5080a8d0fbee41a3db523a.png)

# 关于
厦门大学计算机专业|华为八年高级工程师   
专注《零基础学编程系列》  http://lblbc.cn/blog  
包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙  
公众号：蓝不蓝编程
