// Dart
import 'dart:async';

// Flutter
import 'package:flutter/foundation.dart';
import 'package:songtube/internal/models/enums.dart';

// Internal Models
import 'package:songtube/internal/models/metadata.dart';
import 'package:songtube/internal/youtube/downloader.dart';
import 'package:songtube/internal/ffmpeg/converter.dart';

// Packages
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class DownloadInfoSet {

  // Streams
  StreamController<String> currentAction;

  // Classes
  MediaMetaData metadata;
  Video videoDetails;
  StreamManifest streamManifest;
  Downloader downloader;
  Converter converter;

  // Variables
  int videoIndex;
  String downloadPath;
  DownloadType downloadType;
  FFmpegArgs convertFormat;
  bool downloadFinished = false;
  List audioModifiers;

  DownloadInfoSet({
    @required this.currentAction,
    @required this.videoDetails,
    @required this.streamManifest,
    @required this.metadata,
    @required this.downloadType,
    @required this.convertFormat,
    @required this.downloadPath,
    @required this.audioModifiers,
    this.videoIndex
  }) {
    downloader = new Downloader();
    converter = new Converter();
  }
  
}