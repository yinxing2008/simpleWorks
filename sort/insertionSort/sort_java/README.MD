
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
        for (int i = 1; i < array.length; i++) {
            int insertVal = array[i];
            int insertIndex = i - 1;
            while (insertIndex >= 0 && insertVal < array[insertIndex]) {
                array[insertIndex + 1] = array[insertIndex];
                insertIndex--;
            }
            array[insertIndex + 1] = insertVal;
        }
    }
```
![image](https://img-blog.csdnimg.cn/img_convert/8a816baa9ad1e0cbd5bd0f503cd38601.png)

# 2. 安卓Kotlin版
开发工具：[下载Android Studio](https://cxyxy.blog.csdn.net/article/details/107098873)
```kotlin
 private fun sort(array: IntArray) {
        for (i in 1 until array.size) {
            val insertVal = array[i]
            var insertIndex = i - 1
            while (insertIndex >= 0 && insertVal < array[insertIndex]) {
                array[insertIndex + 1] = array[insertIndex]
                insertIndex--
            }
            array[insertIndex + 1] = insertVal
        }
    }
```
![image](https://img-blog.csdnimg.cn/img_convert/f3a5f272743f38ec5f3d8e6ec4940a02.png)

# 3. NodeJS
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```js
function sort() {
  let array = [2, 1, 5, 4, 3]
  for (let i = 1; i < array.length; i++) {
    var insertVal = array[i]
    var insertIndex = i - 1
    while (insertIndex >= 0 && insertVal < array[insertIndex]) {
      array[insertIndex + 1] = array[insertIndex]
      insertIndex--
    }
    array[insertIndex + 1] = insertVal
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
        for ($i = 0; $i < count($array); $i++) {
            $insertVal = $array[$i];
            $insertIndex = $i - 1;
            while ($insertIndex >= 0 && $insertVal < $array[$insertIndex]) {
                $array[$insertIndex + 1] = $array[$insertIndex];
                $insertIndex--;
            }
            $array[$insertIndex + 1] = $insertVal;
        }
        return var_dump($array);
    }
```
![image](https://img-blog.csdnimg.cn/img_convert/749b42523743051e6bb61f899664e4e8.png)

# 5. Python
开发工具：[下载PyCharm](https://cxyxy.blog.csdn.net/article/details/128722649)
```python
array = [2, 1, 5, 4, 3]

def sort():
    count = len(array)
    for i in range(count):
        insert_val = array[i]
        insert_index = i - 1
        while insert_index >= 0 and insert_val < array[insert_index]:
            array[insert_index + 1] = array[insert_index]
            insert_index -= 1

        array[insert_index + 1] = insert_val


```
![image](https://img-blog.csdnimg.cn/img_convert/5c9aa2875387231270deb615fea84aec.png)
# 6. Swift(SwiftUI版)
开发工具：XCode(mac电脑自带)
```swift
var array = [2, 1, 5, 4, 3]
func sort() {
    for i in 1...array.count-1 {
        let insertVal = array[i];
        var insertIndex = i - 1;
        while (insertIndex >= 0 && insertVal < array[insertIndex]) {
            array[insertIndex + 1] = array[insertIndex];
            insertIndex -= 1;
        }
        array[insertIndex + 1] = insertVal;
    }
    
}
```
![image](https://img-blog.csdnimg.cn/img_convert/6c8c812dd388572daa842d5fcb794e8a.png)

# 7. uni-app
开发工具：[下载HBuilderX](https://cxyxy.blog.csdn.net/article/details/128722661)
```js
sort() {
	let array = [2, 1, 5, 4, 3]
	for (let i = 1; i < array.length; i++) {
		var insertVal = array[i]
		var insertIndex = i - 1
		while (insertIndex >= 0 && insertVal < array[insertIndex]) {
			array[insertIndex + 1] = array[insertIndex]
			insertIndex--
		}
		array[insertIndex + 1] = insertVal
	}
}
```
![image](https://img-blog.csdnimg.cn/img_convert/aae8f6f62c507b41cde158631c7286c7.png)

# 8. vue
开发工具：[下载Visual Studio Code](https://cxyxy.blog.csdn.net/article/details/128722652)
```js
sort() {
      let array = [2, 1, 5, 4, 3]
      for (let i = 1; i < array.length; i++) {
        var insertVal = array[i]
        var insertIndex = i - 1
        while (insertIndex >= 0 && insertVal < array[insertIndex]) {
          array[insertIndex + 1] = array[insertIndex]
          insertIndex--
        }
        array[insertIndex + 1] = insertVal
      }
    },
```
![](https://img-blog.csdnimg.cn/img_convert/63fb070e00f53d269fa5402b3ac7b8c8.png)

# 9. 微信小程序
开发工具：[下载微信开发者工具](https://cxyxy.blog.csdn.net/article/details/128732108)
```js
  sort() {
    let array = [2, 1, 5, 4, 3]
    for (let i = 1; i < array.length; i++) {
      var insertVal = array[i]
      var insertIndex = i - 1
      while (insertIndex >= 0 && insertVal < array[insertIndex]) {
        array[insertIndex + 1] = array[insertIndex]
        insertIndex--
      }
      array[insertIndex + 1] = insertVal
    }

  },
```
![image](https://img-blog.csdnimg.cn/img_convert/b5a21804aa4207db15464f66e939934c.png)

# 10. 鸿蒙(ArkTS)
开发工具：[下载DevEco Studio](https://developer.harmonyos.com/cn/develop/deveco-studio)
```js
 sort() {
    let array = [2, 1, 5, 4, 3]
    for (let i = 1; i < array.length; i++) {
      var insertVal = array[i]
      var insertIndex = i - 1
      while (insertIndex >= 0 && insertVal < array[insertIndex]) {
        array[insertIndex + 1] = array[insertIndex]
        insertIndex--
      }
      array[insertIndex + 1] = insertVal
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
	for i := 1; i < len(array); i++ {
		var insertVal = array[i]
		var insertIndex = i - 1
		for {
			if insertIndex < 0 || insertVal >= array[insertIndex] {
				break
			}
			array[insertIndex+1] = array[insertIndex]
			insertIndex--

		}
		array[insertIndex+1] = insertVal
	}
}

```
![image](https://img-blog.csdnimg.cn/img_convert/c85caab1cd20b6dd525fda166920264d.png)
# 12. Java
开发工具：[下载IntelliJ IDEA](https://cxyxy.blog.csdn.net/article/details/128722658)
```java
private void sort(int[] array) {
        for (int i = 1; i < array.length; i++) {
            int insertVal = array[i];
            int insertIndex = i - 1;
            while (insertIndex >= 0 && insertVal < array[insertIndex]) {
                array[insertIndex + 1] = array[insertIndex];
                insertIndex--;
            }
            array[insertIndex + 1] = insertVal;
        }
    }
```
![image](https://img-blog.csdnimg.cn/img_convert/40cb29251cb320301163cdd7f171276e.png)

# 13. Kotlin
开发工具：[下载IntelliJ IDEA](https://cxyxy.blog.csdn.net/article/details/128722658)
```kotlin
 private fun sort(array: IntArray) {
        for (i in 1 until array.size) {
            val insertVal = array[i]
            var insertIndex = i - 1
            while (insertIndex >= 0 && insertVal < array[insertIndex]) {
                array[insertIndex + 1] = array[insertIndex]
                insertIndex--
            }
            array[insertIndex + 1] = insertVal
        }
    }
```
![image](https://img-blog.csdnimg.cn/img_convert/206003262b01d127af1db0a03741985b.png)

# 14. Flutter
开发工具：[下载IntelliJ IDEA](https://cxyxy.blog.csdn.net/article/details/128722658)
```dart
void sort(List<int> list) {
  for (int i = 1; i < list.length; i++) {
    int insertVal = list[i];
    int insertIndex = i - 1;
    while (insertIndex >= 0 && insertVal < list[insertIndex]) {
      list[insertIndex + 1] = list[insertIndex];
      insertIndex--;
    }
    list[insertIndex + 1] = insertVal;
  }
}
```
![](https://img-blog.csdnimg.cn/img_convert/39afcc60a45a08b9155fdb259fa8c4cc.png)

# 15. C语言
开发工具：[下载Visual Studio](https://cxyxy.blog.csdn.net/article/details/128722639)
```c
void sort(int *array, int count)
{
	for (int i = 1; i < count; i++)
	{
		int insertVal = array[i];
		int insertIndex = i - 1;
		while (insertIndex >= 0 && insertVal < array[insertIndex])
		{
			array[insertIndex + 1] = array[insertIndex];
			insertIndex--;
		}
		array[insertIndex + 1] = insertVal;
	}
}
```
![image](https://img-blog.csdnimg.cn/img_convert/92f1f1da2dc8392bf15e185e0cb33b89.png)

# 16. C++
开发工具：[下载Visual Studio](https://cxyxy.blog.csdn.net/article/details/128722639)
```cpp
void sort(int *array, int count)
{
	for (int i = 1; i < count; i++)
	{
		int insertVal = array[i];
		int insertIndex = i - 1;
		while (insertIndex >= 0 && insertVal < array[insertIndex])
		{
			array[insertIndex + 1] = array[insertIndex];
			insertIndex--;
		}
		array[insertIndex + 1] = insertVal;
	}
}
```
![image](https://img-blog.csdnimg.cn/img_convert/8d3cc4225f0e4ea2e71af16dfa1f7456.png)
# 17. C#
开发工具：[下载Visual Studio](https://cxyxy.blog.csdn.net/article/details/128722639)
```csharp
 public static void Sort(int[] array)
        {
            for (int i = 1; i < array.Length; i++)
            {
                int insertVal = array[i];
                int insertIndex = i - 1;
                while (insertIndex >= 0 && insertVal < array[insertIndex])
                {
                    array[insertIndex + 1] = array[insertIndex];
                    insertIndex--;
                }
                array[insertIndex + 1] = insertVal;
            }
        }
```
![image](https://img-blog.csdnimg.cn/img_convert/2375ab26d2116bd0ab747ae346ec40f8.png)

# 关于
厦门大学计算机专业|华为八年高级工程师   
专注《零基础学编程系列》  http://lblbc.cn/blog  
包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙  
公众号：蓝不蓝编程
