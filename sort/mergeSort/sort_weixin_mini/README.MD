
# 开源地址
[https://gitee.com/lblbc/simple-works/tree/master/sort/](https://gitee.com/lblbc/simple-works/tree/master/sort/)  
> 覆盖语言：C、C++、C#、Java、Kotlin、Dart、Go、JavaScript(JS)、TypeScript(TS)、ArkTS、swift、PHP。  
> 覆盖平台：安卓(Java、Kotlin)、iOS(SwiftUI)、Flutter(Dart)、Window桌面(C#)、前端(微信小程序、uni-app、vue)、后端（Java、Kotlin、NodeJS、Python、PHP、Go、C、C++）、鸿蒙  

![](https://img-blog.csdnimg.cn/f7ba5b3299a24d338b8a71eb8cbd99b7.png)
![image](https://img-blog.csdnimg.cn/img_convert/38c89e2baadeed40e6c5353768ae6cf0.png)
# 1. 安卓Java版
开发工具：[下载Android Studio](https://cxyxy.blog.csdn.net/article/details/107098873)
```java
public static void sort(int[] array) {
        int first = 0;
        int last = array.length - 1;
        mergeSort(array, first, last);
    }

    private static void mergeSort(int[] array, int first, int last) {
        if (first < last) {
            int mid = (first + last) / 2;
            mergeSort(array, first, mid);
            mergeSort(array, mid + 1, last);
            binaryMerge(array, first, mid, last);
        }
    }

    public static void binaryMerge(int[] array, int first, int mid, int last) {
        int[] tmpArray = new int[array.length];
        int left, right, index;
        for (index = first; index <= last; index++) {
            tmpArray[index] = array[index];
        }
        index = first;
        left = first;
        right = mid + 1;
        for (; left <= mid && right <= last && index <= last; index++) {
            if (tmpArray[left] <= tmpArray[right]) {
                array[index] = tmpArray[left++];
            } else {
                array[index] = tmpArray[right++];
            }
        }
        while (left <= mid) {
            array[index++] = tmpArray[left++];
        }
        while (right <= last) {
            array[index++] = tmpArray[right++];
        }
    }
```
![image](https://img-blog.csdnimg.cn/img_convert/8a816baa9ad1e0cbd5bd0f503cd38601.png)

# 2. 安卓Kotlin版
开发工具：[下载Android Studio](https://cxyxy.blog.csdn.net/article/details/107098873)
```kotlin

fun sort(array: IntArray) {
    val first = 0
    val last = array.size - 1
    mergeSort(array, first, last)
}

private fun mergeSort(array: IntArray, first: Int, last: Int) {
    if (first < last) {
        val mid = (first + last) / 2
        mergeSort(array, first, mid)
        mergeSort(array, mid + 1, last)
        binaryMerge(array, first, mid, last)
    }
}

fun binaryMerge(array: IntArray, first: Int, mid: Int, last: Int) {
    val tmpArray = IntArray(array.size)
    var left: Int
    var index = first
    while (index <= last) {
        tmpArray[index] = array[index]
        index++
    }
    index = first.also { left = it }
    var right = mid + 1
    while (left <= mid && right <= last && index <= last) {
        if (tmpArray[left] <= tmpArray[right]) {
            array[index] = tmpArray[left++]
        } else {
            array[index] = tmpArray[right++]
        }
        index++
    }
    while (left <= mid) array[index++] = tmpArray[left++]
    while (right <= last) array[index++] = tmpArray[right++]
}
```
![image](https://img-blog.csdnimg.cn/img_convert/f3a5f272743f38ec5f3d8e6ec4940a02.png)

# 3. NodeJS
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```js

function sort() {
  let array = [2, 1, 5, 4, 3]
  var first = 0
  var last = array.length - 1
  mergeSort(array,first, last)
}
function mergeSort(array,first, last) {
  if (first < last) {
    var mid = Math.floor((first + last) / 2)
    mergeSort(array,first, mid)
    mergeSort(array,mid + 1, last)
    binaryMerge(array,first, mid, last)
  }
}
function binaryMerge(array,first, mid, last) {
  var tmpArray = Array(array.length).fill(0)
  var left, right, index
  for (index = first; index <= last; index++) {
    tmpArray[index] = array[index]
  }
  index = first
  left = first
  right = mid + 1
  for (; left <= mid && right <= last && index <= last; index++) {
    if (tmpArray[left] <= tmpArray[right]) {
      array[index] = tmpArray[left++]
    } else {
      array[index] = tmpArray[right++]
    }
  }
  while (left <= mid) {
    array[index++] = tmpArray[left++]
  }
  while (right <= last) {
    array[index++] = tmpArray[right++]
  }
}
```
![image](https://img-blog.csdnimg.cn/img_convert/f92c98533aaf6264fdaf8227f94de76b.png)

# 4. Php
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```php
 public function sort()
    {
        $array = [2, 1, 5, 4, 3];
        $start = 0;
        $end = count($array) - 1;
        $this->sortMe($array, $start, $end);
        return var_dump($array);
    }
    private function sortMe(&$arr, $start, $end)
    {
        if ($start < $end) {
            $mid = floor(($start + $end) / 2);
            $this->sortMe($arr, $start, $mid);
            $this->sortMe($arr, $mid + 1, $end);
            $this->mergeSort($arr, $start, $mid, $end);
        }
    }

    private function mergeSort(&$arr, $start, $mid, $end)
    {
        $i = $start;
        $j = $mid + 1;
        $tmp = [];
        while ($i <= $mid && $j <= $end) {
            if ($arr[$i] <= $arr[$j]) {
                $tmp[] = $arr[$i++];
            } else {
                $tmp[] = $arr[$j++];
            }
        }
        while ($i <= $mid) {
            $tmp[] = $arr[$i++];
        }
        while ($j <= $end) {
            $tmp[] = $arr[$j++];
        }
        for ($k = 0; $k < count($tmp); $k++) {
            $arr[$k + $start] = $tmp[$k];
        }
    }
```
![image](https://img-blog.csdnimg.cn/img_convert/749b42523743051e6bb61f899664e4e8.png)

# 5. Python
开发工具：[下载PyCharm](https://cxyxy.blog.csdn.net/article/details/128722649)
```python

array = [2, 1, 5, 4, 3]


def merge(left, mid, right):
    start = mid - left + 1
    end = right - mid

    left_arr = [0] * start
    right_arr = [0] * end

    for i in range(0, start):
        left_arr[i] = array[left + i]

    for j in range(0, end):
        right_arr[j] = array[mid + 1 + j]

    i = 0
    j = 0
    k = left

    while i < start and j < end:
        if left_arr[i] <= right_arr[j]:
            array[k] = left_arr[i]
            i += 1
        else:
            array[k] = right_arr[j]
            j += 1
        k += 1

    while i < start:
        array[k] = left_arr[i]
        i += 1
        k += 1

    while j < end:
        array[k] = right_arr[j]
        j += 1
        k += 1


def sort(left, right):
    if left < right:
        m = int((left + (right - 1)) / 2)

        sort(left, m)
        sort(m + 1, right)
        merge(left, m, right)

```
![image](https://img-blog.csdnimg.cn/img_convert/5c9aa2875387231270deb615fea84aec.png)
# 6. Swift(SwiftUI版)
开发工具：XCode(mac电脑自带)
```swift
var array = [2, 1, 5, 4, 3]
func sort() {
    sortMe(arr: &array, left: 0, right: array.count - 1)
}

func sortMe(arr:inout [Int],left:Int,right:Int) {
    if left == right {
        return
    }
    let mid = left + (right - left) >> 1
    sortMe(arr: &arr, left: left, right: mid)
    sortMe(arr: &arr, left: mid + 1, right: right)
    mergeSort(arr: &arr, left: left, mid: mid, right: right)
}

func mergeSort(arr:inout [Int],left:Int,mid:Int,right:Int){
    var tmpArr:[Int] = [Int]()
    var leftLocation:Int = left
    var rightLocation:Int = mid + 1
    
    while (leftLocation <= mid && rightLocation <= right) {
        if arr[leftLocation] <= arr[rightLocation] {
            tmpArr.append(arr[leftLocation])
            leftLocation += 1
        }else{
            tmpArr.append(arr[rightLocation])
            rightLocation += 1
        }
    }
    
    while leftLocation <= mid {
        tmpArr.append(arr[leftLocation])
        leftLocation += 1
    }
    while rightLocation <= right {
        tmpArr.append(arr[rightLocation])
        rightLocation += 1
    }
    var index = left
    for item in tmpArr {
        arr[index] = item
        index += 1
    }
}
```
![image](https://img-blog.csdnimg.cn/img_convert/6c8c812dd388572daa842d5fcb794e8a.png)

# 7. uni-app
开发工具：[下载HBuilderX](https://cxyxy.blog.csdn.net/article/details/128722661)
```js
sort() {
	let array = [2, 1, 5, 4, 3]
	var first = 0
	var last = array.length - 1
	this.mergeSort(first, last)
	this.array = array
	this.arrayStr = this.convertToStr(array)
},
mergeSort(first: number, last: number) {
	if (first < last) {
		var mid = Math.floor((first + last) / 2)
		this.mergeSort(first, mid)
		this.mergeSort(mid + 1, last)
		this.binaryMerge(first, mid, last)
	}
},
binaryMerge(first: number, mid: number, last: number) {
	let array = this.array
	var tmpArray = Array(array.length).fill(0)
	var left: number, right: number, index: number
	for (index = first; index <= last; index++) {
		tmpArray[index] = array[index]
	}
	index = first
	left = first
	right = mid + 1
	for (; left <= mid && right <= last && index <= last; index++) {
		if (tmpArray[left] <= tmpArray[right]) {
			array[index] = tmpArray[left++]
		} else {
			array[index] = tmpArray[right++]
		}
	}
	while (left <= mid) {
		array[index++] = tmpArray[left++]
	}
	while (right <= last) {
		array[index++] = tmpArray[right++]
	}
},
```
![image](https://img-blog.csdnimg.cn/img_convert/aae8f6f62c507b41cde158631c7286c7.png)

# 8. vue
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```js
sort() {
      let array = [2, 1, 5, 4, 3]
      var first = 0
      var last = array.length - 1
      this.mergeSort(first, last)
      this.array = array
      this.arrayStr = this.convertToStr(array)
    },
    mergeSort(first: number, last: number) {
      if (first < last) {
        var mid = Math.floor((first + last) / 2)
        this.mergeSort(first, mid)
        this.mergeSort(mid + 1, last)
        this.binaryMerge(first, mid, last)
      }
    },
    binaryMerge(first: number, mid: number, last: number) {
      let array = this.array
      var tmpArray = Array(array.length).fill(0)
      var left: number, right: number, index: number
      for (index = first; index <= last; index++) {
        tmpArray[index] = array[index]
      }
      index = first
      left = first
      right = mid + 1
      for (; left <= mid && right <= last && index <= last; index++) {
        if (tmpArray[left] <= tmpArray[right]) {
          array[index] = tmpArray[left++]
        } else {
          array[index] = tmpArray[right++]
        }
      }
      while (left <= mid) {
        array[index++] = tmpArray[left++]
      }
      while (right <= last) {
        array[index++] = tmpArray[right++]
      }
    },
```
![](https://img-blog.csdnimg.cn/img_convert/63fb070e00f53d269fa5402b3ac7b8c8.png)

# 9. 微信小程序
开发工具：[下载微信开发者工具](https://cxyxy.blog.csdn.net/article/details/128732108)
```js
sort() {
    let array = [2, 1, 5, 4, 3]
    var first = 0
    var last = array.length - 1
    this.mergeSort(array, first, last)
  },
  mergeSort(array: number[], first: number, last: number) {
    if (first < last) {
      var mid = Math.floor((first + last) / 2)
      this.mergeSort(array, first, mid)
      this.mergeSort(array, mid + 1, last)
      this.binaryMerge(array, first, mid, last)
    }
  },
  binaryMerge(array: number[], first: number, mid: number, last: number) {
    var tmpArray = Array(array.length).fill(0)
    var left: number, right: number, index: number
    for (index = first; index <= last; index++) {
      tmpArray[index] = array[index]
    }
    index = first
    left = first
    right = mid + 1
    for (; left <= mid && right <= last && index <= last; index++) {
      if (tmpArray[left] <= tmpArray[right]) {
        array[index] = tmpArray[left++]
      } else {
        array[index] = tmpArray[right++]
      }
    }
    while (left <= mid) {
      array[index++] = tmpArray[left++]
    }
    while (right <= last) {
      array[index++] = tmpArray[right++]
    }
  },
```
![image](https://img-blog.csdnimg.cn/img_convert/b5a21804aa4207db15464f66e939934c.png)

# 10. 鸿蒙(ArkTS)
开发工具：[下载DevEco Studio](https://developer.harmonyos.com/cn/develop/deveco-studio)
```js

  sort() {
    let array = [2, 1, 5, 4, 3]
    var first = 0
    var last = array.length - 1
  }

  mergeSort(first: number, last: number) {
    if (first < last) {
      var mid = Math.floor((first + last) / 2)
      this.mergeSort(first, mid)
      this.mergeSort(mid + 1, last)
      this.binaryMerge(first, mid, last)
    }
  }

  binaryMerge(first: number, mid: number, last: number) {
    let array = this.array
    var tmpArray = Array(array.length).fill(0)
    var left: number, right: number, index: number
    for (index = first; index <= last; index++) {
      tmpArray[index] = array[index]
    }
    index = first
    left = first
    right = mid + 1
    for (; left <= mid && right <= last && index <= last; index++) {
      if (tmpArray[left] <= tmpArray[right]) {
        array[index] = tmpArray[left++]
      } else {
        array[index] = tmpArray[right++]
      }
    }
    while (left <= mid) {
      array[index++] = tmpArray[left++]
    }
    while (right <= last) {
      array[index++] = tmpArray[right++]
    }
  }
```
![image](https://img-blog.csdnimg.cn/img_convert/6d192a219105cdd43ca45aa288281214.png)
# 11. Go语言
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```go

var array = []int{2, 1, 5, 4, 3}

func sort() {
	mergeSort(array, 0, len(array))
}

func mergeSort(array []int, begin int, end int) {
	if end-begin > 1 {
		mid := begin + (end-begin+1)/2
		mergeSort(array, begin, mid)
		mergeSort(array, mid, end)
		merge(array, begin, mid, end)
	}
}

func merge(array []int, begin int, mid int, end int) {
	leftSize := mid - begin
	rightSize := end - mid
	newSize := leftSize + rightSize
	result := make([]int, 0, newSize)

	left := 0
	right := 0
	for left < leftSize && right < rightSize {
		lValue := array[begin+left]
		rValue := array[mid+right]
		if lValue < rValue {
			result = append(result, lValue)
			left++
		} else {
			result = append(result, rValue)
			right++
		}
	}

	result = append(result, array[begin+left:mid]...)
	result = append(result, array[mid+right:end]...)

	for i := 0; i < newSize; i++ {
		array[begin+i] = result[i]
	}
}
```
![image](https://img-blog.csdnimg.cn/img_convert/c85caab1cd20b6dd525fda166920264d.png)
# 12. Java
开发工具：[下载IntelliJ IDEA](https://cxyxy.blog.csdn.net/article/details/128722658)
```java
public static void sort(int[] array) {
        int first = 0;
        int last = array.length - 1;
        mergeSort(array, first, last);
    }

    private static void mergeSort(int[] array, int first, int last) {
        if (first < last) {
            int mid = (first + last) / 2;
            mergeSort(array, first, mid);
            mergeSort(array, mid + 1, last);
            binaryMerge(array, first, mid, last);
        }
    }

    public static void binaryMerge(int[] array, int first, int mid, int last) {
        int[] tmpArray = new int[array.length];
        int left, right, index;
        for (index = first; index <= last; index++) {
            tmpArray[index] = array[index];
        }
        index = first;
        left = first;
        right = mid + 1;
        for (; left <= mid && right <= last && index <= last; index++) {
            if (tmpArray[left] <= tmpArray[right]) {
                array[index] = tmpArray[left++];
            } else {
                array[index] = tmpArray[right++];
            }
        }
        while (left <= mid) {
            array[index++] = tmpArray[left++];
        }
        while (right <= last) {
            array[index++] = tmpArray[right++];
        }
    }
```
![image](https://img-blog.csdnimg.cn/img_convert/40cb29251cb320301163cdd7f171276e.png)

# 13. Kotlin
开发工具：[下载IntelliJ IDEA](https://cxyxy.blog.csdn.net/article/details/128722658)
```kotlin

fun sort(array: IntArray) {
    val first = 0
    val last = array.size - 1
    mergeSort(array, first, last)
}

private fun mergeSort(array: IntArray, first: Int, last: Int) {
    if (first < last) {
        val mid = (first + last) / 2
        mergeSort(array, first, mid)
        mergeSort(array, mid + 1, last)
        binaryMerge(array, first, mid, last)
    }
}

fun binaryMerge(array: IntArray, first: Int, mid: Int, last: Int) {
    val tmpArray = IntArray(array.size)
    var left: Int
    var index = first
    while (index <= last) {
        tmpArray[index] = array[index]
        index++
    }
    index = first.also { left = it }
    var right = mid + 1
    while (left <= mid && right <= last && index <= last) {
        if (tmpArray[left] <= tmpArray[right]) {
            array[index] = tmpArray[left++]
        } else {
            array[index] = tmpArray[right++]
        }
        index++
    }
    while (left <= mid) array[index++] = tmpArray[left++]
    while (right <= last) array[index++] = tmpArray[right++]
}
```
![image](https://img-blog.csdnimg.cn/img_convert/206003262b01d127af1db0a03741985b.png)

# 14. Flutter
开发工具：[下载IntelliJ IDEA](https://cxyxy.blog.csdn.net/article/details/128722658)
```dart

void sort(List<int> array) {
  var first = 0;
  var last = array.length - 1;
  mergeSort(array, first, last);
}

void mergeSort(List<int> array, int first, int last) {
  if (first < last) {
    int mid = (first + last) ~/ 2;
    mergeSort(array, first, mid);
    mergeSort(array, mid + 1, last);
    binaryMerge(array, first, mid, last);
  }
}

void binaryMerge(List<int> array, int first, int mid, int last) {
  var tmpArray = List.filled(array.length, 0);
  int left, right, index;
  for (index = first; index <= last; index++) {
    tmpArray[index] = array[index];
  }
  left = first;
  index = first;
  right = mid + 1;
  for (; left <= mid && right <= last && index <= last; index++) {
    if (tmpArray[left] <= tmpArray[right]) {
      array[index] = tmpArray[left++];
    } else {
      array[index] = tmpArray[right++];
    }
  }
  while (left <= mid) {
    array[index++] = tmpArray[left++];
  }
  while (right <= last) {
    array[index++] = tmpArray[right++];
  }
}
```
![](https://img-blog.csdnimg.cn/img_convert/39afcc60a45a08b9155fdb259fa8c4cc.png)

# 15. C语言
开发工具：[下载Visual Studio](https://cxyxy.blog.csdn.net/article/details/128722639)
```c

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
```
![image](https://img-blog.csdnimg.cn/img_convert/92f1f1da2dc8392bf15e185e0cb33b89.png)

# 16. C++
开发工具：[下载Visual Studio](https://cxyxy.blog.csdn.net/article/details/128722639)
```cpp

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
```
![image](https://img-blog.csdnimg.cn/img_convert/8d3cc4225f0e4ea2e71af16dfa1f7456.png)
# 17. C#
开发工具：[下载Visual Studio](https://cxyxy.blog.csdn.net/article/details/128722639)
```csharp
public static void Sort(int[] array)
        {
            int first = 0;
            int last = array.Length - 1;
            MergeSort(array, first, last);
        }

        private static void MergeSort(int[] array, int first, int last)
        {
            if (first < last)
            {
                int mid = (first + last) / 2;
                MergeSort(array, first, mid);
                MergeSort(array, mid + 1, last);
                BinaryMerge(array, first, mid, last);
            }

        }
        public static void BinaryMerge(int[] array, int first, int mid, int last)
        {
            int[] tmpArray = new int[array.Length];
            int left, right, index;
            for (index = first; index <= last; index++)
            {
                tmpArray[index] = array[index];
            }

            for (index = left = first, right = mid + 1; left <= mid && right <= last && index <= last; index++)
            {
                if (tmpArray[left] <= tmpArray[right]) { array[index] = tmpArray[left++]; }
                else { array[index] = tmpArray[right++]; }
            }
            while (left <= mid) array[index++] = tmpArray[left++];
            while (right <= last) array[index++] = tmpArray[right++];
        }
```
![image](https://img-blog.csdnimg.cn/img_convert/2375ab26d2116bd0ab747ae346ec40f8.png)

# 关于
厦门大学计算机专业|华为八年高级工程师   
专注《零基础学编程系列》  http://lblbc.cn/blog  
包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙  
公众号：蓝不蓝编程
