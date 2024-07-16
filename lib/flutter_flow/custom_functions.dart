import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

List<String>? sW1stFilterBottomsheet(
  bool isSW,
  bool isDock,
  bool isTetra,
  bool isShift,
) {
  List<String> resultString = [];
  if (isSW) {
    resultString.add('방파제');
  }
  if (isDock) {
    resultString.add('선착장');
  }
  if (isTetra) {
    resultString.add('외향테트라');
  }
  if (isShift) {
    resultString.add('외향석축');
  }
  return resultString;
}

List<String>? sW2ndFilterBottomsheet(
  bool istoilet,
  bool isrestaurant,
  bool isshop,
  bool isbed,
) {
  List<String> amenresult = [];

  if (istoilet) {
    amenresult.add('화장실');
  }

  if (isrestaurant) {
    amenresult.add('식당');
  }

  if (isshop) {
    amenresult.add('매점');
  }

  if (isbed) {
    amenresult.add('숙소');
  }

  return amenresult;
}

List<String>? sW3rdFilterBottomsheet(
  bool carcamp,
  bool cancook,
  bool streetlight,
) {
  List<String> convinresult = [];
  if (carcamp) {
    convinresult.add('캠핑가능');
  }

  if (cancook) {
    convinresult.add('취사가능');
  }

  if (streetlight) {
    convinresult.add('야간가로등');
  }

  return convinresult;
}

List<String> carrotPostCategories(String postCategory) {
  List<String> result = [];
  result.add('전체');
  result.add(postCategory);

  return result;
}

List<String> carrotChatParticipant(
  String currentUser,
  String sellerId,
) {
  List<String> result = [];
  result.add(currentUser);
  result.add(sellerId);

  return result;
}

List<dynamic>? fcsSkyForTommorow(
  List<dynamic>? fcstList,
  String basedate,
  int datePlus,
) {
  int tomorrow = int.parse(basedate) + datePlus;

  for (var item in fcstList!) {
    if (item["fcstDate"] == tomorrow.toString() && item["category"] == 'SKY') {
      return [item["fcstValue"]];
    }
  }
  return null;
}

int datetimeToDate(String datetime) {
  DateTime dateTime = DateTime.parse(datetime);

  // 문자열 길이를 10으로 만들기
  String formattedDateTime = dateTime.toString().substring(0, 10);

  // 문자열에서 '-' 제거하기
  formattedDateTime = formattedDateTime.replaceAll('-', '');

  // 문자열을 int 값으로 변환하여 반환
  return int.parse(formattedDateTime);
}

int datetimeToTime(String dateTimeString) {
  DateTime dateTime = DateTime.parse(dateTimeString);
  int hour = dateTime.hour;
  hour = hour * 100;

  return hour;
}

String vecToString(String vecString) {
  final windDirectionList = [
    'N',
    'NNE',
    'NE',
    'ENE',
    'E',
    'ESE',
    'SE',
    'SSE',
    'S',
    'SSW',
    'SW',
    'WSW',
    'W',
    'WNW',
    'NW',
    'NNW',
    'N',
  ];

  double vec = double.parse(vecString);
  vec = (vec + 22.5 * 0.5) / 22.5;
  int result = vec.toInt();

  String resultString = windDirectionList[result];

  return resultString;
}

String wrttempFromJson(dynamic jsonItem) {
  if (jsonItem != null) {
    if (jsonItem.containsKey('wtr_tmp')) {
      return jsonItem['wtr_tmp'];
    } else {
      return ('wtr_tmp 키가 없거나 double 타입이 아닙니다.');
    }
  }
  return ('서버 응답없음');
}

List<String>? ocean1stFilterBottomsheet(
  bool isOcean,
  bool isRock,
) {
  List<String> resultString = [];
  if (isOcean) {
    resultString.add('해변');
  }
  if (isRock) {
    resultString.add('갯바위');
  }

  return resultString;
}

