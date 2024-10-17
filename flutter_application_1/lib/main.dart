import"package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Container with Gradient Colours",
      debugShowCheckedModeBanner: false,
      home: GradientDemo(),
    );
  }
}
class GradientDemo extends StatelessWidget {
  const GradientDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("Container Gradient",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
          color: Colors.white,
          fontStyle: FontStyle.italic,
        ),
        ),
      ),
      body: Center(
        child:
        GestureDetector(
          onTap: (){
            print("Button Pressed");
          },
       child:Container(
          alignment: Alignment.center,
          height: 300,
          width: 300,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.red,
                Colors.black
              ],
          ),
          ),
          child: const Text("Press Me !!",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
          ),
          ),
         ),
        ),
      ),
    );
  }
}