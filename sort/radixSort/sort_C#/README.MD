
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
        int max = getMaxValue(array);
        for (int exp = 1; max / exp > 0; exp *= 10)
            countSort(array, exp);
    }

    private static void countSort(int[] array, int exp) {
        int[] tmpArr = new int[array.length];
        int[] bucketArr = new int[10];

        for (int i = 0; i < array.length; i++) {
            bucketArr[(array[i] / exp) % 10]++;
        }

        for (int i = 1; i < 10; i++) {
            bucketArr[i] += bucketArr[i - 1];
        }

        for (int i = array.length - 1; i >= 0; i--) {
            tmpArr[bucketArr[(array[i] / exp) % 10] - 1] = array[i];
            bucketArr[(array[i] / exp) % 10]--;
        }

        for (int i = 0; i < array.length; i++) {
            array[i] = tmpArr[i];
        }
    }

    private static int getMaxValue(int[] array) {
        int max = array[0];
        for (int i = 1; i < array.length; i++) {
            if (array[i] > max) {
                max = array[i];
            }
        }

        return max;
    }
```
![image](https://img-blog.csdnimg.cn/img_convert/8a816baa9ad1e0cbd5bd0f503cd38601.png)

# 2. 安卓Kotlin版
开发工具：[下载Android Studio](https://cxyxy.blog.csdn.net/article/details/107098873)
```kotlin

private fun sort(array: IntArray) {
    val max = getMaxValue(array)
    var exp = 1
    while (max / exp > 0) {
        countSort(array, exp)
        exp *= 10
    }
}

private fun countSort(array: IntArray, exp: Int) {
    val tmpArr = IntArray(array.size)
    val bucketArr = IntArray(10)
    for (i in array.indices) bucketArr[array[i] / exp % 10]++
    for (i in 1..9) bucketArr[i] += bucketArr[i - 1]
    for (i in array.indices.reversed()) {
        tmpArr[bucketArr[array[i] / exp % 10] - 1] = array[i]
        bucketArr[array[i] / exp % 10]--
    }
    for (i in array.indices) {
        array[i] = tmpArr[i]
    }
}

private fun getMaxValue(array: IntArray): Int {
    var max = array[0]
    for (i in 1 until array.size) {
        if (array[i] > max) {
            max = array[i]
        }
    }
    return max
}

```
![image](https://img-blog.csdnimg.cn/img_convert/f3a5f272743f38ec5f3d8e6ec4940a02.png)

# 3. NodeJS
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```js

function sort() {
  let array = [2, 1, 5, 4, 3]
  var max = getMaxValue(array)
  for (var exp = 1; max / exp > 0; exp *= 10) {
    countSort(array, exp)
  }
}
function countSort(array, exp) {
  var tmpArr = Array(array.length).fill(0)
  var bucketArr = Array(10).fill(0)

  for (var i = 0; i < array.length; i++) {
    bucketArr[Math.floor(array[i] / exp) % 10]++
  }

  for (var i = 1; i < 10; i++) {
    bucketArr[i] += bucketArr[i - 1]
  }

  for (var i = array.length - 1; i >= 0; i--) {
    tmpArr[bucketArr[Math.floor(array[i] / exp) % 10] - 1] = array[i]
    bucketArr[Math.floor(array[i] / exp) % 10]--
  }

  for (var i = 0; i < array.length; i++) {
    array[i] = tmpArr[i]
  }
}
function getMaxValue(array) {
  var max = array[0]
  for (var i = 1; i < array.length; i++) {
    if (array[i] > max) {
      max = array[i]
    }
  }

  return max
}

```
![image](https://img-blog.csdnimg.cn/img_convert/f92c98533aaf6264fdaf8227f94de76b.png)

# 4. Php
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```php
  public function sort()
    {
        $array = [2, 1, 5, 4, 3];
        $max = max($array);
        $max_digit = $this->get_digit($max);

        for ($i = 1; $i <= $max_digit; $i++) {
            $this->counting_sort($array, $i);
        }
        return var_dump($array);
    }

    public function counting_sort(&$array, $digit_num = false)
    {
        if ($digit_num !== false) {
            for ($i = 0; $i < count($array); $i++) {
                $array_temp[$i] = $this->get_specific_digit($array[$i], $digit_num);
            }
        } else {
            $array_temp = $array;
        }

        $max = max($array);
        $time_array = array();

        for ($i = 0; $i <= $max; $i++) {
            $time_array[$i] = 0;
        }

        for ($i = 0; $i < count($array_temp); $i++) {
            $time_array[$array_temp[$i]]++;
        }

        for ($i = 0; $i < count($time_array) - 1; $i++) {
            $time_array[$i + 1] += $time_array[$i];
        }

        for ($i = count($array) - 1; $i >= 0; $i--) {
            $sorted_array[$time_array[$array_temp[$i]] - 1] = $array[$i];
            $time_array[$array_temp[$i]]--;
        }

        $array = $sorted_array;
        ksort($array);
    }

    public function get_digit($number)
    {
        $i = 1;
        while ($number >= pow(10, $i)) {
            $i++;
        }

        return $i;
    }

    public function get_specific_digit($num, $i)
    {
        if ($num < pow(10, $i - 1)) {
            return 0;
        }
        return floor($num % pow(10, $i) / pow(10, $i - 1));
    }
