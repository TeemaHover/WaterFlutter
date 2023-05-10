import 'package:app/shared/index.dart';
import 'package:flutter/material.dart';

class EventAdd extends StatefulWidget {
  const EventAdd({super.key});

  @override
  State<EventAdd> createState() => _EventAddState();
}

class _EventAddState extends State<EventAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBar(title: "Add"),
        body: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Asd"),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 20,
                    vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: gray,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Untitled text"),
                    // TextField(
                    //   decoration: InputDecoration(
                    //     border: InputBorder.none,
                    //     hintText: 'Event Description',
                    //   ),
                    // )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 20,
                    vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: gray,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Untitled text"),
                    Row(
                      children: const [
                        Text("Start Date"),
                        // TextField(
                        //   decoration: InputDecoration(
                        //     border: InputBorder.none,
                        //     hintText: 'Event Description',
                        //   ),
                        // )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 20,
                    vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: gray,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Untitled text"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Урамшуулал"),
                        // TextField(
                        //   decoration: InputDecoration(
                        //     border: InputBorder.none,
                        //     hintText: 'Event Description',
                        //   ),
                        // )
                        const Text("TextForm"),
                        MainButton(
                            onPressed: () {},
                            text: "",
                            height: 30,
                            child: const SizedBox())
                      ],
                    ),
                    MainButton(
                        onPressed: () {},
                        text: "Өөр урамшуулал нэмэх",
                        child: const SizedBox())
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 20,
                    vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: gray,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Хөтөлөрийн үргэлжлэх хугацаа"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            Text("data"),
                            Text("TextField"),
                          ],
                        ),
                        Column(
                          children: const [
                            Text("data"),
                            Text("TextField"),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 20,
                    vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: gray,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Гүйцэтгэх ажил"),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text("data"),
                            Text("TextField"),
                          ],
                        ),
                        const Text("TextField")
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MainButton(
                  onPressed: () {},
                  text: "Нийтлэх",
                  width: double.infinity,
                  child: const SizedBox())
            ],
          ),
        ));
  }
}