dynamic findItemFromStacdeLay1(
  List<dynamic>? wtrTmpJsonList,
  String staCode,
) {
  for (var item in wtrTmpJsonList!) {
    if (item["sta_cde"] == staCode) {
      return item;
    }
  }
  return null;
}

List<String>? ocean2ndFilterBottomsheet(
  bool istoilet,
  bool isrestaurant,
  bool isshop,
  bool isbed,
  bool fishingShop,
) {
  List<String> amenresult = [];

  if (istoilet) {
    amenresult.add('화장실');
  }

  if (isrestaurant) {
    amenresult.add('식당');
  }

  if (isshop) {
    amenresult.add('매점');
  }

  if (isbed) {
    amenresult.add('숙소');
  }
  if (fishingShop) {
    amenresult.add('낚시방');
  }

  return amenresult;
}

dynamic findItemFromStacdeLay2(
  List<dynamic>? wtrTmpJsonList,
  String staCode,
) {
  for (var item in wtrTmpJsonList!) {
    if (item['sta_cde'] == staCode) {
      if (item['obs_lay'] == 2) {
        return item;
      }
    }
  }
  return null;
}

dynamic findItemFromStacdeLay3(
  List<dynamic> wtrTmpJsonList,
  String staCode,
) {
  for (var item in wtrTmpJsonList!) {
    if (item['sta_cde'] == staCode) {
      if (item['obs_lay'] == '3') {
        return item;
      }
    }
  }
  return null;
}

List<String>? park1stFilterBottomsheet(
  bool notFree,
  bool isFree,
  bool nature,
  bool unnature,
) {
  List<String> resultString = [];
  if (notFree) {
    if (isFree) {
    } else {
      resultString.add('유료');
    }
  } else if (isFree) {
    if (notFree) {
    } else {
      resultString.add('무료');
    }
  }
  if (nature) {
    if (unnature) {
    } else {
      resultString.add('자연식');
    }
  } else if (unnature) {
    if (nature) {
    } else {
      resultString.add('입어식');
    }
  }

  return resultString;
}

List<String>? pension1stFilterBottomsheet(
  bool isLodge,
  bool isPension,
) {
  List<String> resultString = [];
  if (isLodge) {
    resultString.add('민박형');
  }
  if (isPension) {
    resultString.add('펜션형');
  }

  return resultString;
}

List<String>? pension2ndFilterBottomsheet(
  bool arroundFishing,
  bool isrestaurant,
  bool isshop,
  bool fishingShop,
) {
  List<String> amenresult = [];

  if (arroundFishing) {
    amenresult.add('주변낚시터');
  }

  if (isrestaurant) {
    amenresult.add('식당');
  }

  if (isshop) {
    amenresult.add('매점');
  }

  if (fishingShop) {
    amenresult.add('낚시방');
  }

  return amenresult;
}

int hourForFcst(int datetimeHour) {
  if (datetimeHour >= 2300) {
    return 2300;
  } else if (datetimeHour >= 2000) {
    return 2000;
  } else if (datetimeHour >= 1700) {
    return 1700;
  } else if (datetimeHour >= 1400) {
    return 1400;
  } else if (datetimeHour >= 1100) {
    return 1100;
  } else if (datetimeHour >= 800) {
    return 800;
  } else if (datetimeHour >= 500) {
    return 500;
  } else if (datetimeHour >= 200) {
    return 200;
  } else {
    return 2300;
  }
}

List<String>? pension3rdFilterBottomsheet(
  bool meal,
  bool ship,
  bool ocean,
  bool lent,
) {
  List<String> amenresult = [];

  if (meal) {
    amenresult.add('식사제공');
  }

  if (ship) {
    amenresult.add('낚시배및좌대 이용가능');
  }

  if (ocean) {
    amenresult.add('해변물놀이가능');
  }

  if (lent) {
    amenresult.add('낚시대 대여');
  }

  return amenresult;
}

