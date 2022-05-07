import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vromon/component/custom_orientation.dart';
import 'package:vromon/constant/color.dart';
import 'package:vromon/constant/number.dart';


class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {


  int toggleSwitch = 0;

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return CustomOrientation(
        portrait: Scaffold(
      appBar: AppBar(
        backgroundColor: brandColor,
        centerTitle: true,
        title: Text('vRoMon',
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white),
            )),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding:   EdgeInsets.all(width/sixteenPixelWidth),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                 _buildToggleSwitchPortrait(context),


           _logoPortrait(context),

              Container(
                  height: height/thirtyTwoPixelHeight,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width/sixteenPixelWidth),
                    color: ass,
                  ),
                  child: TextFormField(
                      decoration: InputDecoration(
                        hintText:
                        toggleSwitch == 1 ? 'Find your destination' : null,
                        hintStyle:   TextStyle(
                          color: Colors.black,
                          fontSize: height/sixteenPixelHeight,
                        ),
                        icon:   Padding(
                          padding: EdgeInsets.only(left: width/sixteenPixelWidth, top: height/fivePixelHeight),
                          child: Icon(Icons.search),
                        ),
                        border: InputBorder.none,
                      )

                    // initialValue:  "Search",style: hintTextStyle,

                  )),
              SizedBox(
                height: height/eightPixelHeight,
              ),
              Text(
                toggleSwitch == 1
                    ? 'Are you interested\nto be a local guide?'
                    : 'আপনি কি "লোকাল\nগাইড" হতে আগ্রহী। ',
                style:   TextStyle(
                    fontSize: height/twentyTwoPixelHeight,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height/eightPixelHeight,
              ),
              _buildCardStackPortrait(context),

              SizedBox(
                height: height/eightPixelHeight,
              ),
              Text(
                toggleSwitch == 1
                    ? 'Registration is fully free!'
                    : 'রেজিস্ট্রেশন সম্পূর্ণ ফ্রি!!',
                style:   TextStyle(
                    fontSize: height/twentyTwoPixelHeight,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    ),
        landscape: Scaffold(
      appBar: AppBar(
        backgroundColor: brandColor,
        centerTitle: true,
        title: Text('vRoMon',
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white),
            )),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding:   EdgeInsets.all(width/sixteenPixelWidth),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildToggleSwitchLandscape(context),
              _logoLandscape(context),
              Container(
                  height: width/thirtyTwoPixelHeight * 2,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width/sixteenPixelWidth),
                    color: ass,
                  ),
                  child: TextFormField(
                      decoration: InputDecoration(
                        hintText:
                        toggleSwitch == 1 ? 'Find your destination' : null,
                        hintStyle:   TextStyle(
                          color: Colors.black,
                          fontSize: width/sixteenPixelHeight,
                        ),
                        icon:   Padding(
                          padding: EdgeInsets.only(left: width/sixteenPixelWidth, top: width/fivePixelHeight * 2),
                          child: Icon(Icons.search,size: width/thirtyTwoPixelHeight,),
                        ),
                        border: InputBorder.none,
                      )

                    // initialValue:  "Search",style: hintTextStyle,

                  )),
              SizedBox(
                height: width/eightPixelHeight * 2,
              ),
              Text(
                toggleSwitch == 1
                    ? 'Are you interested\nto be a local guide?'
                    : 'আপনি কি "লোকাল\nগাইড" হতে আগ্রহী। ',
                style:   TextStyle(
                    fontSize: width/twentyTwoPixelHeight,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: width/eightPixelHeight * 2,
              ),
              _buildCardStackLandscape(context),
              SizedBox(
                height: width/eightPixelHeight *2,
              ),
              Text(
                toggleSwitch == 1
                    ? 'Registration is fully free!'
                    : 'রেজিস্ট্রেশন সম্পূর্ণ ফ্রি!!',
                style:   TextStyle(
                    fontSize: width/twentyTwoPixelHeight,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    ));
  }

   Widget _buildToggleSwitchPortrait(BuildContext context) {

     final height = MediaQuery.of(context).size.height;
     final width = MediaQuery.of(context).size.width;

    return   Container(
      height: height/thirtyFivePixelHeight,
      width: width/twoHundredPixelWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width/sixteenPixelWidth),
        color: ass,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                toggleSwitch = 0;
              });
            },
            child: Container(
              alignment: Alignment.center,
              height: height/thirtyTwoPixelHeight,
              width: width/ninetyEightPixelWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width/sixteenPixelWidth),
                color: toggleSwitch == 0
                    ? Colors.white
                    : Colors.transparent,
              ),
              child:   Text(
                "Bangla",
                style: TextStyle(
                    fontSize: height/sixteenPixelHeight,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                toggleSwitch = 1;
              });
            },
            child: Container(
              alignment: Alignment.center,
              height: height/thirtyTwoPixelHeight,
              width: width/ninetyEightPixelWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width/sixteenPixelWidth),
                color: toggleSwitch == 1
                    ? Colors.white
                    : Colors.transparent,
              ),
              child:   Text(
                "English",
                style: TextStyle(
                    fontSize: height/sixteenPixelHeight,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
   }
  Widget _buildToggleSwitchLandscape(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return   Container(
      height: width/thirtyFivePixelHeight * 2,
      width: width/twoHundredPixelWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width/sixteenPixelWidth),
        color: ass,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                toggleSwitch = 0;
              });
            },
            child: Container(
              alignment: Alignment.center,
              height: width/thirtyTwoPixelHeight * 2,
              width: width/ninetyEightPixelWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width/sixteenPixelWidth),
                color: toggleSwitch == 0
                    ? Colors.white
                    : Colors.transparent,
              ),
              child:   Text(
                "Bangla",
                style: TextStyle(
                    fontSize: width/sixteenPixelHeight,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                toggleSwitch = 1;
              });
            },
            child: Container(
              alignment: Alignment.center,
              height: width/thirtyTwoPixelHeight * 2,
              width: width/ninetyEightPixelWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width/sixteenPixelWidth),
                color: toggleSwitch == 1
                    ? Colors.white
                    : Colors.transparent,
              ),
              child:   Text(
                "English",
                style: TextStyle(
                    fontSize: width/sixteenPixelHeight,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

 Widget _logoPortrait(BuildContext context) {
   final height = MediaQuery.of(context).size.height;
   final width = MediaQuery.of(context).size.width;
    return    Container(
      height: height/twoHundredPixelHeight  ,
      width: width/twoHundredPixelWidth,
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/VROMON LOGO.png'),
            fit: BoxFit.cover,
          )),
    );
  }
  Widget _logoLandscape(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return    Container(
      height: width/twoHundredPixelHeight * 2 ,
      width: width/twoHundredPixelWidth,
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/VROMON LOGO.png'),
            fit: BoxFit.contain,
          )),
    );
  }

  Widget _buildCardStackPortrait(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return   Container(
      height: height/oneFortyPixelHeight,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            height: height/oneThirtyPixelHeight,
            width: width/threeSixtyPixelWidth,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: brandColor,
            ),
          ),
          Positioned(
            top: height/eightPixelHeight,
            right: width/eightPixelWidth,
            child: Container(
              alignment: Alignment.center,
              height: height/oneThirtyPixelHeight,
              width: width/threeSixtyPixelWidth,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: brandColor,
              ),
              child: Text(
                toggleSwitch == 1
                    ? 'Click here to register'
                    : 'আগ্রহী হলে\nরেজিস্ট্রেশন করতে\n"ক্লিক" করুন। ',
                style:   TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: height/twentyTwoPixelHeight,
                    color: Colors.white54),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildCardStackLandscape(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return   Container(
      height: width/oneFortyPixelHeight * 2,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            height: width/oneThirtyPixelHeight * 2,
            width: width/threeSixtyPixelWidth,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: brandColor,
            ),
          ),
          Positioned(
            top: width/eightPixelHeight * 2,
            right: width/eightPixelWidth,
            child: Container(
              alignment: Alignment.center,
              height: width/oneThirtyPixelHeight * 2,
              width: width/threeSixtyPixelWidth,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: brandColor,
              ),
              child: Text(
                toggleSwitch == 1
                    ? 'Click here to register'
                    : 'আগ্রহী হলে\nরেজিস্ট্রেশন করতে\n"ক্লিক" করুন। ',
                style:   TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: width/twentyTwoPixelHeight,
                    color: Colors.white54),
              ),
            ),
          ),
        ],
      ),
    );
  }

}

