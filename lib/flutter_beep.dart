import 'dart:async';

import 'package:flutter/services.dart';
import 'dart:io' show Platform;

class FlutterBeep {
  static const MethodChannel _channel = const MethodChannel('flutter_beep');

  static Future<void> playSysSound(int soundId) async {
    var args = <String, dynamic>{"soundId": soundId};
    if (Platform.isAndroid) await _channel.invokeMethod('stopSysSound');
    return _channel.invokeMethod('playSysSound', args);
  }

  static Future<void> beep([bool success = true]) {
    var soundId =
        (Platform.isAndroid) ? (success ? 24 : 25) : (success ? 1256 : 1257);
    return playSysSound(soundId);
  }
}

class AndroidSoundIDs {
  static const int TONE_CDMA_ABBR_ALERT = 97,
      TONE_CDMA_ABBR_INTERCEPT = 37,
      TONE_CDMA_ABBR_REORDER = 39,
      TONE_CDMA_ALERT_AUTOREDIAL_LITE = 87,
      TONE_CDMA_ALERT_CALL_GUARD = 93,
      TONE_CDMA_ALERT_INCALL_LITE = 91,
      TONE_CDMA_ALERT_NETWORK_LITE = 86,
      TONE_CDMA_ANSWER = 42,
      TONE_CDMA_CALLDROP_LITE = 95,
      TONE_CDMA_CALL_SIGNAL_ISDN_INTERGROUP = 46,
      TONE_CDMA_CALL_SIGNAL_ISDN_NORMAL = 45,
      TONE_CDMA_CALL_SIGNAL_ISDN_PAT3 = 48,
      TONE_CDMA_CALL_SIGNAL_ISDN_PAT5 = 50,
      TONE_CDMA_CALL_SIGNAL_ISDN_PAT6 = 51,
      TONE_CDMA_CALL_SIGNAL_ISDN_PAT7 = 52,
      TONE_CDMA_CALL_SIGNAL_ISDN_PING_RING = 49,
      TONE_CDMA_CALL_SIGNAL_ISDN_SP_PRI = 47,
      TONE_CDMA_CONFIRM = 41,
      TONE_CDMA_DIAL_TONE_LITE = 34,
      TONE_CDMA_EMERGENCY_RINGBACK = 92,
      TONE_CDMA_HIGH_L = 53,
      TONE_CDMA_HIGH_PBX_L = 71,
      TONE_CDMA_HIGH_PBX_SLS = 80,
      TONE_CDMA_HIGH_PBX_SS = 74,
      TONE_CDMA_HIGH_PBX_SSL = 77,
      TONE_CDMA_HIGH_PBX_S_X4 = 83,
      TONE_CDMA_HIGH_SLS = 65,
      TONE_CDMA_HIGH_SS = 56,
      TONE_CDMA_HIGH_SSL = 59,
      TONE_CDMA_HIGH_SS_2 = 62,
      TONE_CDMA_HIGH_S_X4 = 68,
      TONE_CDMA_INTERCEPT = 36,
      TONE_CDMA_KEYPAD_VOLUME_KEY_LITE = 89,
      TONE_CDMA_LOW_L = 55,
      TONE_CDMA_LOW_PBX_L = 73,
      TONE_CDMA_LOW_PBX_SLS = 82,
      TONE_CDMA_LOW_PBX_SS = 76,
      TONE_CDMA_LOW_PBX_SSL = 79,
      TONE_CDMA_LOW_PBX_S_X4 = 85,
      TONE_CDMA_LOW_SLS = 67,
      TONE_CDMA_LOW_SS = 58,
      TONE_CDMA_LOW_SSL = 61,
      TONE_CDMA_LOW_SS_2 = 64,
      TONE_CDMA_LOW_S_X4 = 70,
      TONE_CDMA_MED_L = 54,
      TONE_CDMA_MED_PBX_L = 72,
      TONE_CDMA_MED_PBX_SLS = 81,
      TONE_CDMA_MED_PBX_SS = 75,
      TONE_CDMA_MED_PBX_SSL = 78,
      TONE_CDMA_MED_PBX_S_X4 = 84,
      TONE_CDMA_MED_SLS = 66,
      TONE_CDMA_MED_SS = 57,
      TONE_CDMA_MED_SSL = 60,
      TONE_CDMA_MED_SS_2 = 63,
      TONE_CDMA_MED_S_X4 = 69,
      TONE_CDMA_NETWORK_BUSY = 40,
      TONE_CDMA_NETWORK_BUSY_ONE_SHOT = 96,
      TONE_CDMA_NETWORK_CALLWAITING = 43,
      TONE_CDMA_NETWORK_USA_RINGBACK = 35,
      TONE_CDMA_ONE_MIN_BEEP = 88,
      TONE_CDMA_PIP = 44,
      TONE_CDMA_PRESSHOLDKEY_LITE = 90,
      TONE_CDMA_REORDER = 38,
      TONE_CDMA_SIGNAL_OFF = 98,
      TONE_CDMA_SOFT_ERROR_LITE = 94,
      TONE_DTMF_0 = 0,
      TONE_DTMF_1 = 1,
      TONE_DTMF_2 = 2,
      TONE_DTMF_3 = 3,
      TONE_DTMF_4 = 4,
      TONE_DTMF_5 = 5,
      TONE_DTMF_6 = 6,
      TONE_DTMF_7 = 7,
      TONE_DTMF_8 = 8,
      TONE_DTMF_9 = 9,
      TONE_DTMF_A = 12,
      TONE_DTMF_B = 13,
      TONE_DTMF_C = 14,
      TONE_DTMF_D = 15,
      TONE_DTMF_P = 11,
      TONE_DTMF_S = 10,
      TONE_PROP_ACK = 25,
      TONE_PROP_BEEP = 24,
      TONE_PROP_BEEP2 = 28,
      TONE_PROP_NACK = 26,
      TONE_PROP_PROMPT = 27,
      TONE_SUP_BUSY = 17,
      TONE_SUP_CALL_WAITING = 22,
      TONE_SUP_CONFIRM = 32,
      TONE_SUP_CONGESTION = 18,
      TONE_SUP_CONGESTION_ABBREV = 31,
      TONE_SUP_DIAL = 16,
      TONE_SUP_ERROR = 21,
      TONE_SUP_INTERCEPT = 29,
      TONE_SUP_INTERCEPT_ABBREV = 30,
      TONE_SUP_PIP = 33,
      TONE_SUP_RADIO_ACK = 19,
      TONE_SUP_RADIO_NOTAVAIL = 20,
      TONE_SUP_RINGTONE = 23;
}

