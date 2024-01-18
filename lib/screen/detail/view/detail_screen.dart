import 'package:examproject/screen/Home/model/home_model.dart';
import 'package:examproject/screen/Home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  HomeProvider? providerr;
  HomeProvider? providerw;
  @override
  Widget build(BuildContext context) {
    SourcesModel model=ModalRoute.of(context)!.settings.arguments as SourcesModel;
    providerr = context.read<HomeProvider>();
    providerw = context.watch<HomeProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("${model.name}"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/img/logo.png",width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height*0.40,),
              Text("${model.id}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text("${model.description}",style: TextStyle(fontSize: 20),),
              SizedBox(height: 10,),
              Text("Country: ${model.country}",style: TextStyle(fontSize: 20),),
              SizedBox(height: 10,),
              Text("Category: ${model.category}",style: TextStyle(fontSize: 20),),
              SizedBox(height: 10,),
              Text("Language: ${model.language}",style: TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }
}
