import 'package:Bloc/bloc/post/post_event.dart';
import 'package:Bloc/bloc/post/post_state.dart';
import 'package:Bloc/utils/enum.dart';
import 'package:bloc/bloc.dart';

import '../../modal/repo/post_repo.dart';

class PostBloc extends Bloc<PostEvent, PostState>{
  PostRepo postRepo = PostRepo();
  PostBloc():super(PostState()){
    on<PostFetched>(postfetch);
  }
  void postfetch(PostFetched event, Emitter<PostState>emit)async{
   await  postRepo.fetchPost().then((value){
      emit(state.copyWith(
        postState: PostStatus.success,
        message: 'success',
        postList:  value,
      ));
    }).onError((error, stackTrace){
      print(error);
      print(stackTrace);
      emit(state.copyWith(
        postState: PostStatus.failure,
        message: 'failure',
      ));
    });
  }
}