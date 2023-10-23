import 'package:assignment1/futures.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Futures.getBorder(),
        builder: (BuildContext context, snapshot) {
          return Center(
            child: Container(
              width: 240,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 1, offset: Offset(0, 2))
                  ]),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 240,
                    decoration: const BoxDecoration(
                      // image: DecorationImage(
                      //     image: NetworkImage(snapshot.data?.fact ?? ''),
                      //     fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          snapshot.data?.activity ?? '데이터가 없습니다',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text('${snapshot.data?.participants}'),
                        const SizedBox(
                          height: 8,
                        ),
                        // ElevatedButton(
                        //   style: ButtonStyle(
                        //     backgroundColor:
                        //         MaterialStateProperty.all(Colors.blue),
                        //     shape: MaterialStateProperty.all<
                        //         RoundedRectangleBorder>(
                        //       RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(8.0),
                        //       ),
                        //     ),
                        //   ),
                        //   onPressed: () {},
                        //   child: Text(
                        //     '${snapshot.data?.length ?? '999999'}원 결제하고 등록',
                        //     style: TextStyle(color: Colors.white),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
