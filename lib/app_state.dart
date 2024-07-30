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

  String _searchText = '';
  String get searchText => _searchText;
  set searchText(String value) {
    _searchText = value;
  }

  List<DocumentReference> _carrotPosts = [];
  List<DocumentReference> get carrotPosts => _carrotPosts;
  set carrotPosts(List<DocumentReference> value) {
    _carrotPosts = value;
  }

  void addToCarrotPosts(DocumentReference value) {
    carrotPosts.add(value);
  }

  void removeFromCarrotPosts(DocumentReference value) {
    carrotPosts.remove(value);
  }

  void removeAtIndexFromCarrotPosts(int index) {
    carrotPosts.removeAt(index);
  }

  void updateCarrotPostsAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    carrotPosts[index] = updateFn(_carrotPosts[index]);
  }

  void insertAtIndexInCarrotPosts(int index, DocumentReference value) {
    carrotPosts.insert(index, value);
  }

  List<String> _packageFilter = [];
  List<String> get packageFilter => _packageFilter;
  set packageFilter(List<String> value) {
    _packageFilter = value;
  }

  void addToPackageFilter(String value) {
    packageFilter.add(value);
  }

  void removeFromPackageFilter(String value) {
    packageFilter.remove(value);
  }

  void removeAtIndexFromPackageFilter(int index) {
    packageFilter.removeAt(index);
  }

  void updatePackageFilterAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    packageFilter[index] = updateFn(_packageFilter[index]);
  }

  void insertAtIndexInPackageFilter(int index, String value) {
    packageFilter.insert(index, value);
  }

  List<String> _package2ndFilter = [];
  List<String> get package2ndFilter => _package2ndFilter;
  set package2ndFilter(List<String> value) {
    _package2ndFilter = value;
  }

  void addToPackage2ndFilter(String value) {
    package2ndFilter.add(value);
  }

  void removeFromPackage2ndFilter(String value) {
    package2ndFilter.remove(value);
  }

  void removeAtIndexFromPackage2ndFilter(int index) {
    package2ndFilter.removeAt(index);
  }

  void updatePackage2ndFilterAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    package2ndFilter[index] = updateFn(_package2ndFilter[index]);
  }

  void insertAtIndexInPackage2ndFilter(int index, String value) {
    package2ndFilter.insert(index, value);
  }

  List<String> _package3rdFilter = [];
  List<String> get package3rdFilter => _package3rdFilter;
  set package3rdFilter(List<String> value) {
    _package3rdFilter = value;
  }

  void addToPackage3rdFilter(String value) {
    package3rdFilter.add(value);
  }

  void removeFromPackage3rdFilter(String value) {
    package3rdFilter.remove(value);
  }

  void removeAtIndexFromPackage3rdFilter(int index) {
    package3rdFilter.removeAt(index);
  }

  void updatePackage3rdFilterAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    package3rdFilter[index] = updateFn(_package3rdFilter[index]);
  }

  void insertAtIndexInPackage3rdFilter(int index, String value) {
    package3rdFilter.insert(index, value);
  }

  List<String> _busFishType = [];
  List<String> get busFishType => _busFishType;
  set busFishType(List<String> value) {
    _busFishType = value;
  }

  void addToBusFishType(String value) {
    busFishType.add(value);
  }

  void removeFromBusFishType(String value) {
    busFishType.remove(value);
  }

  void removeAtIndexFromBusFishType(int index) {
    busFishType.removeAt(index);
  }

  void updateBusFishTypeAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    busFishType[index] = updateFn(_busFishType[index]);
  }

  void insertAtIndexInBusFishType(int index, String value) {
    busFishType.insert(index, value);
  }

  List<String> _busExtraFilter = [];
  List<String> get busExtraFilter => _busExtraFilter;
  set busExtraFilter(List<String> value) {
    _busExtraFilter = value;
  }

  void addToBusExtraFilter(String value) {
    busExtraFilter.add(value);
  }

  void removeFromBusExtraFilter(String value) {
    busExtraFilter.remove(value);
  }

  void removeAtIndexFromBusExtraFilter(int index) {
    busExtraFilter.removeAt(index);
  }

  void updateBusExtraFilterAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    busExtraFilter[index] = updateFn(_busExtraFilter[index]);
  }

  void insertAtIndexInBusExtraFilter(int index, String value) {
    busExtraFilter.insert(index, value);
  }

  List<String> _busArea = [];
  List<String> get busArea => _busArea;
  set busArea(List<String> value) {
    _busArea = value;
  }

  void addToBusArea(String value) {
    busArea.add(value);
  }

  void removeFromBusArea(String value) {
    busArea.remove(value);
  }

  void removeAtIndexFromBusArea(int index) {
    busArea.removeAt(index);
  }

  void updateBusAreaAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    busArea[index] = updateFn(_busArea[index]);
  }

  void insertAtIndexInBusArea(int index, String value) {
    busArea.insert(index, value);
  }

  List<String> _busTime = [];
  List<String> get busTime => _busTime;
  set busTime(List<String> value) {
    _busTime = value;
  }

  void addToBusTime(String value) {
    busTime.add(value);
  }

  void removeFromBusTime(String value) {
    busTime.remove(value);
  }

  void removeAtIndexFromBusTime(int index) {
    busTime.removeAt(index);
  }

  void updateBusTimeAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    busTime[index] = updateFn(_busTime[index]);
  }

  void insertAtIndexInBusTime(int index, String value) {
    busTime.insert(index, value);
  }
}
