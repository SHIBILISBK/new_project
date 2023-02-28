import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:new_project/Login%20page.dart';

void main() => runApp(MaterialApp(home: HomePagrr(),));

class HomePagrr extends StatelessWidget{
  HomePagrr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.green
      ),
      bodyTextStyle: TextStyle(
        fontSize: 15,
        color: Colors.yellow
      ),
      imagePadding: EdgeInsets.all(20),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [.1,.3,.5,.6,.8],
            colors: [
              Colors.red,
              Colors.blue,
              Colors.pink,
              Colors.yellowAccent,
              Colors.purple
            ])
      )
    );
    return IntroductionScreen(
      globalBackgroundColor: Colors.deepPurple,
      pages: [
        PageViewModel(
          decoration: pageDecoration,
          title: "First Page",
          body: "It's not the load that breaks you down, it's the way you carry it. Lou Holtz",
          image: introImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTr_QUw2fdAkMouswUoEPNyg7xOMSE6bPK-gg&usqp=CAU"),
        ),
        PageViewModel(
          decoration: pageDecoration,
          title: "Second Page",
          body: "It's not the load that breaks you down, it's the way you carry it. Lou Holtz",
          image: introImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTr_QUw2fdAkMouswUoEPNyg7xOMSE6bPK-gg&usqp=CAU"),
        ),
        PageViewModel(
          decoration: pageDecoration,
          title: "Second Page",
          body: "It's not the load that breaks you down, it's the way you carry it. Lou Holtz",
          image: introImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTr_QUw2fdAkMouswUoEPNyg7xOMSE6bPK-gg&usqp=CAU"),
        ),
      ],
      onDone: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Loginpage())),
      onSkip: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Loginpage())),
      showSkipButton: true,
      skip: const Text("Skip"),
      next: const Icon(Icons.arrow_forward),
      done: const Text("Continue to Home"),
      dotsDecorator: const DotsDecorator(
        size: Size(10, 10),
        color: Colors.white,
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25)))
      ),
    );
  }

 introImage(String image) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Image.network(image,width: 350,),
    );
}
  
  

}