import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_tecaher_connection_app/Page/Welcome/welcome.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Welcome(),
    );
  }
}

final appCount = StateProvider<int>((ref){
  return 5;
});

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key, });



  @override
  Widget build(BuildContext context , WidgetRef ref) {
    int count = ref.watch(appCount);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

               title: Text('Riverpodapp'),

      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              count.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            heroTag:"one",
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => const SecondPage()));
          },
          tooltip: 'Increment',
          child: const Icon(Icons.arrow_right_rounded),
        ),
          FloatingActionButton(
            heroTag:"two",
            onPressed: (){
              ref.read(appCount.notifier).state++;
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      )
    );
  }
}
class SecondPage extends ConsumerWidget{
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int count=ref.watch(appCount);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("$count",style: TextStyle(fontSize: 30),),
      ),
    );
  }
}