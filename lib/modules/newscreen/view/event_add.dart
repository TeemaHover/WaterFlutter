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
        backgroundColor: lightGray,
        appBar: MainAppBar(
          title: "Add",
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Зар оруулах хэсэг",
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 20,
                    vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Untitled Event",
                        style: Theme.of(context).textTheme.bodyMedium),
                    // TextField(
                    //   decoration: InputDecoration(
                    //     border: InputBorder.none,
                    //     hintText: 'Event Description',
                    //   ),
                    // )
                    const Text("TextForm")
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
                  color: white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Оролцох гишүүдийн хязгаар",
                        style: Theme.of(context).textTheme.titleMedium),
                    Row(
                      children: [
                        Text("Гишүүд",
                            style: Theme.of(context).textTheme.labelMedium),
                        // TextField(
                        //   decoration: InputDecoration(
                        //     border: InputBorder.none,
                        //     hintText: 'Event Description',
                        //   ),
                        // )
                        const Text("TextForm")
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
                  color: white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Хөтөлбөрийн урамшуулал",
                        style: Theme.of(context).textTheme.titleMedium),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Урамшуулал",
                            style: Theme.of(context).textTheme.labelMedium),
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
                  color: white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Хөтөлбөрийн үргэлжлэх хугацаа",
                        style: Theme.of(context).textTheme.titleMedium),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text("Эхлэх огноо",
                                style: Theme.of(context).textTheme.labelMedium),
                            const Text("TextField"),
                          ],
                        ),
                        Column(
                          children: [
                            Text("Дуусах огноо",
                                style: Theme.of(context).textTheme.labelMedium),
                            const Text("TextField"),
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
                  color: white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Гүйцэтгэх ажил",
                        style: Theme.of(context).textTheme.titleMedium),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Ажил 1",
                                style: Theme.of(context).textTheme.labelMedium),
                            const Text("TextField"),
                          ],
                        ),
                        const Text("TextField"),
                        MainButton(
                            onPressed: () {},
                            text: "Өөр урамшуулал нэмэх",
                            child: const SizedBox())
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
