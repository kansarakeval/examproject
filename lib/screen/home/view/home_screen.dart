import 'package:examproject/screen/Home/model/home_model.dart';
import 'package:examproject/screen/Home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? providerr;
  HomeProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<HomeProvider>().gethomeData();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<HomeProvider>();
    providerw = context.watch<HomeProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Aaj Tak"),
          centerTitle: true,
        ),
        body: providerw!.homeModel == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: providerw!.homeModel!.sourcesList!.length,
                itemBuilder: (context, index) {
                  SourcesModel a1 = providerw!.homeModel!.sourcesList![index];
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'detail', arguments: a1);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/img/logo.png",
                                width: 100,
                                height: 100,
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 250,
                                child: Text(
                                  "id: ${providerw!.homeModel!.sourcesList![index].id}",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(height: 5,),
                              SizedBox(
                                width: 250,
                                child: Text(
                                  "Name: ${providerw!.homeModel!.sourcesList![index].name}",
                                  style: const TextStyle(fontSize: 20),overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(height: 5,),
                              SizedBox(
                                width: 230,
                                child: Text(
                                  "Description: ${providerw!.homeModel!.sourcesList![index].description}",
                                  style: const TextStyle(
                                    fontSize: 18,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
