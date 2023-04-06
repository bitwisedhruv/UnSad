import 'package:flutter/material.dart';
import 'package:unsad/controller/fetchmeme.dart';
import 'package:unsad/widgets/side_drawer.dart';

class Dank extends StatefulWidget {
  const Dank({super.key});

  @override
  State<Dank> createState() => _DankState();
}

class _DankState extends State<Dank> {
  String imgURL = "";
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    updateDankImg();
  }

  void updateDankImg() async {
    String getImgURL = await FetchMeme.fetchDankMeme();
    setState(() {
      imgURL = getImgURL;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Dank Memes"),
        centerTitle: true,
      ),
      drawer: const SideDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffe0e0e0), width: 0.2),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/logo.png"),
                        radius: 20,
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Text(
                        "UnSad",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.verified,
                        color: Colors.blue,
                        size: 16,
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.more_vert,
                        color: Colors.white,
                        size: 18,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffe0e0e0), width: 0.2),
            ),
            child: isLoading
                ? const SizedBox(
                    height: 400,
                    child: Center(
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  )
                : SizedBox(
                    height: 400,
                    child: Image.network(
                      imgURL,
                    ),
                  ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffe0e0e0), width: 0.2),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.favorite_outline,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Icon(
                        Icons.comment_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          updateDankImg();
                        },
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                              child: Text(
                            "New Meme",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
