import 'package:dvm/slides/agenda_slide.dart';
import 'package:dvm/slides/anime_slide.dart';
import 'package:dvm/slides/highlighted_agenda01_slide.dart';
import 'package:dvm/slides/intro_slide.dart';
import 'package:dvm/slides/title_slide.dart';
import 'package:slidex/components.dart';

const appSlides = <SlideWidget>[
  TitleSlide(),
  IntroSlide(),
  AnimeSlide(),
  AgendaSlide(),
  HighlightedAgenda01Slide(),
];
