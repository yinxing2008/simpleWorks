
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
        for (int gap = array.length / 2; gap > 0; gap /= 2) {
            for (int i = gap; i < array.length; i++) {
                int j = i;
                int tmp = array[j];
                if (array[j] < array[j - gap]) {
                    while (j - gap >= 0 && tmp < array[j - gap]) {
                        array[j] = array[j - gap];
                        j -= gap;
                    }
                    array[j] = tmp;
                }
            }
        }
    }
```
![image](https://img-blog.csdnimg.cn/img_convert/8a816baa9ad1e0cbd5bd0f503cd38601.png)

# 2. 安卓Kotlin版
开发工具：[下载Android Studio](https://cxyxy.blog.csdn.net/article/details/107098873)
```kotlin

private fun sort(array: IntArray) {
    var gap = array.size / 2
    while (gap > 0) {
        for (i in gap until array.size) {
            var j = i
            val tmp = array[j]
            if (array[j] < array[j - gap]) {
                while (j - gap >= 0 && tmp < array[j - gap]) {
                    array[j] = array[j - gap]
                    j -= gap
                }
                array[j] = tmp
            }
        }
        gap /= 2
    }
}
```
![image](https://img-blog.csdnimg.cn/img_convert/f3a5f272743f38ec5f3d8e6ec4940a02.png)

# 3. NodeJS
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```js