```
![image](https://img-blog.csdnimg.cn/img_convert/749b42523743051e6bb61f899664e4e8.png)

# 5. Python
开发工具：[下载PyCharm](https://cxyxy.blog.csdn.net/article/details/128722649)
```python

array = [2, 1, 5, 4, 3]


def sort():
    max_num = max(array)
    it = 0
    while 10 ** it <= max_num:
        buckets = [[] for _ in range(10)]
        for num in array:
            digit = (num // 10 ** it) % 10
            buckets[digit].append(num)
        array.clear()
        for buc in buckets:
            array.extend(buc)

        it += 1

```
![image](https://img-blog.csdnimg.cn/img_convert/5c9aa2875387231270deb615fea84aec.png)
# 6. Swift(SwiftUI版)
开发工具：XCode(mac电脑自带)
```swift
var array = [2, 1, 5, 4, 3]

func sort() {
    var bucket = createBucket()
    let maxNum = getMaxValue(array: array)
    let maxLength = getNumberLen(number: maxNum)
    
    for digit in 1...maxLength {
        for item in array {
            let baseNumber = fetchBaseNumber(number: item, digit: digit)
            bucket[baseNumber].append(item)
        }
        
        var index = 0
        for i in 0..<bucket.count {
            while !bucket[i].isEmpty {
                array[index] = bucket[i].remove(at: 0)
                index += 1
            }
        }
    }
}

private func createBucket() -> Array<Array<Int>> {
    var bucket: Array<Array<Int>> = []
    for _ in 0..<10 {
        bucket.append([])
    }
    return bucket
}

private func getMaxValue(array: Array<Int>) -> Int {
    var maxNumber = array[0]
    for item in array {
        if maxNumber < item {
            maxNumber = item
        }
    }
    return maxNumber
}

func getNumberLen(number: Int) -> Int {
    return "\(number)".count
}

func fetchBaseNumber(number: Int, digit: Int) -> Int{
    if digit > 0 && digit <= getNumberLen(number: number) {
        var numbersArray: Array<Int> = []
        for char in "\(number)" {
            numbersArray.append(Int("\(char)")!)
        }
        return numbersArray[numbersArray.count - digit]
    }
    return 0
}
```
![image](https://img-blog.csdnimg.cn/img_convert/6c8c812dd388572daa842d5fcb794e8a.png)

# 7. uni-app
开发工具：[下载HBuilderX](https://cxyxy.blog.csdn.net/article/details/128722661)
```js
sort() {
	let array = [2, 1, 5, 4, 3]
	var max = this.getMaxValue(array)
	for (var exp = 1; max / exp > 0; exp *= 10) {
		this.countSort(array, exp)
	}
},
countSort(array: number[], exp: number) {
	var tmpArr = Array(array.length).fill(0)
	var bucketArr = Array(10).fill(0)

	for (var i = 0; i < array.length; i++) {
		bucketArr[Math.floor(array[i] / exp) % 10]++
	}

	for (var i = 1; i < 10; i++) {
		bucketArr[i] += bucketArr[i - 1]
	}

	for (var i = array.length - 1; i >= 0; i--) {
		tmpArr[bucketArr[Math.floor(array[i] / exp) % 10] - 1] = array[i]
		bucketArr[Math.floor(array[i] / exp) % 10]--
	}

	for (var i = 0; i < array.length; i++) {
		array[i] = tmpArr[i]
	}
},
getMaxValue(array: number[]) {
	var max = array[0]
	for (var i = 1; i < array.length; i++) {
		if (array[i] > max) {
			max = array[i]
		}
	}

	return max
},
```
![image](https://img-blog.csdnimg.cn/img_convert/aae8f6f62c507b41cde158631c7286c7.png)

# 8. vue
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```js
sort() {
      let array = [2, 1, 5, 4, 3]
      var max = this.getMaxValue(array)
      for (var exp = 1; max / exp > 0; exp *= 10) {
        this.countSort(array, exp)
      }
    },
    countSort(array: number[], exp: number) {
      var tmpArr = Array(array.length).fill(0)
      var bucketArr = Array(10).fill(0)

      for (var i = 0; i < array.length; i++) {
        bucketArr[Math.floor(array[i] / exp) % 10]++
      }

      for (var i = 1; i < 10; i++) {
        bucketArr[i] += bucketArr[i - 1]
      }

      for (var i = array.length - 1; i >= 0; i--) {
        tmpArr[bucketArr[Math.floor(array[i] / exp) % 10] - 1] = array[i]
        bucketArr[Math.floor(array[i] / exp) % 10]--
      }

      for (var i = 0; i < array.length; i++) {
        array[i] = tmpArr[i]
      }
    },
    getMaxValue(array: number[]) {
      var max = array[0]
      for (var i = 1; i < array.length; i++) {
        if (array[i] > max) {
          max = array[i]
        }
      }

      return max
    },
```
![](https://img-blog.csdnimg.cn/img_convert/63fb070e00f53d269fa5402b3ac7b8c8.png)

# 9. 微信小程序
开发工具：[下载微信开发者工具](https://cxyxy.blog.csdn.net/article/details/128732108)
```js
sort() {
    let array = [2, 1, 5, 4, 3]
    var max = this.getMaxValue(array)
    for (var exp = 1; max / exp > 0; exp *= 10) {
      this.countSort(array, exp)
    }

    this.setData({
      array: array,
      arrayStr: this.convertToStr(array),
    })
  },
  countSort(array: number[], exp: number) {
    var tmpArr = Array(array.length).fill(0)
    var bucketArr = Array(10).fill(0)

    for (var i = 0; i < array.length; i++) {
      bucketArr[Math.floor(array[i] / exp) % 10]++
    }

    for (var i = 1; i < 10; i++) {
      bucketArr[i] += bucketArr[i - 1]
    }

    for (var i = array.length - 1; i >= 0; i--) {
      tmpArr[bucketArr[Math.floor(array[i] / exp) % 10] - 1] = array[i]
      bucketArr[Math.floor(array[i] / exp) % 10]--
    }

    for (var i = 0; i < array.length; i++) {
      array[i] = tmpArr[i]
    }
  },
  getMaxValue(array: number[]) {
    var max = array[0]
    for (var i = 1; i < array.length; i++) {
      if (array[i] > max) {
        max = array[i]
      }
    }

    return max
  },
```
![image](https://img-blog.csdnimg.cn/img_convert/b5a21804aa4207db15464f66e939934c.png)

# 10. 鸿蒙(ArkTS)
开发工具：[下载DevEco Studio](https://developer.harmonyos.com/cn/develop/deveco-studio)
```js

  sort() {
    let array = [2, 1, 5, 4, 3]
    var max = this.getMaxValue(array)
    for (var exp = 1; max / exp > 0; exp *= 10) {
      this.countSort(array, exp)
    }
  }

  countSort(array: number[], exp: number) {
    var tmpArr = Array(array.length).fill(0)
    var bucketArr = Array(10).fill(0)

    for (var i = 0; i < array.length; i++) {
      bucketArr[Math.floor(array[i] / exp) % 10]++
    }

    for (var i = 1; i < 10; i++) {
      bucketArr[i] += bucketArr[i - 1]
    }

    for (var i = array.length - 1; i >= 0; i--) {
      tmpArr[bucketArr[Math.floor(array[i] / exp) % 10] - 1] = array[i]
      bucketArr[Math.floor(array[i] / exp) % 10]--
    }

    for (var i = 0; i < array.length; i++) {
      array[i] = tmpArr[i]
    }
  }

  getMaxValue(array: number[]) {
    var max = array[0]
    for (var i = 1; i < array.length; i++) {
      if (array[i] > max) {
        max = array[i]
      }
    }

    return max
  }
```
![image](https://img-blog.csdnimg.cn/img_convert/6d192a219105cdd43ca45aa288281214.png)
# 11. Go语言
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```go

var max_num_bucket int = 0

func radixSort(arr []int) {
	var queue map[int][]int
	var radix int = 0
	var base int = 1
	var key int
	var keys []int
	var index int
	max := arr[0]
	for _, val := range arr {
		if val > max {
			max = val
		}
	}
	for max != 0 {
		radix++
		max /= 10
	}

	for i := 0; i < radix; i++ {
		queue = make(map[int][]int)
		keys = nil
		index = 0
		for _, val := range arr {
			key = val % (base * 10) / base
			queue[key] = append(queue[key], val)
		}
		if len(queue) > max_num_bucket {
			max_num_bucket = len(queue)
		}
		for key := range queue {
			keys = append(keys, key)
		}
		sort.Ints(keys)
		for _, key := range keys {
			for _, val := range queue[key] {
				arr[index] = val
				index++
			}
		}
		base *= 10
	}
}
```
![image](https://img-blog.csdnimg.cn/img_convert/c85caab1cd20b6dd525fda166920264d.png)
# 12. Java
开发工具：[下载IntelliJ IDEA](https://cxyxy.blog.csdn.net/article/details/128722658)
```java

    private static void sort(int[] array) {
        int max = getMaxValue(array);
        for (int exp = 1; max / exp > 0; exp *= 10)
            countSort(array, exp);
    }

    private static void countSort(int[] array, int exp) {
        int[] tmpArr = new int[array.length];
        int[] bucketArr = new int[10];

        for (int i = 0; i < array.length; i++) {
            bucketArr[(array[i] / exp) % 10]++;
        }

        for (int i = 1; i < 10; i++) {
            bucketArr[i] += bucketArr[i - 1];
        }

        for (int i = array.length - 1; i >= 0; i--) {
            tmpArr[bucketArr[(array[i] / exp) % 10] - 1] = array[i];
            bucketArr[(array[i] / exp) % 10]--;
        }

        for (int i = 0; i < array.length; i++) {
            array[i] = tmpArr[i];
        }
    }

    private static int getMaxValue(int[] array) {
        int max = array[0];
        for (int i = 1; i < array.length; i++) {
            if (array[i] > max) {
                max = array[i];
            }
        }

        return max;
    }
```
![image](https://img-blog.csdnimg.cn/img_convert/40cb29251cb320301163cdd7f171276e.png)

# 13. Kotlin
开发工具：[下载IntelliJ IDEA](https://cxyxy.blog.csdn.net/article/details/128722658)
```kotlin

private fun sort(array: IntArray) {
    val max = getMaxValue(array)
    var exp = 1
    while (max / exp > 0) {
        countSort(array, exp)
        exp *= 10
    }
}

private fun countSort(array: IntArray, exp: Int) {
    val tmpArr = IntArray(array.size)
    val bucketArr = IntArray(10)
    for (i in array.indices) bucketArr[array[i] / exp % 10]++
    for (i in 1..9) bucketArr[i] += bucketArr[i - 1]
    for (i in array.indices.reversed()) {
        tmpArr[bucketArr[array[i] / exp % 10] - 1] = array[i]
        bucketArr[array[i] / exp % 10]--
    }
    for (i in array.indices) {
        array[i] = tmpArr[i]
    }
}

private fun getMaxValue(array: IntArray): Int {
    var max = array[0]
    for (i in 1 until array.size) {
        if (array[i] > max) {
            max = array[i]
        }
    }
    return max
}

```
![image](https://img-blog.csdnimg.cn/img_convert/206003262b01d127af1db0a03741985b.png)

# 14. Flutter
开发工具：[下载IntelliJ IDEA](https://cxyxy.blog.csdn.net/article/details/128722658)
```dart

```
![](https://img-blog.csdnimg.cn/img_convert/39afcc60a45a08b9155fdb259fa8c4cc.png)

# 15. C语言
开发工具：[下载Visual Studio](https://cxyxy.blog.csdn.net/article/details/128722639)
```c

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
	int *tmpArr = (int *)malloc(sizeof(int) * n);

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

```
![image](https://img-blog.csdnimg.cn/img_convert/92f1f1da2dc8392bf15e185e0cb33b89.png)

# 16. C++
开发工具：[下载Visual Studio](https://cxyxy.blog.csdn.net/article/details/128722639)
```cpp

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
	delete tmpArr;
}

