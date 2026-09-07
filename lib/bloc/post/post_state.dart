import 'package:Bloc/modal/PostModal.dart';
import 'package:Bloc/utils/enum.dart';
import 'package:equatable/equatable.dart';

class PostState extends Equatable{
  final PostStatus postState;
  final List<PostModal> postList;
  final String message;
  const PostState({
    this.postState = PostStatus.loading,
    this.postList = const<PostModal>[],
    this.message = '',
  });
  PostState copyWith({PostStatus? postState, List<PostModal>?postList, String? message}){
    return PostState(
      postState: postState??this.postState,
      message: message?? this.message,
      postList: postList??this.postList
    );
  }
  @override
  List<Object?>get props => [];
}