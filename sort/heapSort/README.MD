
# 开源地址
[https://gitee.com/lblbc/simple-works/tree/master/sort/](https://gitee.com/lblbc/simple-works/tree/master/sort/)  
> 覆盖语言：C、C++、C#、Java、Kotlin、Dart、Go、JavaScript(JS)、TypeScript(TS)、ArkTS、swift、PHP。  
> 覆盖平台：安卓(Java、Kotlin)、iOS(SwiftUI)、Flutter(Dart)、Window桌面(C#)、前端(微信小程序、uni-app、vue)、后端（Java、Kotlin、NodeJS、Python、PHP、Go、C、C++）、鸿蒙  

![](https://img-blog.csdnimg.cn/f7ba5b3299a24d338b8a71eb8cbd99b7.png)
![image](https://img-blog.csdnimg.cn/img_convert/38c89e2baadeed40e6c5353768ae6cf0.png)
# 1. 安卓Java版
开发工具：[下载Android Studio](https://cxyxy.blog.csdn.net/article/details/107098873)
```java
private void sort(int[] array) {
    for (int i = array.length / 2 - 1; i >= 0; i--) {
        adjustHeap(array, i, array.length);
    }
    for (int j = array.length - 1; j > 0; j--) {
        int temp = array[0];
        array[0] = array[j];
        array[j] = temp;
        adjustHeap(array, 0, j);
    }
}

private void adjustHeap(int[] array, int i, int length) {
    int tmp = array[i];
    for (int j = i * 2 + 1; j < length; j = j * 2 + 1) {
        if (j + 1 < length && array[j] < array[j + 1]) {
            j++;
        }
        if (array[j] > tmp) {
            array[i] = array[j];
            i = j;
        } else {
            break;
        }
    }
    array[i] = tmp;
}
```
![image](https://img-blog.csdnimg.cn/img_convert/8a816baa9ad1e0cbd5bd0f503cd38601.png)

# 2. 安卓Kotlin版
开发工具：[下载Android Studio](https://cxyxy.blog.csdn.net/article/details/107098873)
```kotlin
private fun sort(array: IntArray) {
    for (i in array.size / 2 - 1 downTo 0) {
        adjustHeap(array, i, array.size)
    }
    for (j in array.size - 1 downTo 1) {
        val temp = array[0]
        array[0] = array[j]
        array[j] = temp
        adjustHeap(array, 0, j)
    }
}

private fun adjustHeap(array: IntArray, _index: Int, length: Int) {
    var index = _index
    val tmp = array[index]
    var j = index * 2 + 1
    while (j < length) {
        if (j + 1 < length && array[j] < array[j + 1]) {
            j++
        }
        if (array[j] > tmp) {
            array[index] = array[j]
            index = j
        } else {
            break
        }
        j = j * 2 + 1
    }
    array[index] = tmp
}
```
![image](https://img-blog.csdnimg.cn/img_convert/f3a5f272743f38ec5f3d8e6ec4940a02.png)

# 3. NodeJS
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```js
function sort() {
  let array = [2, 1, 5, 4, 3]
  for (var i = Math.floor(array.length / 2) - 1; i >= 0; i--) {
    adjustHeap(array, i, array.length)
  }
  for (var j = array.length - 1; j > 0; j--) {
    var temp = array[0]
    array[0] = array[j]
    array[j] = temp
    adjustHeap(array, 0, j)
  }
  return convertToStr(array)
}
function adjustHeap(array, i, length) {
  var tmp = array[i]
  for (var j = i * 2 + 1; j < length; j = j * 2 + 1) {
    if (j + 1 < length && array[j] < array[j + 1]) {
      j++
    }
    if (array[j] > tmp) {
      array[i] = array[j]
      i = j
    } else {
      break
    }
  }
  array[i] = tmp
}
```
![image](https://img-blog.csdnimg.cn/img_convert/f92c98533aaf6264fdaf8227f94de76b.png)

# 4. Php
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```php
public function sort()
    {
        $array = [2, 1, 5, 4, 3];
        $len = count($array);
        for ($i = floor($len / 2) - 1; $i >= 0; $i--) {
            $this->adjustHeap($array, $i, $len);
        }
        for ($j = $len - 1; $j > 0; $j--) {
            $this->swap($array, 0, $j);
            $this->adjustHeap($array, 0, $j);
        }
        return var_dump($array);
    }

    private function adjustHeap(&$array, $i, $length)
    {
        $tmp = $array[$i];
        for ($k = 2 * $i + 1; $k < $length; $k = 2 * $k + 1) {
            if ($k + 1 < $length && $array[$k] < $array[$k + 1]) {
                $k++;
            }
            if ($tmp < $array[$k]) {
                $array[$i] = $array[$k];
                $i = $k;
            } else {
                break;
            }

        }
        $array[$i] = $tmp;
    }
```
![image](https://img-blog.csdnimg.cn/img_convert/749b42523743051e6bb61f899664e4e8.png)

# 5. Python
开发工具：[下载PyCharm](https://cxyxy.blog.csdn.net/article/details/128722649)
```python
array = [2, 1, 5, 4, 3]


def heap_sort(n, i):
    largest = i
    left = 2 * i + 1
    right = 2 * i + 2

    if left < n and array[i] < array[left]:
        largest = left

    if right < n and array[largest] < array[right]:
        largest = right

    if largest != i:
        array[i], array[largest] = array[largest], array[i]  # 交换

        heap_sort(n, largest)


def sort():
    n = len(array)

    for i in range(n, -1, -1):
        heap_sort(n, i)

    for i in range(n - 1, 0, -1):
        array[i], array[0] = array[0], array[i]
        heap_sort(i, 0)

```
![image](https://img-blog.csdnimg.cn/img_convert/5c9aa2875387231270deb615fea84aec.png)
# 6. Swift(SwiftUI版)
开发工具：XCode(mac电脑自带)
```swift
var array = [2, 1, 5, 4, 3]
func sort() {
    var i = array.count / 2 - 1
    
    while i >= 0
    {
        adjustHeap(_startIndex:i, length:array.count);
        i -= 1
    }
    
    i = array.count - 1
    while i > 0
    {
        let temp = array[0];
        array[0] = array[i];
        array[i] = temp;
        adjustHeap(_startIndex: 0, length:i);
        i -= 1
    }
}

func adjustHeap( _startIndex:Int,  length:Int) {
    var startIndex = _startIndex
    let tmp = array[startIndex];
    
    var j = startIndex * 2 + 1
    
    while j < length
    {
        if (j + 1 < length && array[j] < array[j + 1]) {
            j += 1;
        }
        if (array[j] > tmp) {
            array[startIndex] = array[j];
            startIndex = j;
        } else {
            break;
        }
        j = j * 2 + 1
    }
    
    array[startIndex] = tmp;
}
```
![image](https://img-blog.csdnimg.cn/img_convert/6c8c812dd388572daa842d5fcb794e8a.png)

# 7. uni-app
开发工具：[下载HBuilderX](https://cxyxy.blog.csdn.net/article/details/128722661)
```js
sort() {
	let array = [2, 1, 5, 4, 3]
	for (var i = Math.floor(array.length / 2) - 1; i >= 0; i--) {
		this.adjustHeap(array, i, array.length)
	}
	for (var j = array.length - 1; j > 0; j--) {
		var temp = array[0]
		array[0] = array[j]
		array[j] = temp
		this.adjustHeap(array, 0, j)
	}
	this.array = array
	this.arrayStr = this.convertToStr(array)
},
adjustHeap(array: number[], i: number, length: number) {
	var tmp = array[i]
	for (var j = i * 2 + 1; j < length; j = j * 2 + 1) {
		if (j + 1 < length && array[j] < array[j + 1]) {
			j++
		}
		if (array[j] > tmp) {
			array[i] = array[j]
			i = j
		} else {
			break
		}
	}
	array[i] = tmp
}
```
![image](https://img-blog.csdnimg.cn/img_convert/aae8f6f62c507b41cde158631c7286c7.png)

# 8. vue
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```js
sort() {
  let array = [2, 1, 5, 4, 3]
  for (var i = Math.floor(array.length / 2) - 1; i >= 0; i--) {
    this.adjustHeap(array, i, array.length)
  }
  for (var j = array.length - 1; j > 0; j--) {
    var temp = array[0]
    array[0] = array[j]
    array[j] = temp
    this.adjustHeap(array, 0, j)
  }
  this.array = array
  this.arrayStr = this.convertToStr(array)
},
adjustHeap(array: number[], i: number, length: number) {
  var tmp = array[i]
  for (var j = i * 2 + 1; j < length; j = j * 2 + 1) {
    if (j + 1 < length && array[j] < array[j + 1]) {
      j++
    }
    if (array[j] > tmp) {
      array[i] = array[j]
      i = j
    } else {
      break
    }
  }
  array[i] = tmp
}
```
![](https://img-blog.csdnimg.cn/img_convert/63fb070e00f53d269fa5402b3ac7b8c8.png)

# 9. 微信小程序
开发工具：[下载微信开发者工具](https://cxyxy.blog.csdn.net/article/details/128732108)
```js
sort() {
    let array = [2, 1, 5, 4, 3]
    for (var i = Math.floor(array.length / 2) - 1; i >= 0; i--) {
      this.adjustHeap(array, i, array.length)
    }
    for (var j = array.length - 1; j > 0; j--) {
      var temp = array[0]
      array[0] = array[j]
      array[j] = temp
      this.adjustHeap(array, 0, j)
    }
    this.setData({
      array: array,
      arrayStr: this.convertToStr(array),
    })
  },
  adjustHeap(array: number[], i: number, length: number) {
    var tmp = array[i]
    for (var j = i * 2 + 1; j < length; j = j * 2 + 1) {
      if (j + 1 < length && array[j] < array[j + 1]) {
        j++
      }
      if (array[j] > tmp) {
        array[i] = array[j]
        i = j
      } else {
        break
      }
    }
    array[i] = tmp
  }
```
![image](https://img-blog.csdnimg.cn/img_convert/b5a21804aa4207db15464f66e939934c.png)

# 10. 鸿蒙(ArkTS)
开发工具：[下载DevEco Studio](https://developer.harmonyos.com/cn/develop/deveco-studio)
```js
sort() {
    let array = [2, 1, 5, 4, 3]
    for (var i = Math.floor(array.length / 2) - 1; i >= 0; i--) {
      this.adjustHeap(array, i, array.length)
    }
    for (var j = array.length - 1; j > 0; j--) {
      var temp = array[0]
      array[0] = array[j]
      array[j] = temp
      this.adjustHeap(array, 0, j)
    }
    this.array = array
  }
  adjustHeap(array: number[], i: number, length: number) {
    var tmp = array[i]
    for (var j = i * 2 + 1; j < length; j = j * 2 + 1) {
      if (j + 1 < length && array[j] < array[j + 1]) {
        j++
      }
      if (array[j] > tmp) {
        array[i] = array[j]
        i = j
      } else {
        break
      }
    }
    array[i] = tmp
  }
```
![image](https://img-blog.csdnimg.cn/img_convert/6d192a219105cdd43ca45aa288281214.png)
# 11. Go语言
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```go
var array = []int{2, 1, 5, 4, 3}

func adjustHeap(currentIndex int, maxLength int) {
	var noLeafValue = array[currentIndex]
	for j := 2*currentIndex + 1; j <= maxLength; j = currentIndex*2 + 1 {
		if j < maxLength && array[j] < array[j+1] {
			j++
		}
		if noLeafValue >= array[j] {
			break
		}
		array[currentIndex] = array[j]
		currentIndex = j
	}
	array[currentIndex] = noLeafValue
}

func createHeap(length int) {
	for i := length / 2; i >= 0; i-- {
		adjustHeap(i, length-1)
	}
}

func sort(array []int) {
	var length = len(array)
	createHeap(length)
	for i := length - 1; i > 0; i-- {
		array[0], array[i] = array[i], array[0]
		adjustHeap(0, i-1)
	}
}
```
![image](https://img-blog.csdnimg.cn/img_convert/c85caab1cd20b6dd525fda166920264d.png)
# 12. Java
开发工具：[下载IntelliJ IDEA](https://cxyxy.blog.csdn.net/article/details/128722658)
```java
 private static void sort(int[] array) {
        for (int i = array.length / 2 - 1; i >= 0; i--) {
            adjustHeap(array, i, array.length);
        }
        for (int j = array.length - 1; j > 0; j--) {
            int temp = array[0];
            array[0] = array[j];
            array[j] = temp;
            adjustHeap(array, 0, j);
        }
    }

    private static void adjustHeap(int[] array, int i, int length) {
        int tmp = array[i];
        for (int j = i * 2 + 1; j < length; j = j * 2 + 1) {
            if (j + 1 < length && array[j] < array[j + 1]) {
                j++;
            }
            if (array[j] > tmp) {
                array[i] = array[j];
                i = j;
            } else {
                break;
            }
        }
        array[i] = tmp;
    }
```
![image](https://img-blog.csdnimg.cn/img_convert/40cb29251cb320301163cdd7f171276e.png)

# 13. Kotlin
开发工具：[下载IntelliJ IDEA](https://cxyxy.blog.csdn.net/article/details/128722658)
```kotlin
private fun sort(array: IntArray) {
    for (i in array.size / 2 - 1 downTo 0) {
        adjustHeap(array, i, array.size)
    }
    for (j in array.size - 1 downTo 1) {
        val temp = array[0]
        array[0] = array[j]
        array[j] = temp
        adjustHeap(array, 0, j)
    }
}

private fun adjustHeap(array: IntArray, _index: Int, length: Int) {
    var index = _index
    val tmp = array[index]
    var j = index * 2 + 1
    while (j < length) {
        if (j + 1 < length && array[j] < array[j + 1]) {
            j++
        }
        if (array[j] > tmp) {
            array[index] = array[j]
            index = j
        } else {
            break
        }
        j = j * 2 + 1
    }
    array[index] = tmp
}
```
![image](https://img-blog.csdnimg.cn/img_convert/206003262b01d127af1db0a03741985b.png)

# 14. Flutter
开发工具：[下载IntelliJ IDEA](https://cxyxy.blog.csdn.net/article/details/128722658)
```dart

void sort(List<int> array) {
  var startIndex = (array.length / 2 - 1).toInt();
  for (int i = startIndex; i >= 0; i--) {
    adjustHeap(array, i, array.length);
  }
  for (int j = array.length - 1; j > 0; j--) {
    int temp = array[0];
    array[0] = array[j];
    array[j] = temp;
    adjustHeap(array, 0, j);
  }
}

void adjustHeap(List<int> array, int startIndex, int length) {
  int tmp = array[startIndex];
  for (int j = startIndex * 2 + 1; j < length; j = j * 2 + 1) {
    if (j + 1 < length && array[j] < array[j + 1]) {
      j++;
    }
    if (array[j] > tmp) {
      array[startIndex] = array[j];
      startIndex = j;
    } else {
      break;
    }
  }
  array[startIndex] = tmp;
}
```
![](https://img-blog.csdnimg.cn/img_convert/39afcc60a45a08b9155fdb259fa8c4cc.png)

# 15. C语言
开发工具：[下载Visual Studio](https://cxyxy.blog.csdn.net/article/details/128722639)
```c

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
```
![image](https://img-blog.csdnimg.cn/img_convert/92f1f1da2dc8392bf15e185e0cb33b89.png)

# 16. C++
开发工具：[下载Visual Studio](https://cxyxy.blog.csdn.net/article/details/128722639)
```cpp

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

```
![image](https://img-blog.csdnimg.cn/img_convert/8d3cc4225f0e4ea2e71af16dfa1f7456.png)
# 17. C#
开发工具：[下载Visual Studio](https://cxyxy.blog.csdn.net/article/details/128722639)
```csharp
 private static void Sort(int[] array)
        {
            for (int i = array.Length / 2 - 1; i >= 0; i--)
            {
                AdjustHeap(array, i, array.Length);
            }
            for (int j = array.Length - 1; j > 0; j--)
            {
                int temp = array[0];
                array[0] = array[j];
                array[j] = temp;
                AdjustHeap(array, 0, j);
            }
        }

        private static void AdjustHeap(int[] array, int i, int length)
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
```
![image](https://img-blog.csdnimg.cn/img_convert/2375ab26d2116bd0ab747ae346ec40f8.png)

# 关于
厦门大学计算机专业|华为八年高级工程师   
专注《零基础学编程系列》  http://lblbc.cn/blog  
包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙  
公众号：蓝不蓝编程