// ignore: camel_case_types
class iOSSoundIDs {
  static const MailReceived = 1000,
      MailSent = 1001,
      VoicemailReceived = 1002,
      SMSReceived = 1003,
      SMSSent1 = 1004,
      CalendarAlert = 1005,
      LowPower = 1006,
      SMSReceived_Alert1 = 1007,
      SMSReceived_Alert2 = 1008,
      SMSReceived_Alert3 = 1009,
      SMSReceived_Alert4 = 1010,
      SMSReceived_Vibrate = 1011,
      SMSReceived_Alert5 = 1012,
      SMSReceived_Alert6 = 1013,
      SMSReceived_Alert7 = 1014,
      Voicemail = 1015,
      SMSSent2 = 1016,
      SMSReceived_Alert8 = 1020,
      SMSReceived_Alert9 = 1021,
      SMSReceived_Alert10 = 1022,
      SMSReceived_Alert11 = 1023,
      SMSReceived_Alert12 = 1024,
      SMSReceived_Alert13 = 1025,
      SMSReceived_Alert14 = 1026,
      SMSReceived_Alert15 = 1027,
      SMSReceived_Alert16 = 1028,
      SMSReceived_Alert17 = 1029,
      SMSReceived_Alert18 = 1030,
      SMSReceived_Alert19 = 1031,
      SMSReceived_Alert20 = 1032,
      SMSReceived_Alert21 = 1033,
      SMSReceived_Alert22 = 1034,
      SMSReceived_Alert23 = 1035,
      SMSReceived_Alert24 = 1036,
      USSDAlert = 1050,
      SIMToolkitTone1 = 1051,
      SIMToolkitTone2 = 1052,
      SIMToolkitTone3 = 1053,
      SIMToolkitTone4 = 1054,
      SIMToolkitTone5 = 1055,
      PINKeyPressed = 1057,
      AudioToneBusy = 1070,
      AudioToneCongestion = 1071,
      AudioTonePathAcknowledge = 1072,
      AudioToneError = 1073,
      AudioToneCallWaiting = 1074,
      AudioToneKey2 = 1075,
      ScreenLocked = 1100,
      ScreenUnlocked = 1101,
      FailedUnlock = 1102,
      KeyPressed1 = 1103,
      KeyPressed2 = 1104,
      KeyPressed3 = 1105,
      ConnectedToPower = 1106,
      RingerSwitchIndication = 1107,
      CameraShutter = 1108,
      ShakeToShuffle = 1109,
      JBL_Begin = 1110,
      JBL_Confirm = 1111,
      JBL_Cancel = 1112,
      BeginRecording = 1113,
      EndRecording = 1114,
      JBL_Ambiguous = 1115,
      JBL_NoMatch = 1116,
      BeginVideoRecording = 1117,
      EndVideoRecording = 1118,
      VCInvitationAccepted = 1150,
      VCRinging = 1151,
      VCEnded = 1152,
      VCCallWaiting = 1153,
      VCCallUpgrade = 1154,
      TouchTone1 = 1200,
      TouchTone2 = 1201,
      TouchTone3 = 1202,
      TouchTone4 = 1203,
      TouchTone5 = 1204,
      TouchTone6 = 1205,
      TouchTone7 = 1206,
      TouchTone8 = 1207,
      TouchTone9 = 1208,
      TouchTone10 = 1209,
      TouchTone11 = 1210,
      TouchTone12 = 1211,
      Headset_StartCall = 1254,
      Headset_Redial = 1255,
      Headset_AnswerCall = 1256,
      Headset_EndCall = 1257,
      Headset_CallWaitingActions = 1258,
      Headset_TransitionEnd = 1259,
      SystemSoundPreview1 = 1300,
      SystemSoundPreview2 = 1301,
      SystemSoundPreview3 = 1302,
      SystemSoundPreview4 = 1303,
      SystemSoundPreview5 = 1304,
      SystemSoundPreview6 = 1305,
      KeyPressClickPreview = 1306,
      SMSReceived_Selection1 = 1307,
      SMSReceived_Selection2 = 1308,
      SMSReceived_Selection3 = 1309,
      SMSReceived_Selection4 = 1310,
      SMSReceived_Vibrate2 = 1311,
      SMSReceived_Selection5 = 1312,
      SMSReceived_Selection6 = 1313,
      SMSReceived_Selection7 = 1314,
      SystemSoundPreview = 1315,
      SMSReceived_Selection8 = 1320,
      SMSReceived_Selection9 = 1321,
      SMSReceived_Selection10 = 1322,
      SMSReceived_Selection11 = 1323,
      SMSReceived_Selection12 = 1324,
      SMSReceived_Selection13 = 1325,
      SMSReceived_Selection14 = 1326,
      SMSReceived_Selection15 = 1327,
      SMSReceived_Selection16 = 1328,
      SMSReceived_Selection17 = 1329,
      SMSReceived_Selection18 = 1330,
      SMSReceived_Selection19 = 1331,
      SMSReceived_Selection20 = 1332,
      SMSReceived_Selection21 = 1333,
      SMSReceived_Selection22 = 1334,
      SMSReceived_Selection23 = 1335,
      SMSReceived_Selection24 = 1336,
      RingerVibeChanged = 1350,
      SilentVibeChanged = 1351,
      Vibrate = 4095;
}
