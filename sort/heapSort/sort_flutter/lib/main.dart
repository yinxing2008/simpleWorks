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
      home: const MyHomePage(title: '堆排序 - 蓝不蓝编程'),
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

convertToStr(List<int> list) {
  return list.join(" ");
}