```
![image](https://img-blog.csdnimg.cn/img_convert/8d3cc4225f0e4ea2e71af16dfa1f7456.png)
# 17. C#
开发工具：[下载Visual Studio](https://cxyxy.blog.csdn.net/article/details/128722639)
```csharp
public static void Sort(int[] array, int bucketNum = 10)
        {
            int maxLength = MaxLength(array);
            int[,] bucket = new int[bucketNum, array.Length + 1];
            for (int i = 0; i < maxLength; i++)
            {
                foreach (var num in array)
                {
                    int bit = (int)(num / Math.Pow(10, i) % 10);
                    bucket[bit, ++bucket[bit, 0]] = num;
                }
                for (int count = 0, j = 0; j < bucketNum; j++)
                {
                    for (int k = 1; k <= bucket[j, 0]; k++)
                    {
                        array[count++] = bucket[j, k];
                    }
                }
                for (int j = 0; j < bucketNum; j++)
                {
                    bucket[j, 0] = 0;
                }
            }
        }

        private static int MaxLength(int[] array)
        {
            if (array.Length == 0) return 0;
            int max = array[0];
            for (int i = 1; i < array.Length; i++)
            {
                if (array[i] > max) max = array[i];
            }
            int count = 0;
            while (max != 0)
            {
                max /= 10;
                count++;
            }
            return count;
        }
```
![image](https://img-blog.csdnimg.cn/img_convert/2375ab26d2116bd0ab747ae346ec40f8.png)

# 关于
厦门大学计算机专业|华为八年高级工程师   
专注《零基础学编程系列》  http://lblbc.cn/blog  
包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙  
公众号：蓝不蓝编程
