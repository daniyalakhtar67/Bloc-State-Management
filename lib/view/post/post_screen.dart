import 'package:Bloc/bloc/post/post_bloc.dart';
import 'package:Bloc/bloc/post/post_event.dart';
import 'package:Bloc/bloc/post/post_state.dart';
import 'package:Bloc/utils/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  void initState(){
    super.initState();
    context.read<PostBloc>().add(PostFetched());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Screen'),
        centerTitle: true,
      ),
      body: BlocBuilder<PostBloc, PostState>(
          builder: (context,status){
            switch(status.postState){
              case PostStatus.loading:return CircularProgressIndicator();
              case PostStatus.success: return ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index){
                    final item = status.postList[index];
                    return ListTile(
                      leading: Text(item.id.toString()),
                      title: Text(item.email.toString()),
                      subtitle: Text(item.body.toString()),
                    );
                  });
              case PostStatus.failure:return Center(child: Text(status.message.toString()));
            }

      }),
    );
  }
}
