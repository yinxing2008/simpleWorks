import 'package:flutter/material.dart';

/// 厦门大学计算机专业 | 前华为工程师
/// 专注《零基础学编程系列》  http://lblbc.cn/blog
/// 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
/// 公众号：蓝不蓝编程
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '冒泡排序 - 蓝不蓝编程'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = "";
  var list = [2, 1, 5, 4, 3];

  @override
  void initState() {
    super.initState();
    setState(() {
      text = convertToStr(list);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$text',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    shuffle(list);
                    setState(() {
                      text = convertToStr(list);
                    });
                  },
                  child: const Text('打乱'),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    sort(list);
                    setState(() {
                      text = convertToStr(list);
                    });
                  },
                  child: const Text('排序'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

void shuffle(List<int> list) {
  list.shuffle();
}

void sort2(List<int> list) {
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

void sort(List<int> array) {
  int max = getMaxValue(array);
  for (int exp = 1; max / exp > 0; exp *= 10) {
    countSort(array, exp);
  }
}

void countSort(List<int> array, int exp) {
  var tmpArr = List.filled(array.length, 0);
  var bucketArr = List.filled(10, 0);

  for (int i = 0; i < array.length; i++) {
    bucketArr[((array[i] / exp) % 10).toInt()]++;
  }

  for (int i = 1; i < 10; i++) {
    bucketArr[i] += bucketArr[i - 1];
  }

  for (int i = array.length - 1; i >= 0; i--) {
    tmpArr[bucketArr[((array[i] / exp) % 10).toInt()] - 1] = array[i];
    bucketArr[((array[i] / exp) % 10).toInt()]--;
  }

  for (int i = 0; i < array.length; i++) {
    array[i] = tmpArr[i];
  }
}

int getMaxValue(List<int> array) {
  int max = array[0];
  for (int i = 1; i < array.length; i++) {
    if (array[i] > max) {
      max = array[i];
    }
  }

  return max;
}

convertToStr(List<int> list) {
  return list.join(" ");
}