import 'package:dvm/slides/agenda01/agenda01_figure_slide.dart';
import 'package:dvm/slides/agenda01/agenda01_fvm_slide.dart';
import 'package:dvm/slides/agenda01/agenda01_homebrew_install_slide.dart';
import 'package:dvm/slides/agenda01/agenda01_homebrew_slide.dart';
import 'package:dvm/slides/agenda01/agenda01_logo_slide.dart';
import 'package:dvm/slides/agenda01/agenda01_pub_dev_install_slide.dart';
import 'package:dvm/slides/agenda01/agenda01_pub_dev_slide.dart';
import 'package:dvm/slides/agenda01/agenda01_release_slide.dart';
import 'package:dvm/slides/agenda02/agenda02_bff_slide.dart';
import 'package:dvm/slides/agenda02/agenda02_dart3_slide.dart';
import 'package:dvm/slides/agenda04/agenda04_document_page_slide.dart';
import 'package:dvm/slides/agenda04/agenda04_github_project_slide.dart';
import 'package:dvm/slides/agenda04/agenda04_latest_option_slide.dart';
import 'package:dvm/slides/agenda_slide.dart';
import 'package:dvm/slides/anime_slide.dart';
import 'package:dvm/slides/highlighted_agenda01_slide.dart';
import 'package:dvm/slides/highlighted_agenda02_slide.dart';
import 'package:dvm/slides/highlighted_agenda03_slide.dart';
import 'package:dvm/slides/highlighted_agenda04_slide.dart';
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
  Agenda01PubDevSlide(),
  Agenda01PubDevInstallSlide(),
  Agenda01HomebrewSlide(),
  Agenda01HomebrewInstallSlide(),
  HighlightedAgenda02Slide(),
  Agenda02Dart3Slide(),
  Ageda02BffSlide(),
  HighlightedAgenda03Slide(),
  HighlightedAgenda04Slide(),
  Agenda04LatestOptionSlide(),
  Agenda04DocumentPageSlide(),
  Agenda04GithubProjectSlide(),
  OutroSlide(),
];
