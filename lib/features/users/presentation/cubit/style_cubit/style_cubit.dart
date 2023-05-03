import 'package:amit_task/features/users/domain/entities/custom_font_style.dart';
import 'package:amit_task/features/users/presentation/cubit/style_cubit/style_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
class StyleCubit extends Cubit<StyleStates> {
  StyleCubit() : super(StyleInitialState());
  static StyleCubit get(context)=>BlocProvider.of(context);
  int currantStyleIndex=0;
  List<CustomFontStyle> styles=[
    CustomFontStyle(name: "aBeeZee", style: GoogleFonts.aBeeZee(),index: 0),
    CustomFontStyle(name: "roboto", style: GoogleFonts.roboto(),index: 1),
    CustomFontStyle(name: "sail", style: GoogleFonts.sail(),index: 2),
    CustomFontStyle(name: "akronim", style: GoogleFonts.akronim(),index: 3),
    CustomFontStyle(name: "zcoolKu", style: GoogleFonts.zcoolKuaiLe(),index: 4),
    CustomFontStyle(name: "farsan", style: GoogleFonts.farsan(),index: 5),
  ];
  changeStyle(index){
    currantStyleIndex=index;
    emit(ChangeStyleState());
  }
}