List<String> skyToImageLink(String? fcstSkyString) {
  List<String> resultImage = [];

  int? fcstSky;
  if (fcstSkyString != null) {
    fcstSky = int.tryParse(fcstSkyString);
  }

  if (fcstSky == null) {
    resultImage.add(
        'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%82%A0%EC%94%A8%EC%9E%84%EC%8B%9C%2F%EB%A7%91%EC%9D%8C2.png?alt=media&token=2615f6d1-aa8f-41b0-a37c-530abd25a581');
    return resultImage;
  }

  if (0 <= fcstSky && fcstSky <= 5) {
    resultImage.add(
        'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%82%A0%EC%94%A8%EC%9E%84%EC%8B%9C%2F%EB%A7%91%EC%9D%8C2.png?alt=media&token=2615f6d1-aa8f-41b0-a37c-530abd25a581');
  } else if (6 <= fcstSky && fcstSky <= 8) {
    resultImage.add(
        'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%82%A0%EC%94%A8%EC%9E%84%EC%8B%9C%2F%EB%A7%91%EA%B3%A0%ED%9D%90%EB%A6%BC.png?alt=media&token=613a6068-5526-49c6-a497-1113bcbda715');
  } else if (9 <= fcstSky && fcstSky <= 10) {
    resultImage.add(
        'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%82%A0%EC%94%A8%EC%9E%84%EC%8B%9C%2F%ED%9D%90%EB%A6%BC.png?alt=media&token=6cde332b-5672-4ae7-8b04-4fcd7558a51a');
  }

  return resultImage;
}

List<dynamic>? fcsTmpForTommorow(
  List<dynamic>? fcstList,
  String basedate,
  int datePlus,
) {
  int tomorrow = int.parse(basedate) + datePlus;

  for (var item in fcstList!) {
    if (item["fcstDate"] == tomorrow.toString() && item["category"] == 'TMP') {
      return [item["fcstValue"]];
    }
  }
  return null;
}

List<String>? park2ndFilterBottomsheet(
  bool istoilet,
  bool isrestaurant,
  bool isshop,
  bool fishingShop,
) {
  List<String> amenresult = [];

  if (istoilet) {
    amenresult.add('화장실');
  }

  if (isrestaurant) {
    amenresult.add('식당');
  }

  if (isshop) {
    amenresult.add('매점');
  }

  if (fishingShop) {
    amenresult.add('낚시방');
  }

  return amenresult;
}

dynamic tidHlCode(dynamic tidListItem) {
  return tidListItem["hl_code"];
}

List<String>? park3rdFilterBottomsheet(
  bool lent,
  bool toolShop,
) {
  List<String> convinresult = [];
  if (lent) {
    convinresult.add('낚시장비 대여');
  }

  if (toolShop) {
    convinresult.add('낚시장비 판매');
  }

  return convinresult;
}

String midFcstToImage(String? fcstSkyString) {
  if (fcstSkyString == null) {
    return 'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%82%A0%EC%94%A8%EC%9E%84%EC%8B%9C%2F%EB%A7%91%EC%9D%8C2.png?alt=media&token=2615f6d1-aa8f-41b0-a37c-530abd25a581';
  }

  if (fcstSkyString == '맑음') {
    return 'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%82%A0%EC%94%A8%EC%9E%84%EC%8B%9C%2F%EB%A7%91%EC%9D%8C2.png?alt=media&token=2615f6d1-aa8f-41b0-a37c-530abd25a581';
  } else if (fcstSkyString == '구르많음') {
    return 'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%82%A0%EC%94%A8%EC%9E%84%EC%8B%9C%2F%EB%A7%91%EA%B3%A0%ED%9D%90%EB%A6%BC.png?alt=media&token=613a6068-5526-49c6-a497-1113bcbda715';
  } else if (fcstSkyString == '흐림') {
    return 'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%82%A0%EC%94%A8%EC%9E%84%EC%8B%9C%2F%ED%9D%90%EB%A6%BC.png?alt=media&token=6cde332b-5672-4ae7-8b04-4fcd7558a51a';
  } else if (fcstSkyString == '흐리고 비') {
    return 'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%82%A0%EC%94%A8%EC%9E%84%EC%8B%9C%2F%EB%B9%84.png?alt=media&token=b37e7a43-8d96-4592-904b-566249060f92';
  } else {
    return 'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%82%A0%EC%94%A8%EC%9E%84%EC%8B%9C%2F%EB%A7%91%EC%9D%8C2.png?alt=media&token=2615f6d1-aa8f-41b0-a37c-530abd25a581';
  }
}

