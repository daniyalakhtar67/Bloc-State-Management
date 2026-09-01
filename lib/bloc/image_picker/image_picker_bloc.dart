import 'package:Bloc/bloc/image_picker/image_picker_event.dart';
import 'package:Bloc/bloc/image_picker/image_picker_state.dart';
import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/image_picker_utils.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState>{
  final ImagePickerUtils  imagePickerUtils;
   ImagePickerBloc(this.imagePickerUtils):super(ImagePickerState()){
     on<CameraCapture>(cameracapture);
     on<ImageCapture>(imagecapture);
   }
   void cameracapture (CameraCapture event, Emitter<ImagePickerState>emit)async{
     XFile? file = await imagePickerUtils.CameraImage();
     emit(state.copyWith(file: file));
   }
   void imagecapture (ImageCapture event,Emitter<ImagePickerState>emit)async{
     XFile? file = await imagePickerUtils.galleryImage();
     emit(state.copyWith(file: file));
   }
  }