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
      home: const MyHomePage(title: '归并排序 - 蓝不蓝编程'),
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

convertToStr(List<int> list) {
  return list.join(" ");
}
