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
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/img/logo.png",width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height*0.40,),
              Text("${model.id}",style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),
              Text("${model.description}",style: const TextStyle(fontSize: 20),),
              const SizedBox(height: 10,),
              Text("Country: ${model.country}",style: const TextStyle(fontSize: 20),),
              const SizedBox(height: 10,),
              Text("Category: ${model.category}",style: const TextStyle(fontSize: 20),),
              const SizedBox(height: 10,),
              Text("Language: ${model.language}",style: const TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }
}
