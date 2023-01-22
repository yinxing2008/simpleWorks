
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
        if (array.length == 0) return;
        int min = array[0];
        int max = min;
        for (int num : array) {
            if (num > max) {
                max = num;
            } else if (num < min) {
                min = num;
            }
        }
        int[] counting = new int[max - min + 1];
        for (int i = 0; i < array.length; i++) {
            counting[array[i] - min] += 1;
        }
        int index = -1;
        for (int i = 0; i < counting.length; i++) {
            for (int j = 0; j < counting[i]; j++) {
                index++;
                array[index] = i + min;
            }
        }
    }
```
![image](https://img-blog.csdnimg.cn/img_convert/8a816baa9ad1e0cbd5bd0f503cd38601.png)

# 2. 安卓Kotlin版
开发工具：[下载Android Studio](https://cxyxy.blog.csdn.net/article/details/107098873)
```kotlin
private fun sort(array: IntArray) {
    if (array.isEmpty()) return
    var min = array[0]
    var max = min
    for (num in array) {
        if (num > max) {
            max = num
        } else if (num < min) {
            min = num
        }
    }
    val counting = IntArray(max - min + 1)
    for (i in array.indices) {
        counting[array[i] - min] += 1
    }
    var index = -1
    for (i in counting.indices) {
        for (j in 0 until counting[i]) {
            index++
            array[index] = i + min
        }
    }
}
```
![image](https://img-blog.csdnimg.cn/img_convert/f3a5f272743f38ec5f3d8e6ec4940a02.png)

# 3. NodeJS
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```js
function sort() {
  let array = [2, 1, 5, 4, 3]
  var min = array[0]
  var max = min
  for (var i = 0; i < array.length; i++) {
    if (array[i] > max) {
      max = array[i]
    } else if (array[i] < min) {
      min = array[i]
    }
  }

  var counting = Array(max - min + 1).fill(0)
  for (var i = 0; i < array.length; i++) {
    counting[array[i] - min] += 1
  }
  var index = -1
  for (var i = 0; i < counting.length; i++) {
    for (var j = 0; j < counting[i]; j++) {
      index++
      array[index] = i + min
    }
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
        $bucket = [];
        $result = [];
        $min = $array[0];
        $max = $array[0];
        foreach ($array as $item) {
            if ($item < $min) {
                $min = $item;
            }
            if ($item > $max) {
                $max = $item;
            }
        }
        foreach ($array as $v) {
            if (!isset($bucket[$v])) {
                $bucket[($v)] = 0;
            }
            $bucket[$v]++;
        }
        for ($i = $min; $i <= $max; $i++) {
            while (isset($bucket[$i]) && $bucket[$i] > 0) {
                array_push($result, $i);
                $bucket[$i]--;
            }
        }
        return var_dump($result);
    }
```
![image](https://img-blog.csdnimg.cn/img_convert/749b42523743051e6bb61f899664e4e8.png)

# 5. Python
开发工具：[下载PyCharm](https://cxyxy.blog.csdn.net/article/details/128722649)
```python
array = [2, 1, 5, 4, 3]


def sort():
    max_num = max(array)
    count = [0 for i in range(max_num + 1)]
    for val in array:
        count[val] += 1
    array.clear()
    for index, val in enumerate(count):
        for i in range(val):
            array.append(index)
```
![image](https://img-blog.csdnimg.cn/img_convert/5c9aa2875387231270deb615fea84aec.png)
# 6. Swift(SwiftUI版)
开发工具：XCode(mac电脑自带)
```swift
var array = [2, 1, 5, 4, 3]
func sort() {
    var min = array[0]
    var max = min
    for i in 0...array.count-1 {
        if (array[i] > max) {
            max = array[i]
        } else if (array[i] < min) {
            min = array[i]
        }
    }
    
    var counting:[Int] =  [Int](repeating: 0, count: max - min + 1)
    
    for i in 0...array.count-1 {
        counting[array[i] - min] += 1
    }
    var index = -1
    for i in 0...counting.count-1 {
        for _ in 0...counting[i]-1 {
            index += 1
            array[index] = i + min
        }
    }
}
```
![image](https://img-blog.csdnimg.cn/img_convert/6c8c812dd388572daa842d5fcb794e8a.png)

# 7. uni-app
开发工具：[下载HBuilderX](https://cxyxy.blog.csdn.net/article/details/128722661)
```js
sort() {
	let array = [2, 1, 5, 4, 3]
	var min = array[0]
	var max = min
	for (var i = 0; i < array.length; i++) {
		if (array[i] > max) {
			max = array[i]
		} else if (array[i] < min) {
			min = array[i]
		}
	}

	var counting = Array(max - min + 1).fill(0)
	for (var i = 0; i < array.length; i++) {
		counting[array[i] - min] += 1
	}
	var index = -1
	for (var i = 0; i < counting.length; i++) {
		for (var j = 0; j < counting[i]; j++) {
			index++
			array[index] = i + min
		}
	}
	this.array = array
	this.arrayStr = this.convertToStr(array)
},
```
![image](https://img-blog.csdnimg.cn/img_convert/aae8f6f62c507b41cde158631c7286c7.png)

# 8. vue
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```js
sort() {
      let array = [2, 1, 5, 4, 3]
      var min = array[0]
      var max = min
      for (var i = 0; i < array.length; i++) {
        if (array[i] > max) {
          max = array[i]
        } else if (array[i] < min) {
          min = array[i]
        }
      }

      var counting = Array(max - min + 1).fill(0)
      for (var i = 0; i < array.length; i++) {
        counting[array[i] - min] += 1
      }
      var index = -1
      for (var i = 0; i < counting.length; i++) {
        for (var j = 0; j < counting[i]; j++) {
          index++
          array[index] = i + min
        }
      }
      this.array = array
      this.arrayStr = this.convertToStr(array)
    },
```
![](https://img-blog.csdnimg.cn/img_convert/63fb070e00f53d269fa5402b3ac7b8c8.png)

# 9. 微信小程序
开发工具：[下载微信开发者工具](https://cxyxy.blog.csdn.net/article/details/128732108)
```js
sort() {
    let array = [2, 1, 5, 4, 3]
    var min = array[0]
    var max = min
    for (var i = 0; i < array.length; i++) {
      if (array[i] > max) {
        max = array[i]
      } else if (array[i] < min) {
        min = array[i]
      }
    }

    var counting = Array(max - min + 1).fill(0)
    for (var i = 0; i < array.length; i++) {
      counting[array[i] - min] += 1
    }
    var index = -1
    for (var i = 0; i < counting.length; i++) {
      for (var j = 0; j < counting[i]; j++) {
        index++
        array[index] = i + min
      }
    }
  },
```
![image](https://img-blog.csdnimg.cn/img_convert/b5a21804aa4207db15464f66e939934c.png)

# 10. 鸿蒙(ArkTS)
开发工具：[下载DevEco Studio](https://developer.harmonyos.com/cn/develop/deveco-studio)
```js
sort() {
    let array = [2, 1, 5, 4, 3]
    var min = array[0]
    var max = min
    for (var i = 0; i < array.length; i++) {
      if (array[i] > max) {
        max = array[i]
      } else if (array[i] < min) {
        min = array[i]
      }
    }

    var counting = Array(max - min + 1).fill(0)
    for (var i = 0; i < array.length; i++) {
      counting[array[i] - min] += 1
    }
    var index = -1
    for (var i = 0; i < counting.length; i++) {
      for (var j = 0; j < counting[i]; j++) {
        index++
        array[index] = i + min
      }
    }
    this.array = array
  }
```
![image](https://img-blog.csdnimg.cn/img_convert/6d192a219105cdd43ca45aa288281214.png)
# 11. Go语言
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```go
var array = []int{2, 1, 5, 4, 3}

func sort() {
	var index int = 0
	var tmpLen int = 0
	for _, data := range array {
		if tmpLen < data {
			tmpLen = data
		}
	}
	tmpLen++
	tmpArray := make([][]int, tmpLen)
	for _, data := range array {
		tmpArray[data] = append(tmpArray[data], data)
	}
	for i := 0; i < tmpLen; i++ {
		if tmpArray[i] != nil {
			for j := 0; j < len(tmpArray[i]); j++ {
				array[index] = tmpArray[i][j]
				index++
			}
		}
	}
}
```
![image](https://img-blog.csdnimg.cn/img_convert/c85caab1cd20b6dd525fda166920264d.png)
# 12. Java
开发工具：[下载IntelliJ IDEA](https://cxyxy.blog.csdn.net/article/details/128722658)
```java
 private static void sort(int[] array) {
        if (array.length == 0) return;
        int min = array[0];
        int max = min;
        for (int num : array) {
            if (num > max) {
                max = num;
            } else if (num < min) {
                min = num;
            }
        }
        int[] counting = new int[max - min + 1];
        for (int i = 0; i < array.length; i++) {
            counting[array[i] - min] += 1;
        }
        int index = -1;
        for (int i = 0; i < counting.length; i++) {
            for (int j = 0; j < counting[i]; j++) {
                index++;
                array[index] = i + min;
            }
        }
    }
```
![image](https://img-blog.csdnimg.cn/img_convert/40cb29251cb320301163cdd7f171276e.png)

# 13. Kotlin
开发工具：[下载IntelliJ IDEA](https://cxyxy.blog.csdn.net/article/details/128722658)
```kotlin
private fun sort(array: IntArray) {
    if (array.isEmpty()) return
    var min = array[0]
    var max = min
    for (num in array) {
        if (num > max) {
            max = num
        } else if (num < min) {
            min = num
        }
    }
    val counting = IntArray(max - min + 1)
    for (i in array.indices) {
        counting[array[i] - min] += 1
    }
    var index = -1
    for (i in counting.indices) {
        for (j in 0 until counting[i]) {
            index++
            array[index] = i + min
        }
    }
}
```
![image](https://img-blog.csdnimg.cn/img_convert/206003262b01d127af1db0a03741985b.png)

# 14. Flutter
开发工具：[下载IntelliJ IDEA](https://cxyxy.blog.csdn.net/article/details/128722658)
```dart
void sort(List<int> array) {
  int min = array[0];
  int max = min;
  for (int num in array) {
    if (num > max) {
      max = num;
    } else if (num < min) {
      min = num;
    }
  }
  List<int> counting = List.filled(max - min + 1, 0);
  for (int i = 0; i < array.length; i++) {
    counting[array[i] - min] += 1;
  }
  int index = -1;
  for (int i = 0; i < counting.length; i++) {
    for (int j = 0; j < counting[i]; j++) {
      index++;
      array[index] = i + min;
    }
  }
}
```
![](https://img-blog.csdnimg.cn/img_convert/39afcc60a45a08b9155fdb259fa8c4cc.png)

# 15. C语言
开发工具：[下载Visual Studio](https://cxyxy.blog.csdn.net/article/details/128722639)
```c
void sort(int* array, int count)
{
	int min = array[0];
	int max = min;
	for (int i = 1; i < count; i++)
	{
		if (array[i] > max)
		{
			max = array[i];
		}
		else if (array[i] < min)
		{
			min = array[i];
		}
	}
	int countingLen = max - min + 1;

	int* counting = (int*)malloc(sizeof(int) * countingLen);
	memset(counting,0,sizeof(int)* countingLen);

	for (int i = 0; i < count; i++)
	{
		counting[array[i] - min] += 1;
	}
	int index = -1;
	for (int i = 0; i < countingLen; i++)
	{
		for (int j = 0; j < counting[i]; j++)
		{
			index++;
			array[index] = i + min;
		}
	}
	free(counting);
}
```
![image](https://img-blog.csdnimg.cn/img_convert/92f1f1da2dc8392bf15e185e0cb33b89.png)

# 16. C++
开发工具：[下载Visual Studio](https://cxyxy.blog.csdn.net/article/details/128722639)
```cpp
void sort(int *array, int count)
{
	int min = array[0];
	int max = min;
	for (int i = 1; i < count; i++)
	{
		if (array[i] > max)
		{
			max = array[i];
		}
		else if (array[i] < min)
		{
			min = array[i];
		}
	}
	int countingLen = max - min + 1;
	int *counting = new int[countingLen];
	for (int i = 0; i < count; i++)
	{
		counting[array[i] - min] += 1;
	}
	int index = -1;
	for (int i = 0; i < countingLen; i++)
	{
		for (int j = 0; j < counting[i]; j++)
		{
			index++;
			array[index] = i + min;
		}
	}
	delete[] counting;
}
```
![image](https://img-blog.csdnimg.cn/img_convert/8d3cc4225f0e4ea2e71af16dfa1f7456.png)
# 17. C#
开发工具：[下载Visual Studio](https://cxyxy.blog.csdn.net/article/details/128722639)
```csharp
private static void Sort(int[] array)
{
    if (array.Length == 0) return;
    int min = array[0];
    int max = min;
    foreach (int num in array)
    {
        if (num > max)
        {
            max = num;
        }
        else if (num < min)
        {
            min = num;
        }
    }
    int[] counting = new int[max - min + 1];
    for (int i = 0; i < array.Length; i++)
    {
        counting[array[i] - min] += 1;
    }
    int index = -1;
    for (int i = 0; i < counting.Length; i++)
    {
        for (int j = 0; j < counting[i]; j++)
        {
            index++;
            array[index] = i + min;
        }
    }
}
```
![image](https://img-blog.csdnimg.cn/img_convert/2375ab26d2116bd0ab747ae346ec40f8.png)

# 关于
厦门大学计算机专业|华为八年高级工程师   
专注《零基础学编程系列》  http://lblbc.cn/blog  
包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙  
公众号：蓝不蓝编程
