# 开源地址
[https://gitee.com/lblbc/simple-works/tree/master/sort/bubbleSort](https://gitee.com/lblbc/simple-works/tree/master/sort/bubbleSort)
![](https://img-blog.csdnimg.cn/0f4bbd4151df49a480693feacc0a0edf.png)
![](https://img-blog.csdnimg.cn/a9c8b44b3a0f4ce7b0facb00c07bd727.png)
# 1. 安卓Java版
开发工具：[下载Android Studio](https://cxyxy.blog.csdn.net/article/details/107098873)
```java
private void sort(int[] array) {
    for (int i = 0; i < array.length - 1; i++) {
        for (int j = 0; j < array.length - 1 - i; j++) {
            if (array[j] > array[j + 1]) {
                int tmp = array[j + 1];
                array[j + 1] = array[j];
                array[j] = tmp;
            }
        }
    }
}
```
![](https://img-blog.csdnimg.cn/8933c64289ad449aba669b79b201d793.png)
# 2. 安卓Kotlin版
开发工具：[下载Android Studio](https://cxyxy.blog.csdn.net/article/details/107098873)
```kotlin
private fun sort(array: IntArray) {
    for (i in 0 until array.size - 1) {
        for (j in 0 until array.size - 1 - i) {
            if (array[j] > array[j + 1]) {
                val tmp = array[j + 1]
                array[j + 1] = array[j]
                array[j] = tmp
            }
        }
    }
}
```
![](https://img-blog.csdnimg.cn/7318e42bbfc846ecbe091b49ac8af54a.png)
# 3. NodeJS
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```js
function sort() {
  let array = [2, 1, 5, 4, 3]
  for (let i = 0; i < array.length - 1; i++) {
    for (let j = 0; j < array.length - 1 - i; j++) {
      if (array[j] > array[j + 1]) {
        let tmp = array[j + 1]
        array[j + 1] = array[j]
        array[j] = tmp
      }
    }
  }
  return convertToStr(array)
}
```
![](https://img-blog.csdnimg.cn/77e20daedf8b4101aa479bb82ac4389c.png)
# 4. Php
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```php
public function sort()
{
    $array = [2, 1, 5, 4, 3];
    for ($i = 0; $i < count($array) -1; $i++) {
        for ($j = 0; $j < count($array) -1 -$i; $j++) {
            if ($array[$j] > $array[$j + 1]) {
                $tmp = $array[$j];
                $array[$j] = $array[$j + 1];
                $array[$j + 1] = $tmp;
            }
        }
    }
    return var_dump($array);
}
```
![](https://img-blog.csdnimg.cn/5379e82b4783477584934bec16d9fe12.png)
# 5. Python
开发工具：[下载PyCharm](https://cxyxy.blog.csdn.net/article/details/128722649)
```python
array = [2, 1, 5, 4, 3]
def sort():
    count = len(array)
    for i in range(count):
        for j in range(0, count - i - 1):
            if array[j] > array[j + 1]:
                array[j], array[j + 1] = array[j + 1], array[j]

```
![](https://img-blog.csdnimg.cn/05cc456c70744eda834559430b2406b3.png)

# 6. Swift(SwiftUI版)
开发工具：XCode(mac电脑自带)
```swift
var array = [2, 1, 5, 4, 3]
func sort() {
    for i in 0...array.count-2 {
        for j in 0...array.count-2-i {
            if (array[j] > array[j + 1]) {
                let tmp = array[j + 1];
                array[j + 1] = array[j];
                array[j] = tmp;
            }
        }
    }
}
```
![](https://img-blog.csdnimg.cn/215afce0276848bca3da798274928148.png)

# 7. uni-app
开发工具：[下载HBuilderX](https://cxyxy.blog.csdn.net/article/details/128722661)
```js
sort() {
  let array = [2, 1, 5, 4, 3]
  for (let i = 0; i < array.length - 1; i++) {
	for (let j = 0; j < array.length - 1 - i; j++) {
	  if (array[j] > array[j + 1]) {
		let tmp = array[j + 1]
		array[j + 1] = array[j]
		array[j] = tmp
	  }
	}
  }
}
```
![](https://img-blog.csdnimg.cn/e6669cde0e73441581d4f230d3803d12.png)

# 8. vue
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```js
sort() {
  let array = [2, 1, 5, 4, 3]
  for (let i = 0; i < array.length - 1; i++) {
	for (let j = 0; j < array.length - 1 - i; j++) {
	  if (array[j] > array[j + 1]) {
		let tmp = array[j + 1]
		array[j + 1] = array[j]
		array[j] = tmp
	  }
	}
  }
}
```
![](https://img-blog.csdnimg.cn/346179da77a14c0faa891c6f8f6bd38e.png)

# 9. 微信小程序
开发工具：[下载微信开发者工具](https://cxyxy.blog.csdn.net/article/details/128732108)
```js
sort() {
  let array = [2, 1, 5, 4, 3]
  for (let i = 0; i < array.length - 1; i++) {
    for (let j = 0; j < array.length - 1 - i; j++) {
      if (array[j] > array[j + 1]) {
        let tmp = array[j + 1];
        array[j + 1] = array[j];
        array[j] = tmp;
      }
    }
  }
}
```
![](https://img-blog.csdnimg.cn/3259e905924b4b9f95e4ded0a54efa05.png)

# 10. 鸿蒙(ArkTS)
开发工具：[下载DevEco Studio]()
```js
sort() {
  let array = this.array
  for (let i = 0; i < array.length - 1; i++) {
    for (let j = 0; j < array.length - 1 - i; j++) {
      if (array[j] > array[j + 1]) {
        let tmp = array[j + 1]
        array[j + 1] = array[j]
        array[j] = tmp
      }
    }
  }
  this.array = array
}
```
![](https://img-blog.csdnimg.cn/7185b139a03d4098bbb8eef7ab402178.png)


# 11. Go语言
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```go
var array = []int{2, 1, 5, 4, 3}

func sort() {
	for i := 0; i < len(array)-1; i++ {
		for j := 0; j < len(array)-1-i; j++ {
			if array[j] > array[j+1] {
				tmp := array[j+1]
				array[j+1] = array[j]
				array[j] = tmp
			}
		}
	}
}
```
![](https://img-blog.csdnimg.cn/41a05ad07edf4effb977fcd317ecd9b8.png)
# 12. Java
开发工具：[下载IntelliJ IDEA](https://cxyxy.blog.csdn.net/article/details/128722658)
```java
private static void sort(int[] array) {
    for (int i = 0; i < array.length - 1; i++) {
        for (int j = 0; j < array.length - 1 - i; j++) {
            if (array[j] > array[j + 1]) {
                int tmp = array[j + 1];
                array[j + 1] = array[j];
                array[j] = tmp;
            }
        }
    }
}

```
![](https://img-blog.csdnimg.cn/e22f6734c8554077bab6467ddee75d97.png)

# 13. Kotlin
开发工具：[下载IntelliJ IDEA](https://cxyxy.blog.csdn.net/article/details/128722658)
```kotlin
private fun sort(array: IntArray) {
    for (i in 0 until array.size - 1) {
        for (j in 0 until array.size - 1 - i) {
            if (array[j] > array[j + 1]) {
                val tmp = array[j + 1]
                array[j + 1] = array[j]
                array[j] = tmp
            }
        }
    }
}
```
![](https://img-blog.csdnimg.cn/ee6d1c9c854b4916b9504102e5e4660d.png)

# 14. Flutter
开发工具：[下载IntelliJ IDEA](https://cxyxy.blog.csdn.net/article/details/128722658)
```dart
void sort(List<int> list) {
  for (int i = 0; i < list.length - 1; i++) {
    for (int j = 0; j < list.length - 1 - i; j++) {
      if (list[j] > list[j + 1]) {
        var tmp = list[j + 1];
        list[j + 1] = list[j];
        list[j] = tmp;
      }
    }
  }
}
```
![](https://img-blog.csdnimg.cn/9b88565c8e6346d8941a06a4262d3900.png)

# 15. C语言
开发工具：[下载Visual Studio](https://cxyxy.blog.csdn.net/article/details/128722639)
```c
void sort(int* array, int count)
{
	for (int i = 0; i < count - 1; i++)
	{
		for (int j = 0; j < count - 1 - i; j++)
		{
			if (array[j + 1] < array[j])
			{
				int tmp = array[j];
				array[j] = array[j + 1];
				array[j + 1] = tmp;
			}
		}
	}
}
```
![](https://img-blog.csdnimg.cn/2ae2cc049add4d4ca456b666c3fddfd2.png)

# 16. C++
开发工具：[下载Visual Studio](https://cxyxy.blog.csdn.net/article/details/128722639)
```cpp
void sort(int* array, int count)
{
	for (int i = 0; i < count - 1; i++)
	{
		for (int j = 0; j < count - 1 - i; j++)
		{
			if (array[j + 1] < array[j])
			{
				int tmp = array[j];
				array[j] = array[j + 1];
				array[j + 1] = tmp;
			}
		}
	}
}
```
![](https://img-blog.csdnimg.cn/a41a6308765c4eab85cde800a8fa62b5.png)

# 17. C#
开发工具：[下载Visual Studio](https://cxyxy.blog.csdn.net/article/details/128722639)
```csharp
private void Sort(int[] array)
{
    for (int i = 0; i < array.Length - 1; i++)
    {
        for (int j = 0; j < array.Length - 1 - i; j++)
        {
            if (array[j] > array[j + 1])
            {
                int tmp = array[j + 1];
                array[j + 1] = array[j];
                array[j] = tmp;
            }
        }
    }
}

```
![](https://img-blog.csdnimg.cn/665bda9b45b349f9923dae18657620a9.png)

# 关于
厦门大学计算机专业|华为八年高级工程师   
专注《零基础学编程系列》  http://lblbc.cn/blog  
包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙  
公众号：蓝不蓝编程