String dateTimeToHourMinute(String datetime) {
  DateTime _currentDateTime = DateTime.parse(datetime);
  int hour = _currentDateTime.hour;
  int minute = _currentDateTime.minute;

  return '$hour:$minute';
}

dynamic tidTime(dynamic tidListItem) {
  return [tidListItem["tph_time"]];
}

dynamic tidLevel(dynamic tidListItem) {
  return [tidListItem["tph_level"]];
}

int indexMinus1(int itemIndex) {
  return itemIndex - 1;
}

bool isNullInListString(List<String> list) {
  List<String> myList = list;
  bool hasEmptyValues =
      myList.any((element) => element == null || element.isEmpty);

  return hasEmptyValues;
}

String vecStringToImage(String vecString) {
  if (vecString == null) {
    return 'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%B0%94%EB%9E%8C%EB%B0%A9%ED%96%A5%2FWSW(%EC%84%9C%EB%82%A8%EC%84%9C).jpg?alt=media&token=316b7100-77d5-43f7-a851-4bdbca2a9805';
  }
  if (vecString == 'E') {
    return 'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%B0%94%EB%9E%8C%EB%B0%A9%ED%96%A5%2FE(%EB%8F%99).jpg?alt=media&token=70d774a6-73ef-43f5-a5ba-0e549991babe';
  }
  if (vecString == 'ENE') {
    return 'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%B0%94%EB%9E%8C%EB%B0%A9%ED%96%A5%2FENE(%EB%8F%99%EB%B6%81%EB%8F%99).jpg?alt=media&token=60b5671b-8545-447f-8f53-9c5ddcc8d5b4';
  }
  if (vecString == 'ESE') {
    return 'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%B0%94%EB%9E%8C%EB%B0%A9%ED%96%A5%2FESE(%EB%8F%99%EB%82%A8%EB%8F%99).jpg?alt=media&token=6769b017-2eff-498e-9652-9e4d79c19e65';
  }
  if (vecString == 'N') {
    return 'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%B0%94%EB%9E%8C%EB%B0%A9%ED%96%A5%2FN(%EB%B6%81).jpg?alt=media&token=c1865cbd-d5e2-4f22-9a73-47f0800f13de';
  }
  if (vecString == 'NE') {
    return 'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%B0%94%EB%9E%8C%EB%B0%A9%ED%96%A5%2FNE(%EB%B6%81%EB%8F%99).jpg?alt=media&token=4ddfb640-878d-4a6d-8321-7ef6681ea4d2';
  }
  if (vecString == 'NW') {
    return 'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%B0%94%EB%9E%8C%EB%B0%A9%ED%96%A5%2FNE(%EB%B6%81%EC%84%9C).jpg?alt=media&token=7572cfb7-9ffc-420e-a750-ac49f4f82ab2';
  }
  if (vecString == 'NNE') {
    return 'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%B0%94%EB%9E%8C%EB%B0%A9%ED%96%A5%2FNNE(%EB%B6%81%EB%B6%81%EB%8F%99).jpg?alt=media&token=d6145f9b-d182-4a37-a07e-7d02554b0855';
  }
  if (vecString == 'NNW') {
    return 'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%B0%94%EB%9E%8C%EB%B0%A9%ED%96%A5%2FNNW(%EB%B6%81%EB%B6%81%EC%84%9C).jpg?alt=media&token=54c6a279-2de9-45c0-a593-84866ca0d8ae';
  }
  if (vecString == 'S') {
    return 'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%B0%94%EB%9E%8C%EB%B0%A9%ED%96%A5%2FS(%EB%82%A8).jpg?alt=media&token=06df126b-f8ed-4f87-b6cb-4556360721a8';
  }
  if (vecString == 'SE') {
    return 'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%B0%94%EB%9E%8C%EB%B0%A9%ED%96%A5%2FSE(%EB%82%A8%EB%8F%99).jpg?alt=media&token=9ee8ea85-ff95-4a42-af82-f5589a3309ed';
  }
  if (vecString == 'SSE') {
    return 'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%B0%94%EB%9E%8C%EB%B0%A9%ED%96%A5%2FSSE(%EB%82%A8%EB%82%A8%EB%8F%99).jpg?alt=media&token=44259360-74c1-499b-9a39-aa460760a4a5';
  }
  if (vecString == 'SW') {
    return 'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%B0%94%EB%9E%8C%EB%B0%A9%ED%96%A5%2FSW(%EB%82%A8%EC%84%9C).jpg?alt=media&token=782334e2-4be8-4ab0-b872-925af6db6c45';
  }
  if (vecString == 'SSW') {
    return 'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%B0%94%EB%9E%8C%EB%B0%A9%ED%96%A5%2FSSW(%EB%82%A8%EB%82%A8%EC%84%9C).jpg?alt=media&token=49640f1d-e5ff-421b-8133-1d158179c50c';
  }
  if (vecString == 'W') {
    return 'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%B0%94%EB%9E%8C%EB%B0%A9%ED%96%A5%2FW(%EC%84%9C).jpg?alt=media&token=c04cbd96-7bd6-4088-a53b-0ea47af04bb4';
  }
  if (vecString == 'WNW') {
    return 'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%B0%94%EB%9E%8C%EB%B0%A9%ED%96%A5%2FWNW(%EC%84%9C%EB%B6%81%EC%84%9C).jpg?alt=media&token=4ccaa5e1-fff3-427b-94c3-0e481916598c';
  }
  if (vecString == 'WSW') {
    return 'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%B0%94%EB%9E%8C%EB%B0%A9%ED%96%A5%2FWSW(%EC%84%9C%EB%82%A8%EC%84%9C).jpg?alt=media&token=316b7100-77d5-43f7-a851-4bdbca2a9805';
  } else {
    return 'https://firebasestorage.googleapis.com/v0/b/salt-water-beta-ver1-4dujup.appspot.com/o/%EB%B0%94%EB%9E%8C%EB%B0%A9%ED%96%A5%2FWSW(%EC%84%9C%EB%82%A8%EC%84%9C).jpg?alt=media&token=316b7100-77d5-43f7-a851-4bdbca2a9805';
  }
}

TidFcstStruct? tidStructFromJson(dynamic tidFcst) {
  String tidDateTime = tidFcst["tph_time"];
  String tidCode = tidFcst["hl_code"];
  String tidLevel = tidFcst["tph_level"];
  DateTime parsedDateTime = DateTime.parse(tidDateTime);
  int tidTime =
      parsedDateTime.hour * 100 + parsedDateTime.minute + parsedDateTime.second;

  String HourString = parsedDateTime.hour.toString();
  String minuteString = parsedDateTime.minute.toString();
  String timeString = '$HourString 시 $minuteString 분';

  TidFcstStruct tidStruct = TidFcstStruct();
  tidStruct.time = tidTime;
  tidStruct.tidLevel = tidLevel;
  tidStruct.timeString = timeString;

  return tidStruct;
}

String? midFcstCodeTrans(String midFcstCode) {
  String result = '';
  result = midFcstCode.substring(0, 4) + '0000';
  return result;
}

List<DocumentReference> chatParticipants(
  DocumentReference currentUser,
  DocumentReference seller,
) {
  List<DocumentReference> listOfUser = [currentUser] + [seller];

  return listOfUser;
}
