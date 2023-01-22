# 开源地址
[https://gitee.com/lblbc/simple-works/tree/master/sort/](https://gitee.com/lblbc/simple-works/tree/master/sort/)  
> 覆盖语言：C、C++、C#、Java、Kotlin、Dart、Go、JavaScript(JS)、TypeScript(TS)、ArkTS、swift、PHP。  
> 覆盖平台：安卓(Java、Kotlin)、iOS(SwiftUI)、Flutter(Dart)、Window桌面(C#)、前端(微信小程序、uni-app、vue)、后端（Java、Kotlin、NodeJS、Python、PHP、Go、C、C++）、鸿蒙  

![](https://img-blog.csdnimg.cn/f7ba5b3299a24d338b8a71eb8cbd99b7.png)
![image](https://img-blog.csdnimg.cn/img_convert/38c89e2baadeed40e6c5353768ae6cf0.png)
# 1. 安卓Java版
开发工具：[下载Android Studio](https://cxyxy.blog.csdn.net/article/details/107098873)
```java
private static void sort(int[] array) {
        int max = array[0];
        for (int value : array) {
            if (value > max) {
                max = value;
            }
        }
        int[] bucketArray = new int[max + 1];
        for (int value : array) {
            bucketArray[value]++;
        }
        int index = 0;
        for (int i = 0; i < bucketArray.length; i++) {
            for (int j = 0; j < bucketArray[i]; j++) {
                array[index++] = i;
            }
        }
    }
```
![image](https://img-blog.csdnimg.cn/img_convert/8a816baa9ad1e0cbd5bd0f503cd38601.png)

# 2. 安卓Kotlin版
开发工具：[下载Android Studio](https://cxyxy.blog.csdn.net/article/details/107098873)
```kotlin
private fun sort(array: IntArray) {
    var max = array[0]
    for (value in array) {
        if (value > max) {
            max = value
        }
    }
    val bucketArray = IntArray(max + 1)
    for (value in array) {
        bucketArray[value]++
    }
    var index = 0
    for (i in bucketArray.indices) {
        for (j in 0 until bucketArray[i]) {
            array[index++] = i
        }
    }
}
```
![image](https://img-blog.csdnimg.cn/img_convert/f3a5f272743f38ec5f3d8e6ec4940a02.png)

# 3. NodeJS
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```js
function sort() {
  const array = [2, 1, 5, 4, 3];
  var tmpArr = [];

  for (var i = 0; i < array.length; i++) {
    var num = array[i];
    tmpArr[num] = tmpArr[num] || 0;
    tmpArr[num]++;
    num == null;
  }

  var result = ''
  for (var i = 0; i < tmpArr.length; i++) {
    if (tmpArr[i]) {
      result += i + ' ';
    }
  }
  return result
}
```
![image](https://img-blog.csdnimg.cn/img_convert/f92c98533aaf6264fdaf8227f94de76b.png)

# 4. Php
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```php
public function sort()
    {
        $array = [2, 1, 5, 4, 3];
        $resultArray = [];
        $length = count($array);
        for ($i = 0, $max = $array[$i]; $i < $length; $i++) {
            if ($max < $array[$i]) {
                $max = $array[$i];
            }
            $bucket[$array[$i]] = [];
            array_push($bucket[$array[$i]], $array[$i]);
        }
        for ($i = 0; $i <= $max; $i++) {
            if (!empty($bucket[$i])) {
                $l = count($bucket[$i]);
                for ($j = 0; $j < $l; $j++) {
                    $resultArray[] = $bucket[$i][$j];
                }
            }
        }
        return var_dump($resultArray);
    }
```
![image](https://img-blog.csdnimg.cn/img_convert/749b42523743051e6bb61f899664e4e8.png)

# 5. Python
开发工具：[下载PyCharm](https://cxyxy.blog.csdn.net/article/details/128722649)
```python
array = [2, 1, 5, 4, 3]


def sort():
    min_num, max_num = min(array), max(array)
    bucket_num = (max_num - min_num) // 3 + 1
    buckets = [[] for _ in range(bucket_num)]
    for num in array:
        buckets[(num - min_num) // 3].append(num)
    new_array = list()
    for i in buckets:
        for j in sorted(i):
            new_array.append(j)
    return new_array
```
![image](https://img-blog.csdnimg.cn/img_convert/5c9aa2875387231270deb615fea84aec.png)
# 6. Swift(SwiftUI版)
开发工具：XCode(mac电脑自带)
```swift
var array = [2, 1, 5, 4, 3]
func sort()
{
    let maxValue = array.max()
    var bucket:[Int] = Array.init(repeatElement(0, count: maxValue! + 1))
    var newArray:[Int] = Array.init()
    
    for index in array {
        let numId = index
        bucket[numId] += 1
    }
    
    for index in bucket.indices {
        while bucket[index] > 0 {
            newArray.append(index)
            bucket[index] -= 1
        }
    }
    
    array =  newArray
}
```
![image](https://img-blog.csdnimg.cn/img_convert/6c8c812dd388572daa842d5fcb794e8a.png)

# 7. uni-app
开发工具：[下载HBuilderX](https://cxyxy.blog.csdn.net/article/details/128722661)
```js
sort() {
	let array = [2, 1, 5, 4, 3]
	var brr = []
	var index, buckets, baseVal
	var arrMaxVal, arrMinVal
	var sortedIndex = 0,
		n = array.length
	arrMaxVal = array[0]
	arrMinVal = array[0]
	for (var i = 0; i < n; i++) {
		if (arrMaxVal < array[i]) {
			arrMaxVal = array[i]
		}
		if (arrMinVal > array[i]) {
			arrMinVal = array[i]
		}
	}

	if (arrMaxVal == arrMinVal) return
	buckets = Math.ceil(Math.sqrt(n))
	baseVal = Math.ceil((arrMaxVal - arrMinVal + 1) / buckets)
	for (var i = 0; i < n; i++) {
		index = Math.floor((array[i] - arrMinVal) / baseVal)
		if (!brr[index]) {
			brr[index] = [array[i]]
		} else if (Array.isArray(brr[index])) {
			for (var j = brr[index].length - 1; j >= 0 && brr[index][j] > array[i]; j--) {
				brr[index][j + 1] = brr[index][j]
			}
			brr[index][j + 1] = array[i]
		}
	}

	for (var i = 0; i < brr.length; i++) {
		if (Array.isArray(brr[i])) {
			for (var j = 0; j < brr[i].length; j++) {
				array[sortedIndex++] = brr[i][j]
			}
		}
	}
},
```
![image](https://img-blog.csdnimg.cn/img_convert/aae8f6f62c507b41cde158631c7286c7.png)

# 8. vue
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```js
sort() {
  let array = [2, 1, 5, 4, 3]
  var brr = []
  var index, buckets, baseVal
  var arrMaxVal, arrMinVal
  var sortedIndex = 0,
    n = array.length
  arrMaxVal = array[0]
  arrMinVal = array[0]
  for (var i = 0; i < n; i++) {
    if (arrMaxVal < array[i]) {
      arrMaxVal = array[i]
    }
    if (arrMinVal > array[i]) {
      arrMinVal = array[i]
    }
  }

  if (arrMaxVal == arrMinVal) return
  buckets = Math.ceil(Math.sqrt(n))
  baseVal = Math.ceil((arrMaxVal - arrMinVal + 1) / buckets)
  for (var i = 0; i < n; i++) {
    index = Math.floor((array[i] - arrMinVal) / baseVal)
    if (!brr[index]) {
      brr[index] = [array[i]]
    }
    else if (Array.isArray(brr[index])) {
      for (var j = brr[index].length - 1;j >= 0 && brr[index][j] > array[i];j--) {
        brr[index][j + 1] = brr[index][j]
      }
      brr[index][j + 1] = array[i]
    }
  }

  for (var i = 0; i < brr.length; i++) {
    if (Array.isArray(brr[i])) {
      for (var j = 0; j < brr[i].length; j++) {
        array[sortedIndex++] = brr[i][j]
      }
    }
  }
},
```
![](https://img-blog.csdnimg.cn/img_convert/63fb070e00f53d269fa5402b3ac7b8c8.png)

# 9. 微信小程序
开发工具：[下载微信开发者工具](https://cxyxy.blog.csdn.net/article/details/128732108)
```js
sort() {
  let array = [2, 1, 5, 4, 3]
  var brr = []
  var index, buckets, baseVal
  var arrMaxVal, arrMinVal
  var sortedIndex = 0,
    n = array.length
  arrMaxVal = array[0]
  arrMinVal = array[0]
  for (var i = 0; i < n; i++) {
    if (arrMaxVal < array[i]) {
      arrMaxVal = array[i]
    }
    if (arrMinVal > array[i]) {
      arrMinVal = array[i]
    }
  }

  if (arrMaxVal == arrMinVal) return
  buckets = Math.ceil(Math.sqrt(n))
  baseVal = Math.ceil((arrMaxVal - arrMinVal + 1) / buckets)
  for (var i = 0; i < n; i++) {
    index = Math.floor((array[i] - arrMinVal) / baseVal)
    if (!brr[index]) {
      brr[index] = [array[i]]
    }
    else if (Array.isArray(brr[index])) {
      for (var j = brr[index].length - 1;j >= 0 && brr[index][j] > array[i];j--) {
        brr[index][j + 1] = brr[index][j]
      }
      brr[index][j + 1] = array[i]
    }
  }

  for (var i = 0; i < brr.length; i++) {
    if (Array.isArray(brr[i])) {
      for (var j = 0; j < brr[i].length; j++) {
        array[sortedIndex++] = brr[i][j]
      }
    }
  }
}
```
![image](https://img-blog.csdnimg.cn/img_convert/b5a21804aa4207db15464f66e939934c.png)

# 10. 鸿蒙(ArkTS)
开发工具：[下载DevEco Studio](https://developer.harmonyos.com/cn/develop/deveco-studio)
```js
sort() {
    let array = [2, 1, 5, 4, 3]
    var brr = []
    var index, buckets, baseVal
    var arrMaxVal, arrMinVal
    var sortedIndex = 0
    var n = array.length
    arrMaxVal = array[0]
    arrMinVal = array[0]
    for (var i = 0; i < n; i++) {
      if (arrMaxVal < array[i]) {
        arrMaxVal = array[i]
      }
      if (arrMinVal > array[i]) {
        arrMinVal = array[i]
      }
    }

    if (arrMaxVal == arrMinVal) return
    buckets = Math.ceil(Math.sqrt(n))
    baseVal = Math.ceil((arrMaxVal - arrMinVal + 1) / buckets)
    for (var i = 0; i < n; i++) {
      index = Math.floor((array[i] - arrMinVal) / baseVal)
      if (!brr[index]) {
        brr[index] = [array[i]]
      }
      else if (Array.isArray(brr[index])) {
        for (var j = brr[index].length - 1;j >= 0 && brr[index][j] > array[i]; j--) {
          brr[index][j + 1] = brr[index][j]
        }
        brr[index][j + 1] = array[i]
      }
    }

    for (var i = 0; i < brr.length; i++) {
      if (Array.isArray(brr[i])) {
        for (var j = 0; j < brr[i].length; j++) {
          array[sortedIndex++] = brr[i][j]
        }
      }
    }
  }
```
![image](https://img-blog.csdnimg.cn/img_convert/6d192a219105cdd43ca45aa288281214.png)
# 11. Go语言
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```go
func bucketSort(array []int) {
	bucket := make(map[int][]int)
	for _, val := range array {
		bucket[val/10] = append(bucket[val/10], val)
	}
	for _, val := range bucket {
		sort.Ints(val)
	}
	var keys []int
	for key := range bucket {
		keys = append(keys, key)
	}
	sort.Ints(keys)
	index := 0
	for _, key := range keys {
		for _, val := range bucket[key] {
			array[index] = val
			index++
		}
	}
}
```
![image](https://img-blog.csdnimg.cn/img_convert/c85caab1cd20b6dd525fda166920264d.png)
# 12. Java
开发工具：[下载IntelliJ IDEA](https://cxyxy.blog.csdn.net/article/details/128722658)
```java
private static void sort(int[] array) {
        int max = array[0];
        for (int value : array) {
            if (value > max) {
                max = value;
            }
        }
        int[] bucketArray = new int[max + 1];
        for (int value : array) {
            bucketArray[value]++;
        }
        int index = 0;
        for (int i = 0; i < bucketArray.length; i++) {
            for (int j = 0; j < bucketArray[i]; j++) {
                array[index++] = i;
            }
        }
    }
```
![image](https://img-blog.csdnimg.cn/img_convert/40cb29251cb320301163cdd7f171276e.png)

# 13. Kotlin
开发工具：[下载IntelliJ IDEA](https://cxyxy.blog.csdn.net/article/details/128722658)
```kotlin
private fun sort(array: IntArray) {
    var max = array[0]
    for (value in array) {
        if (value > max) {
            max = value
        }
    }
    val bucketArray = IntArray(max + 1)
    for (value in array) {
        bucketArray[value]++
    }
    var index = 0
    for (i in bucketArray.indices) {
        for (j in 0 until bucketArray[i]) {
            array[index++] = i
        }
    }
}
```
![image](https://img-blog.csdnimg.cn/img_convert/206003262b01d127af1db0a03741985b.png)

# 14. Flutter
开发工具：[下载IntelliJ IDEA](https://cxyxy.blog.csdn.net/article/details/128722658)
```dart
sort(List<int> array) {
  int max = array[0];
  for (int i = 0; i < array.length - 1; i++) {
    if (array[i] > max) {
      max = array[i];
    }
  }

  List<num> bucketArray = List.filled(max + 1, 0);
  for (int i = 0; i < array.length - 1; i++) {
    bucketArray[array[i]] += 1;
  }

  int index = 0;
  for (int i = 0; i < bucketArray.length; i++) {
    for (int j = 0; j < bucketArray[i]; j++) {
      array[index++] = i;
    }
  }
}
```
![](https://img-blog.csdnimg.cn/img_convert/39afcc60a45a08b9155fdb259fa8c4cc.png)

# 15. C语言
开发工具：[下载Visual Studio](https://cxyxy.blog.csdn.net/article/details/128722639)
```c
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
	int* bucket = (int*)malloc(sizeof(int) * bucketLen);
	bucket[0] = 0;
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
	free(bucket);
}
```
![image](https://img-blog.csdnimg.cn/img_convert/92f1f1da2dc8392bf15e185e0cb33b89.png)

# 16. C++
开发工具：[下载Visual Studio](https://cxyxy.blog.csdn.net/article/details/128722639)
```cpp
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
```
![image](https://img-blog.csdnimg.cn/img_convert/8d3cc4225f0e4ea2e71af16dfa1f7456.png)
# 17. C#
开发工具：[下载Visual Studio](https://cxyxy.blog.csdn.net/article/details/128722639)
```csharp
static void Sort(int[] array, int len, int bucketsize = 4)
{
    int max = GetMaxValue(array, len);
    int min = GetMinValue(array, len);
    List<List<int>> buckets = new List<List<int>>();
    int bucketnum = (max - min) / bucketsize + 1;
    for (int i = 0; i < bucketnum; i++)
    {
        buckets.Add(new List<int>());
    }
    for (int i = 0; i < len; i++)
    {
        int bucketIndex = (array[i] - min) / bucketsize;
        buckets[bucketIndex].Add(array[i]);
    }
    int index = 0;
    for (int i = 0; i < buckets.Count; i++)
    {
        buckets[i].Sort();
        for (int j = 0; j < buckets[i].Count; j++)
        {
            array[index++] = buckets[i][j];
        }
    }
}
static int GetMaxValue(int[] array, int len)
{
    int max = array[0];
    for (int i = 1; i < len; i++)
    {
        if (array[i]>max)
        {
            max = array[i];
        }
    }
    return max;
}

static int GetMinValue(int[] array, int len)
{
    int min = array[0];
    for (int i = 1; i < len; i++)
    {
        if (array[i] <min)
        {
            min = array[i];
        }
    }
    return  min;
}
```
![image](https://img-blog.csdnimg.cn/img_convert/2375ab26d2116bd0ab747ae346ec40f8.png)

# 关于
厦门大学计算机专业|华为八年高级工程师   
专注《零基础学编程系列》  http://lblbc.cn/blog  
包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙  
公众号：蓝不蓝编程