function sort() {
  let array = [2, 1, 5, 4, 3]
  for (let gap = Math.floor(array.length / 2); gap > 0; gap /= 2) {
    for (let i = gap; i < array.length; i++) {
      var j = i
      var tmp = array[j]
      if (array[j] < array[j - gap]) {
        while (j - gap >= 0 && tmp < array[j - gap]) {
          array[j] = array[j - gap]
          j -= gap
        }
        array[j] = tmp
      }
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
        $arr = [2, 1, 5, 4, 3];
        $length = count($arr);
        $plus = floor($length / 2);
        while ($plus > 0) {
            for ($i = 1; $i <= $plus; $i++) {
                for ($j = $plus; $j < $length / $plus; $j += $plus) {
                    $tmp = $arr[$j];
                    for ($k = $j - $plus; $k >= 0; $k -= $plus) {
                        if ($tmp < $arr[$k]) {
                            $arr[$k + $plus] = $arr[$k];
                            $arr[$k] = $tmp;
                        }
                    }
                }
            }
            $plus = floor($plus / 2);
        }
        return var_dump($arr);
    }
```
![image](https://img-blog.csdnimg.cn/img_convert/749b42523743051e6bb61f899664e4e8.png)

# 5. Python
开发工具：[下载PyCharm](https://cxyxy.blog.csdn.net/article/details/128722649)
```python

array = [2, 1, 5, 4, 3]


def sort():
    n = len(array)
    gap = int(n / 2)
    while gap > 0:
        for i in range(gap, n):
            temp = array[i]
            j = i
            while j >= gap and array[j - gap] > temp:
                array[j] = array[j - gap]
                j -= gap
            array[j] = temp
        gap = int(gap / 2)
```
![image](https://img-blog.csdnimg.cn/img_convert/5c9aa2875387231270deb615fea84aec.png)
# 6. Swift(SwiftUI版)
开发工具：XCode(mac电脑自带)
```swift
var array = [2, 1, 5, 4, 3]

func sort() {
    var gap = array.count / 2
    while gap > 0 {
        for i in gap ..< array.count {
            var formerIndex = i - gap
            while formerIndex >= 0 {
                if array[formerIndex] > array[formerIndex+gap] {
                    array.swapAt(formerIndex, formerIndex+gap)
                }
                formerIndex -= gap
            }
        }
        gap = gap / 2
    }
}
```
![image](https://img-blog.csdnimg.cn/img_convert/6c8c812dd388572daa842d5fcb794e8a.png)

# 7. uni-app
开发工具：[下载HBuilderX](https://cxyxy.blog.csdn.net/article/details/128722661)
```js
sort() {
	let array = [2, 1, 5, 4, 3]
	for (let gap = Math.floor(array.length / 2); gap > 0; gap /= 2) {
		for (let i = gap; i < array.length; i++) {
			var j = i
			var tmp = array[j]
			if (array[j] < array[j - gap]) {
				while (j - gap >= 0 && tmp < array[j - gap]) {
					array[j] = array[j - gap]
					j -= gap
				}
				array[j] = tmp
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
      for (let gap = Math.floor(array.length / 2); gap > 0; gap /= 2) {
        for (let i = gap; i < array.length; i++) {
          var j = i
          var tmp = array[j]
          if (array[j] < array[j - gap]) {
            while (j - gap >= 0 && tmp < array[j - gap]) {
              array[j] = array[j - gap]
              j -= gap
            }
            array[j] = tmp
          }
        }
      }
    }
```
![](https://img-blog.csdnimg.cn/img_convert/63fb070e00f53d269fa5402b3ac7b8c8.png)

# 9. 微信小程序
开发工具：[下载微信开发者工具](https://cxyxy.blog.csdn.net/article/details/128732108)
```js
sort() {
    let array = [2, 1, 5, 4, 3]
    for (let gap = Math.floor(array.length / 2); gap > 0; gap /= 2) {
      for (let i = gap; i < array.length; i++) {
        var j = i
        var tmp = array[j]
        if (array[j] < array[j - gap]) {
          while (j - gap >= 0 && tmp < array[j - gap]) {
            array[j] = array[j - gap]
            j -= gap
          }
          array[j] = tmp
        }
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
    for (let gap = Math.floor(array.length / 2); gap > 0; gap /= 2) {
      for (let i = gap; i < array.length; i++) {
        var j = i
        var tmp = array[j]
        if (array[j] < array[j - gap]) {
          while (j - gap >= 0 && tmp < array[j - gap]) {
            array[j] = array[j - gap]
            j -= gap
          }
          array[j] = tmp
        }
      }
    }
  }
```
![image](https://img-blog.csdnimg.cn/img_convert/6d192a219105cdd43ca45aa288281214.png)
# 11. Go语言
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```go

var array = []int{2, 1, 5, 4, 3}

func sort() {
	for gap := len(array) / 2; gap > 0; gap /= 2 {
		for i := gap; i < len(array); i++ {
			var j = i
			var tmp = array[j]
			if array[j] < array[j-gap] {
				for {
					array[j] = array[j-gap]
					j -= gap
					if j-gap < 0 || tmp >= array[j-gap] {
						break
					}
				}

				array[j] = tmp
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
        for (int gap = array.length / 2; gap > 0; gap /= 2) {
            for (int i = gap; i < array.length; i++) {
                int j = i;
                int tmp = array[j];
                if (array[j] < array[j - gap]) {
                    while (j - gap >= 0 && tmp < array[j - gap]) {
                        array[j] = array[j - gap];
                        j -= gap;
                    }
                    array[j] = tmp;
                }
            }
        }
    }
```
![image](https://img-blog.csdnimg.cn/img_convert/40cb29251cb320301163cdd7f171276e.png)

# 13. Kotlin
开发工具：[下载IntelliJ IDEA](https://cxyxy.blog.csdn.net/article/details/128722658)
```kotlin

private fun sort(array: IntArray) {
    var gap = array.size / 2
    while (gap > 0) {
        for (i in gap until array.size) {
            var j = i
            val tmp = array[j]
            if (array[j] < array[j - gap]) {
                while (j - gap >= 0 && tmp < array[j - gap]) {
                    array[j] = array[j - gap]
                    j -= gap
                }
                array[j] = tmp
            }
        }
        gap /= 2
    }
}
```
![image](https://img-blog.csdnimg.cn/img_convert/206003262b01d127af1db0a03741985b.png)

# 14. Flutter
开发工具：[下载IntelliJ IDEA](https://cxyxy.blog.csdn.net/article/details/128722658)
```dart
void sort(List<int> array) {
  int gap = array.length ~/ 2;
  while (gap > 0) {
    for (int i = gap; i < array.length; i++) {
      int j = i;
      int tmp = array[j];
      if (array[j] < array[j - gap]) {
        while (j - gap >= 0 && tmp < array[j - gap]) {
          array[j] = array[j - gap];
          j -= gap;
        }
        array[j] = tmp;
      }
    }
    gap = gap ~/ 2;
  }
}

```
![](https://img-blog.csdnimg.cn/img_convert/39afcc60a45a08b9155fdb259fa8c4cc.png)

# 15. C语言
开发工具：[下载Visual Studio](https://cxyxy.blog.csdn.net/article/details/128722639)
```c

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

```
![image](https://img-blog.csdnimg.cn/img_convert/92f1f1da2dc8392bf15e185e0cb33b89.png)

# 16. C++
开发工具：[下载Visual Studio](https://cxyxy.blog.csdn.net/article/details/128722639)
```cpp

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

```
![image](https://img-blog.csdnimg.cn/img_convert/8d3cc4225f0e4ea2e71af16dfa1f7456.png)
# 17. C#
开发工具：[下载Visual Studio](https://cxyxy.blog.csdn.net/article/details/128722639)
```csharp

        private static void Sort(int[] array)
        {
            for (int gap = array.Length / 2; gap > 0; gap /= 2)
            {
                for (int i = gap; i < array.Length; i++)
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
```
![image](https://img-blog.csdnimg.cn/img_convert/2375ab26d2116bd0ab747ae346ec40f8.png)

# 关于
厦门大学计算机专业|华为八年高级工程师   
专注《零基础学编程系列》  http://lblbc.cn/blog  
包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙  
公众号：蓝不蓝编程
