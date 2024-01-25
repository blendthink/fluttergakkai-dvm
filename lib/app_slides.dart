import 'package:dvm/slides/agenda01/agenda01_figure_slide.dart';
import 'package:dvm/slides/agenda01/agenda01_fvm_slide.dart';
import 'package:dvm/slides/agenda01/agenda01_logo_slide.dart';
import 'package:dvm/slides/agenda01/agenda01_release_slide.dart';
import 'package:dvm/slides/agenda_slide.dart';
import 'package:dvm/slides/anime_slide.dart';
import 'package:dvm/slides/highlighted_agenda01_slide.dart';
import 'package:dvm/slides/highlighted_agenda02_slide.dart';
import 'package:dvm/slides/highlighted_agenda03_slide.dart';
import 'package:dvm/slides/highlighted_agenda04_slide.dart';
import 'package:dvm/slides/highlighted_agenda05_slide.dart';
import 'package:dvm/slides/intro_slide.dart';
import 'package:dvm/slides/outro_slide.dart';
import 'package:dvm/slides/title_slide.dart';
import 'package:slidex/components.dart';

const appSlides = <SlideWidget>[
  TitleSlide(),
  IntroSlide(),
  AnimeSlide(),
  AgendaSlide(),
  HighlightedAgenda01Slide(),
  Agenda01LogoSlide(),
  Agenda01FvmSlide(),
  Agenda01FigureSlide(),
  Agenda01ReleaseSlide(),
  HighlightedAgenda02Slide(),
  HighlightedAgenda03Slide(),
  HighlightedAgenda04Slide(),
  HighlightedAgenda05Slide(),
  OutroSlide(),
];
