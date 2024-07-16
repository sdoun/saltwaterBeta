import 'package:flutter/material.dart';
import '/backend/backend.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _chosenOptionList = [];
  List<String> get chosenOptionList => _chosenOptionList;
  set chosenOptionList(List<String> value) {
    _chosenOptionList = value;
  }

  void addToChosenOptionList(String value) {
    chosenOptionList.add(value);
  }

  void removeFromChosenOptionList(String value) {
    chosenOptionList.remove(value);
  }

  void removeAtIndexFromChosenOptionList(int index) {
    chosenOptionList.removeAt(index);
  }

  void updateChosenOptionListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    chosenOptionList[index] = updateFn(_chosenOptionList[index]);
  }

  void insertAtIndexInChosenOptionList(int index, String value) {
    chosenOptionList.insert(index, value);
  }

  List<WishProductOptionStruct> _chosenOptionStructList = [];
  List<WishProductOptionStruct> get chosenOptionStructList =>
      _chosenOptionStructList;
  set chosenOptionStructList(List<WishProductOptionStruct> value) {
    _chosenOptionStructList = value;
  }

  void addToChosenOptionStructList(WishProductOptionStruct value) {
    chosenOptionStructList.add(value);
  }

  void removeFromChosenOptionStructList(WishProductOptionStruct value) {
    chosenOptionStructList.remove(value);
  }

  void removeAtIndexFromChosenOptionStructList(int index) {
    chosenOptionStructList.removeAt(index);
  }

  void updateChosenOptionStructListAtIndex(
    int index,
    WishProductOptionStruct Function(WishProductOptionStruct) updateFn,
  ) {
    chosenOptionStructList[index] = updateFn(_chosenOptionStructList[index]);
  }

  void insertAtIndexInChosenOptionStructList(
      int index, WishProductOptionStruct value) {
    chosenOptionStructList.insert(index, value);
  }

  String _newProfileImage = '';
  String get newProfileImage => _newProfileImage;
  set newProfileImage(String value) {
    _newProfileImage = value;
  }

  List<String> _carrotImages = [];
  List<String> get carrotImages => _carrotImages;
  set carrotImages(List<String> value) {
    _carrotImages = value;
  }

  void addToCarrotImages(String value) {
    carrotImages.add(value);
  }

  void removeFromCarrotImages(String value) {
    carrotImages.remove(value);
  }

  void removeAtIndexFromCarrotImages(int index) {
    carrotImages.removeAt(index);
  }

  void updateCarrotImagesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    carrotImages[index] = updateFn(_carrotImages[index]);
  }

  void insertAtIndexInCarrotImages(int index, String value) {
    carrotImages.insert(index, value);
  }

  String _fishName = '';
  String get fishName => _fishName;
  set fishName(String value) {
    _fishName = value;
  }

  List<String> _fishes = [];
  List<String> get fishes => _fishes;
  set fishes(List<String> value) {
    _fishes = value;
  }

  void addToFishes(String value) {
    fishes.add(value);
  }

  void removeFromFishes(String value) {
    fishes.remove(value);
  }

  void removeAtIndexFromFishes(int index) {
    fishes.removeAt(index);
  }

  void updateFishesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    fishes[index] = updateFn(_fishes[index]);
  }

  void insertAtIndexInFishes(int index, String value) {
    fishes.insert(index, value);
  }

  int _unReadNoti = 0;
  int get unReadNoti => _unReadNoti;
  set unReadNoti(int value) {
    _unReadNoti = value;
  }

  List<DocumentReference> _unReadChat = [];
  List<DocumentReference> get unReadChat => _unReadChat;
  set unReadChat(List<DocumentReference> value) {
    _unReadChat = value;
  }

  void addToUnReadChat(DocumentReference value) {
    unReadChat.add(value);
  }

  void removeFromUnReadChat(DocumentReference value) {
    unReadChat.remove(value);
  }

  void removeAtIndexFromUnReadChat(int index) {
    unReadChat.removeAt(index);
  }

  void updateUnReadChatAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    unReadChat[index] = updateFn(_unReadChat[index]);
  }

  void insertAtIndexInUnReadChat(int index, DocumentReference value) {
    unReadChat.insert(index, value);
  }

  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  set startDate(DateTime? value) {
    _startDate = value;
  }

  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  set endDate(DateTime? value) {
    _endDate = value;
  }
}
