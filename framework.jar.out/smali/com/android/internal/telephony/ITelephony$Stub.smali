.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_adjustModemRadioPower:I = 0x9a

.field static final TRANSACTION_adjustModemRadioPowerByBand:I = 0x9b

.field static final TRANSACTION_answerRingingCall:I = 0x6

.field static final TRANSACTION_answerRingingCallGemini:I = 0x45

.field static final TRANSACTION_aquire3GSwitchLock:I = 0x8a

.field static final TRANSACTION_btSimapApduRequest:I = 0x7b

.field static final TRANSACTION_btSimapConnectSIM:I = 0x79

.field static final TRANSACTION_btSimapDisconnectSIM:I = 0x7a

.field static final TRANSACTION_btSimapPowerOffSIM:I = 0x7e

.field static final TRANSACTION_btSimapPowerOnSIM:I = 0x7d

.field static final TRANSACTION_btSimapResetSIM:I = 0x7c

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_callGemini:I = 0x41

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0xd

.field static final TRANSACTION_cancelMissedCallsNotificationGemini:I = 0x4b

.field static final TRANSACTION_cleanupApnTypeGemini:I = 0x94

.field static final TRANSACTION_closeIccLogicalChannel:I = 0x2f

.field static final TRANSACTION_closeIccLogicalChannelGemini:I = 0x30

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_dialGemini:I = 0x40

.field static final TRANSACTION_disableApnType:I = 0x17

.field static final TRANSACTION_disableApnTypeGemini:I = 0x71

.field static final TRANSACTION_disableDataConnectivity:I = 0x19

.field static final TRANSACTION_disableDataConnectivityGemini:I = 0x72

.field static final TRANSACTION_disableLocationUpdates:I = 0x15

.field static final TRANSACTION_disableLocationUpdatesGemini:I = 0x57

.field static final TRANSACTION_enableApnType:I = 0x16

.field static final TRANSACTION_enableApnTypeGemini:I = 0x70

.field static final TRANSACTION_enableDataConnectivity:I = 0x18

.field static final TRANSACTION_enableDataConnectivityGemini:I = 0x6f

.field static final TRANSACTION_enableLocationUpdates:I = 0x14

.field static final TRANSACTION_enableLocationUpdatesGemini:I = 0x56

.field static final TRANSACTION_endCall:I = 0x5

.field static final TRANSACTION_endCallGemini:I = 0x44

.field static final TRANSACTION_get3GCapabilitySIM:I = 0x88

.field static final TRANSACTION_getActivePhoneType:I = 0x20

.field static final TRANSACTION_getActivePhoneTypeGemini:I = 0x4d

.field static final TRANSACTION_getAdnStorageInfo:I = 0x93

.field static final TRANSACTION_getAllCellInfo:I = 0x37

.field static final TRANSACTION_getCallState:I = 0x1d

.field static final TRANSACTION_getCallStateGemini:I = 0x4c

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x21

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x22

.field static final TRANSACTION_getCdmaEriText:I = 0x23

.field static final TRANSACTION_getCellLocation:I = 0x1b

.field static final TRANSACTION_getCellLocationGemini:I = 0x58

.field static final TRANSACTION_getDataActivity:I = 0x1e

.field static final TRANSACTION_getDataActivityGemini:I = 0x75

.field static final TRANSACTION_getDataState:I = 0x1f

.field static final TRANSACTION_getDataStateGemini:I = 0x74

.field static final TRANSACTION_getGateway:I = 0x8f

.field static final TRANSACTION_getGatewayGemini:I = 0x92

.field static final TRANSACTION_getIccATR:I = 0x35

.field static final TRANSACTION_getIccATRGemini:I = 0x36

.field static final TRANSACTION_getIccCardType:I = 0x39

.field static final TRANSACTION_getIccCardTypeGemini:I = 0x52

.field static final TRANSACTION_getInterfaceName:I = 0x8d

.field static final TRANSACTION_getInterfaceNameGemini:I = 0x90

.field static final TRANSACTION_getIpAddress:I = 0x8e

.field static final TRANSACTION_getIpAddressGemini:I = 0x91

.field static final TRANSACTION_getLastError:I = 0x31

.field static final TRANSACTION_getLastErrorGemini:I = 0x32

.field static final TRANSACTION_getLine1AlphaTag:I = 0x6b

.field static final TRANSACTION_getLine1Number:I = 0x6a

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x28

.field static final TRANSACTION_getMissedCallCount:I = 0x99

.field static final TRANSACTION_getMobileRevisionAndIMEI:I = 0x5e

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x1c

.field static final TRANSACTION_getNeighboringCellInfoGemini:I = 0x59

.field static final TRANSACTION_getNetworkCountryIsoGemini:I = 0xa7

.field static final TRANSACTION_getNetworkOperatorGemini:I = 0xa5

.field static final TRANSACTION_getNetworkOperatorNameGemini:I = 0xa4

.field static final TRANSACTION_getNetworkType:I = 0x26

.field static final TRANSACTION_getNetworkTypeGemini:I = 0x61

.field static final TRANSACTION_getPendingMmiCodesGemini:I = 0x4a

.field static final TRANSACTION_getPreciseCallState:I = 0x3d

.field static final TRANSACTION_getSN:I = 0x5f

.field static final TRANSACTION_getScAddressGemini:I = 0x85

.field static final TRANSACTION_getServiceState:I = 0x81

.field static final TRANSACTION_getServiceStateGemini:I = 0x82

.field static final TRANSACTION_getSimCountryIso:I = 0x66

.field static final TRANSACTION_getSimIndicatorState:I = 0x7f

.field static final TRANSACTION_getSimIndicatorStateGemini:I = 0x80

.field static final TRANSACTION_getSimOperator:I = 0x64

.field static final TRANSACTION_getSimOperatorName:I = 0x65

.field static final TRANSACTION_getSimSerialNumber:I = 0x68

.field static final TRANSACTION_getSimState:I = 0x63

.field static final TRANSACTION_getSmsDefaultSim:I = 0x87

.field static final TRANSACTION_getSpNameInEfSpn:I = 0x9c

.field static final TRANSACTION_getSpNameInEfSpnGemini:I = 0x9d

.field static final TRANSACTION_getSubscriberId:I = 0x69

.field static final TRANSACTION_getSubscriberInfo:I = 0x67

.field static final TRANSACTION_getVoiceMailAlphaTag:I = 0x6d

.field static final TRANSACTION_getVoiceMailNumber:I = 0x6c

.field static final TRANSACTION_getVoiceMessageCount:I = 0x25

.field static final TRANSACTION_getVoiceMessageCountGemini:I = 0x76

.field static final TRANSACTION_handlePinMmi:I = 0x10

.field static final TRANSACTION_handlePinMmiGemini:I = 0x51

.field static final TRANSACTION_hasIccCard:I = 0x27

.field static final TRANSACTION_hasIccCardGemini:I = 0x62

.field static final TRANSACTION_is3GSwitchLocked:I = 0x8c

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x1a

.field static final TRANSACTION_isDataConnectivityPossibleGemini:I = 0x73

.field static final TRANSACTION_isFDNEnabled:I = 0x3f

.field static final TRANSACTION_isFDNEnabledGemini:I = 0x77

.field static final TRANSACTION_isIccCardProviderAsMvno:I = 0xa2

.field static final TRANSACTION_isIccCardProviderAsMvnoGemini:I = 0xa3

.field static final TRANSACTION_isIdle:I = 0xa

.field static final TRANSACTION_isIdleGemini:I = 0x49

.field static final TRANSACTION_isNetworkRoamingGemini:I = 0xa6

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isOffhookGemini:I = 0x47

.field static final TRANSACTION_isOperatorMvnoForEfPnn:I = 0xa0

.field static final TRANSACTION_isOperatorMvnoForEfPnnGemini:I = 0xa1

.field static final TRANSACTION_isOperatorMvnoForImsi:I = 0x9e

.field static final TRANSACTION_isOperatorMvnoForImsiGemini:I = 0x9f

.field static final TRANSACTION_isPhbReady:I = 0x83

.field static final TRANSACTION_isPhbReadyGemini:I = 0x84

.field static final TRANSACTION_isRadioOn:I = 0xb

.field static final TRANSACTION_isRadioOnGemini:I = 0x4e

.field static final TRANSACTION_isRinging:I = 0x9

.field static final TRANSACTION_isRingingGemini:I = 0x48

.field static final TRANSACTION_isSimInsert:I = 0x5a

.field static final TRANSACTION_isSimPinEnabled:I = 0xc

.field static final TRANSACTION_isTestIccCard:I = 0x3e

.field static final TRANSACTION_isTestIccCardGemini:I = 0x6e

.field static final TRANSACTION_isVTIdle:I = 0x78

.field static final TRANSACTION_isVoiceIdle:I = 0x38

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x24

.field static final TRANSACTION_openIccLogicalChannel:I = 0x2d

.field static final TRANSACTION_openIccLogicalChannelGemini:I = 0x2e

.field static final TRANSACTION_registerForSimModeChange:I = 0x95

.field static final TRANSACTION_release3GSwitchLock:I = 0x8b

.field static final TRANSACTION_set3GCapabilitySIM:I = 0x89

.field static final TRANSACTION_setDataRoamingEnabledGemini:I = 0x97

.field static final TRANSACTION_setDefaultPhone:I = 0x60

.field static final TRANSACTION_setGprsConnType:I = 0x5b

.field static final TRANSACTION_setGprsTransferType:I = 0x5c

.field static final TRANSACTION_setGprsTransferTypeGemini:I = 0x5d

.field static final TRANSACTION_setRadio:I = 0x12

.field static final TRANSACTION_setRadioOff:I = 0x3c

.field static final TRANSACTION_setRoamingIndicatorNeddedProperty:I = 0x98

.field static final TRANSACTION_setScAddressGemini:I = 0x86

.field static final TRANSACTION_showCallScreen:I = 0x3

.field static final TRANSACTION_showCallScreenGemini:I = 0x42

.field static final TRANSACTION_showCallScreenWithDialpad:I = 0x4

.field static final TRANSACTION_showCallScreenWithDialpadGemini:I = 0x43

.field static final TRANSACTION_silenceRinger:I = 0x7

.field static final TRANSACTION_silenceRingerGemini:I = 0x46

.field static final TRANSACTION_simAuth:I = 0x3a

.field static final TRANSACTION_simAuthGemini:I = 0x53

.field static final TRANSACTION_supplyPin:I = 0xe

.field static final TRANSACTION_supplyPinGemini:I = 0x4f

.field static final TRANSACTION_supplyPuk:I = 0xf

.field static final TRANSACTION_supplyPukGemini:I = 0x50

.field static final TRANSACTION_toggleRadioOnOff:I = 0x11

.field static final TRANSACTION_transmitIccBasicChannel:I = 0x2b

.field static final TRANSACTION_transmitIccBasicChannelGemini:I = 0x2c

.field static final TRANSACTION_transmitIccLogicalChannel:I = 0x29

.field static final TRANSACTION_transmitIccLogicalChannelGemini:I = 0x2a

.field static final TRANSACTION_transmitIccSimIO:I = 0x33

.field static final TRANSACTION_transmitIccSimIOGemini:I = 0x34

.field static final TRANSACTION_uSimAuth:I = 0x3b

.field static final TRANSACTION_uSimAuthGemini:I = 0x54

.field static final TRANSACTION_unregisterForSimModeChange:I = 0x96

.field static final TRANSACTION_updateServiceLocation:I = 0x13

.field static final TRANSACTION_updateServiceLocationGemini:I = 0x55


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .locals 2
    .parameter "obj"

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 42
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 46
    sparse-switch p1, :sswitch_data_0

    .line 1782
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 50
    :sswitch_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    :sswitch_1
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    const/4 v0, 0x1

    goto :goto_0

    .line 64
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 67
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    const/4 v0, 0x1

    goto :goto_0

    .line 73
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_3
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreen()Z

    move-result v9

    .line 75
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v9, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    const/4 v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 81
    .end local v9           #_result:Z
    :sswitch_4
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 84
    .local v1, _arg0:Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenWithDialpad(Z)Z

    move-result v9

    .line 85
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v9, :cond_2

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    .end local v1           #_arg0:Z
    .end local v9           #_result:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 86
    .restart local v1       #_arg0:Z
    .restart local v9       #_result:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 91
    .end local v1           #_arg0:Z
    .end local v9           #_result:Z
    :sswitch_5
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v9

    .line 93
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v9, :cond_3

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    const/4 v0, 0x1

    goto :goto_0

    .line 94
    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    .line 99
    .end local v9           #_result:Z
    :sswitch_6
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 106
    :sswitch_7
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 113
    :sswitch_8
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook()Z

    move-result v9

    .line 115
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v9, :cond_4

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 116
    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    .line 121
    .end local v9           #_result:Z
    :sswitch_9
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging()Z

    move-result v9

    .line 123
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v9, :cond_5

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 124
    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    .line 129
    .end local v9           #_result:Z
    :sswitch_a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle()Z

    move-result v9

    .line 131
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v9, :cond_6

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 132
    :cond_6
    const/4 v0, 0x0

    goto :goto_7

    .line 137
    .end local v9           #_result:Z
    :sswitch_b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn()Z

    move-result v9

    .line 139
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    if-eqz v9, :cond_7

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 140
    :cond_7
    const/4 v0, 0x0

    goto :goto_8

    .line 145
    .end local v9           #_result:Z
    :sswitch_c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPinEnabled()Z

    move-result v9

    .line 147
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v9, :cond_8

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 148
    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    .line 153
    .end local v9           #_result:Z
    :sswitch_d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->cancelMissedCallsNotification()V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 160
    :sswitch_e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v9

    .line 164
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v9, :cond_9

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 165
    :cond_9
    const/4 v0, 0x0

    goto :goto_a

    .line 170
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v9           #_result:Z
    :sswitch_f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 174
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 176
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v9, :cond_a

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 177
    :cond_a
    const/4 v0, 0x0

    goto :goto_b

    .line 182
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v9           #_result:Z
    :sswitch_10
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 185
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v9

    .line 186
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v9, :cond_b

    const/4 v0, 0x1

    :goto_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 187
    :cond_b
    const/4 v0, 0x0

    goto :goto_c

    .line 192
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v9           #_result:Z
    :sswitch_11
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 199
    :sswitch_12
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    .line 202
    .local v1, _arg0:Z
    :goto_d
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v9

    .line 203
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v9, :cond_d

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 201
    .end local v1           #_arg0:Z
    .end local v9           #_result:Z
    :cond_c
    const/4 v1, 0x0

    goto :goto_d

    .line 204
    .restart local v1       #_arg0:Z
    .restart local v9       #_result:Z
    :cond_d
    const/4 v0, 0x0

    goto :goto_e

    .line 209
    .end local v1           #_arg0:Z
    .end local v9           #_result:Z
    :sswitch_13
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 216
    :sswitch_14
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 223
    :sswitch_15
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 230
    :sswitch_16
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableApnType(Ljava/lang/String;)I

    move-result v9

    .line 234
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 240
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v9           #_result:I
    :sswitch_17
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 243
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->disableApnType(Ljava/lang/String;)I

    move-result v9

    .line 244
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 250
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v9           #_result:I
    :sswitch_18
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v9

    .line 252
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    if-eqz v9, :cond_e

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 253
    :cond_e
    const/4 v0, 0x0

    goto :goto_f

    .line 258
    .end local v9           #_result:Z
    :sswitch_19
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v9

    .line 260
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v9, :cond_f

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 261
    :cond_f
    const/4 v0, 0x0

    goto :goto_10

    .line 266
    .end local v9           #_result:Z
    :sswitch_1a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v9

    .line 268
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    if-eqz v9, :cond_10

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 269
    :cond_10
    const/4 v0, 0x0

    goto :goto_11

    .line 274
    .end local v9           #_result:Z
    :sswitch_1b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation()Landroid/os/Bundle;

    move-result-object v9

    .line 276
    .local v9, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    if-eqz v9, :cond_11

    .line 278
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    const/4 v0, 0x1

    invoke-virtual {v9, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 284
    :goto_12
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 282
    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 288
    .end local v9           #_result:Landroid/os/Bundle;
    :sswitch_1c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v11

    .line 290
    .local v11, _result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 292
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 296
    .end local v11           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_1d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v9

    .line 298
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 304
    .end local v9           #_result:I
    :sswitch_1e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v9

    .line 306
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 312
    .end local v9           #_result:I
    :sswitch_1f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v9

    .line 314
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 320
    .end local v9           #_result:I
    :sswitch_20
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v9

    .line 322
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 328
    .end local v9           #_result:I
    :sswitch_21
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex()I

    move-result v9

    .line 330
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 336
    .end local v9           #_result:I
    :sswitch_22
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode()I

    move-result v9

    .line 338
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 344
    .end local v9           #_result:I
    :sswitch_23
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText()Ljava/lang/String;

    move-result-object v9

    .line 346
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 352
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_24
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v9

    .line 354
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    if-eqz v9, :cond_12

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 355
    :cond_12
    const/4 v0, 0x0

    goto :goto_13

    .line 360
    .end local v9           #_result:Z
    :sswitch_25
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v9

    .line 362
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 368
    .end local v9           #_result:I
    :sswitch_26
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v9

    .line 370
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 376
    .end local v9           #_result:I
    :sswitch_27
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v9

    .line 378
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    if-eqz v9, :cond_13

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 379
    :cond_13
    const/4 v0, 0x0

    goto :goto_14

    .line 384
    .end local v9           #_result:Z
    :sswitch_28
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode()I

    move-result v9

    .line 386
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 392
    .end local v9           #_result:I
    :sswitch_29
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 396
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 398
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 400
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 402
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 404
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 406
    .local v6, _arg5:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg6:Ljava/lang/String;
    move-object v0, p0

    .line 407
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 408
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 410
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 414
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:I
    .end local v7           #_arg6:Ljava/lang/String;
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_2a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 418
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 420
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 422
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 424
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 426
    .restart local v5       #_arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 428
    .restart local v6       #_arg5:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 430
    .restart local v7       #_arg6:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, _arg7:I
    move-object v0, p0

    .line 431
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccLogicalChannelGemini(IIIIIILjava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 432
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 434
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 438
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:I
    .end local v7           #_arg6:Ljava/lang/String;
    .end local v8           #_arg7:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_2b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 442
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 444
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 446
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 448
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 450
    .restart local v5       #_arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg5:Ljava/lang/String;
    move-object v0, p0

    .line 451
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 452
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 454
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 458
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_2c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 462
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 464
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 466
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 468
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 470
    .restart local v5       #_arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 472
    .restart local v6       #_arg5:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, _arg6:I
    move-object v0, p0

    .line 473
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccBasicChannelGemini(IIIIILjava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 474
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 476
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 480
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v7           #_arg6:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_2d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->openIccLogicalChannel(Ljava/lang/String;)I

    move-result v9

    .line 484
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 490
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v9           #_result:I
    :sswitch_2e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 494
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 495
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->openIccLogicalChannelGemini(Ljava/lang/String;I)I

    move-result v9

    .line 496
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 502
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v9           #_result:I
    :sswitch_2f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 505
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->closeIccLogicalChannel(I)Z

    move-result v9

    .line 506
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    if-eqz v9, :cond_14

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 507
    :cond_14
    const/4 v0, 0x0

    goto :goto_15

    .line 512
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_30
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 516
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 517
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->closeIccLogicalChannelGemini(II)Z

    move-result v9

    .line 518
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    if-eqz v9, :cond_15

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 519
    :cond_15
    const/4 v0, 0x0

    goto :goto_16

    .line 524
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v9           #_result:Z
    :sswitch_31
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLastError()I

    move-result v9

    .line 526
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 532
    .end local v9           #_result:I
    :sswitch_32
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 535
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLastErrorGemini(I)I

    move-result v9

    .line 536
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 542
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_33
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 546
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 548
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 550
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 552
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 554
    .restart local v5       #_arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg5:Ljava/lang/String;
    move-object v0, p0

    .line 555
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccSimIO(IIIIILjava/lang/String;)[B

    move-result-object v9

    .line 556
    .local v9, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 558
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 562
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v9           #_result:[B
    :sswitch_34
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 566
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 568
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 570
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 572
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 574
    .restart local v5       #_arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 576
    .restart local v6       #_arg5:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg6:I
    move-object v0, p0

    .line 577
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccSimIOGemini(IIIIILjava/lang/String;I)[B

    move-result-object v9

    .line 578
    .restart local v9       #_result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 580
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 584
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v7           #_arg6:I
    .end local v9           #_result:[B
    :sswitch_35
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccATR()Ljava/lang/String;

    move-result-object v9

    .line 586
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 588
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 592
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_36
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 595
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccATRGemini(I)Ljava/lang/String;

    move-result-object v9

    .line 596
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 598
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 602
    .end local v1           #_arg0:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_37
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo()Ljava/util/List;

    move-result-object v10

    .line 604
    .local v10, _result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 606
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 610
    .end local v10           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_38
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoiceIdle()Z

    move-result v9

    .line 612
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    if-eqz v9, :cond_16

    const/4 v0, 0x1

    :goto_17
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 613
    :cond_16
    const/4 v0, 0x0

    goto :goto_17

    .line 618
    .end local v9           #_result:Z
    :sswitch_39
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccCardType()Ljava/lang/String;

    move-result-object v9

    .line 620
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 622
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 626
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_3a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 629
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->simAuth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 630
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 632
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 636
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_3b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 640
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 641
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->uSimAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 642
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 644
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 648
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_3c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioOff()Z

    move-result v9

    .line 650
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    if-eqz v9, :cond_17

    const/4 v0, 0x1

    :goto_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 651
    :cond_17
    const/4 v0, 0x0

    goto :goto_18

    .line 656
    .end local v9           #_result:Z
    :sswitch_3d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPreciseCallState()I

    move-result v9

    .line 658
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 664
    .end local v9           #_result:I
    :sswitch_3e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isTestIccCard()Z

    move-result v9

    .line 666
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    if-eqz v9, :cond_18

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 667
    :cond_18
    const/4 v0, 0x0

    goto :goto_19

    .line 672
    .end local v9           #_result:Z
    :sswitch_3f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isFDNEnabled()Z

    move-result v9

    .line 674
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    if-eqz v9, :cond_19

    const/4 v0, 0x1

    :goto_1a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 675
    :cond_19
    const/4 v0, 0x0

    goto :goto_1a

    .line 680
    .end local v9           #_result:Z
    :sswitch_40
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 684
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 685
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->dialGemini(Ljava/lang/String;I)V

    .line 686
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 691
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    :sswitch_41
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 695
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 696
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->callGemini(Ljava/lang/String;I)V

    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 702
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    :sswitch_42
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 705
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenGemini(I)Z

    move-result v9

    .line 706
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    if-eqz v9, :cond_1a

    const/4 v0, 0x1

    :goto_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 707
    :cond_1a
    const/4 v0, 0x0

    goto :goto_1b

    .line 712
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_43
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    .line 716
    .local v1, _arg0:Z
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 717
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenWithDialpadGemini(ZI)Z

    move-result v9

    .line 718
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    if-eqz v9, :cond_1c

    const/4 v0, 0x1

    :goto_1d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 714
    .end local v1           #_arg0:Z
    .end local v2           #_arg1:I
    .end local v9           #_result:Z
    :cond_1b
    const/4 v1, 0x0

    goto :goto_1c

    .line 719
    .restart local v1       #_arg0:Z
    .restart local v2       #_arg1:I
    .restart local v9       #_result:Z
    :cond_1c
    const/4 v0, 0x0

    goto :goto_1d

    .line 724
    .end local v1           #_arg0:Z
    .end local v2           #_arg1:I
    .end local v9           #_result:Z
    :sswitch_44
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 727
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->endCallGemini(I)Z

    move-result v9

    .line 728
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    if-eqz v9, :cond_1d

    const/4 v0, 0x1

    :goto_1e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 729
    :cond_1d
    const/4 v0, 0x0

    goto :goto_1e

    .line 734
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_45
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 737
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCallGemini(I)V

    .line 738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 743
    .end local v1           #_arg0:I
    :sswitch_46
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 746
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRingerGemini(I)V

    .line 747
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 752
    .end local v1           #_arg0:I
    :sswitch_47
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 754
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 755
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhookGemini(I)Z

    move-result v9

    .line 756
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    if-eqz v9, :cond_1e

    const/4 v0, 0x1

    :goto_1f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 757
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1f

    .line 762
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_48
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 765
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRingingGemini(I)Z

    move-result v9

    .line 766
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    if-eqz v9, :cond_1f

    const/4 v0, 0x1

    :goto_20
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 767
    :cond_1f
    const/4 v0, 0x0

    goto :goto_20

    .line 772
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_49
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 775
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdleGemini(I)Z

    move-result v9

    .line 776
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    if-eqz v9, :cond_20

    const/4 v0, 0x1

    :goto_21
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 777
    :cond_20
    const/4 v0, 0x0

    goto :goto_21

    .line 782
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_4a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 785
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getPendingMmiCodesGemini(I)I

    move-result v9

    .line 786
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 792
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_4b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 795
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->cancelMissedCallsNotificationGemini(I)V

    .line 796
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 801
    .end local v1           #_arg0:I
    :sswitch_4c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 804
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallStateGemini(I)I

    move-result v9

    .line 805
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 807
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 811
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_4d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 814
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneTypeGemini(I)I

    move-result v9

    .line 815
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 821
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_4e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 824
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnGemini(I)Z

    move-result v9

    .line 825
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    if-eqz v9, :cond_21

    const/4 v0, 0x1

    :goto_22
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 827
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 826
    :cond_21
    const/4 v0, 0x0

    goto :goto_22

    .line 831
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_4f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 835
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 836
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinGemini(Ljava/lang/String;I)Z

    move-result v9

    .line 837
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    if-eqz v9, :cond_22

    const/4 v0, 0x1

    :goto_23
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 839
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 838
    :cond_22
    const/4 v0, 0x0

    goto :goto_23

    .line 843
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v9           #_result:Z
    :sswitch_50
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 845
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 847
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 849
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 850
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukGemini(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    .line 851
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    if-eqz v9, :cond_23

    const/4 v0, 0x1

    :goto_24
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 852
    :cond_23
    const/4 v0, 0x0

    goto :goto_24

    .line 857
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v9           #_result:Z
    :sswitch_51
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 861
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 862
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmiGemini(Ljava/lang/String;I)Z

    move-result v9

    .line 863
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    if-eqz v9, :cond_24

    const/4 v0, 0x1

    :goto_25
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 865
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 864
    :cond_24
    const/4 v0, 0x0

    goto :goto_25

    .line 869
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v9           #_result:Z
    :sswitch_52
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 872
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccCardTypeGemini(I)Ljava/lang/String;

    move-result-object v9

    .line 873
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 875
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 879
    .end local v1           #_arg0:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_53
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 881
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 883
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 884
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->simAuthGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 885
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 887
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 891
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_54
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 895
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 897
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 898
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->uSimAuthGemini(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 899
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 901
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 905
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_55
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 908
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocationGemini(I)V

    .line 909
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 914
    .end local v1           #_arg0:I
    :sswitch_56
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 917
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdatesGemini(I)V

    .line 918
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 923
    .end local v1           #_arg0:I
    :sswitch_57
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 926
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdatesGemini(I)V

    .line 927
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 932
    .end local v1           #_arg0:I
    :sswitch_58
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 935
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocationGemini(I)Landroid/os/Bundle;

    move-result-object v9

    .line 936
    .local v9, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    if-eqz v9, :cond_25

    .line 938
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    const/4 v0, 0x1

    invoke-virtual {v9, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 944
    :goto_26
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 942
    :cond_25
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 948
    .end local v1           #_arg0:I
    .end local v9           #_result:Landroid/os/Bundle;
    :sswitch_59
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 951
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfoGemini(I)Ljava/util/List;

    move-result-object v11

    .line 952
    .restart local v11       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 954
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 958
    .end local v1           #_arg0:I
    .end local v11           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_5a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 960
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 961
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimInsert(I)Z

    move-result v9

    .line 962
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    if-eqz v9, :cond_26

    const/4 v0, 0x1

    :goto_27
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 964
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 963
    :cond_26
    const/4 v0, 0x0

    goto :goto_27

    .line 968
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_5b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 970
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 972
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 973
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setGprsConnType(II)V

    .line 974
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 979
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_5c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 981
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 982
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setGprsTransferType(I)V

    .line 983
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 988
    .end local v1           #_arg0:I
    :sswitch_5d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 992
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 993
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setGprsTransferTypeGemini(II)V

    .line 994
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 995
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 999
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_5e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1003
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27

    .line 1004
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 1009
    .local v2, _arg1:Landroid/os/Message;
    :goto_28
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getMobileRevisionAndIMEI(ILandroid/os/Message;)V

    .line 1010
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1007
    .end local v2           #_arg1:Landroid/os/Message;
    :cond_27
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/Message;
    goto :goto_28

    .line 1015
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/os/Message;
    :sswitch_5f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSN()Ljava/lang/String;

    move-result-object v9

    .line 1017
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1019
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1023
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_60
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1026
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setDefaultPhone(I)V

    .line 1027
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1028
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1032
    .end local v1           #_arg0:I
    :sswitch_61
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1035
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkTypeGemini(I)I

    move-result v9

    .line 1036
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1038
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1042
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_62
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1045
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCardGemini(I)Z

    move-result v9

    .line 1046
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1047
    if-eqz v9, :cond_28

    const/4 v0, 0x1

    :goto_29
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1048
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1047
    :cond_28
    const/4 v0, 0x0

    goto :goto_29

    .line 1052
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_63
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1055
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimState(I)I

    move-result v9

    .line 1056
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1057
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1058
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1062
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_64
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1065
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimOperator(I)Ljava/lang/String;

    move-result-object v9

    .line 1066
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1068
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1072
    .end local v1           #_arg0:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_65
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1075
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v9

    .line 1076
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1078
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1082
    .end local v1           #_arg0:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_66
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1085
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v9

    .line 1086
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1087
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1088
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1092
    .end local v1           #_arg0:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_67
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1095
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v9

    .line 1096
    .local v9, _result:Lcom/android/internal/telephony/IPhoneSubInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    if-eqz v9, :cond_29

    invoke-interface {v9}, Lcom/android/internal/telephony/IPhoneSubInfo;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_2a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1098
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1097
    :cond_29
    const/4 v0, 0x0

    goto :goto_2a

    .line 1102
    .end local v1           #_arg0:I
    .end local v9           #_result:Lcom/android/internal/telephony/IPhoneSubInfo;
    :sswitch_68
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1105
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v9

    .line 1106
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1107
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1108
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1112
    .end local v1           #_arg0:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_69
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1115
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v9

    .line 1116
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1117
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1118
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1122
    .end local v1           #_arg0:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_6a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1125
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1Number(I)Ljava/lang/String;

    move-result-object v9

    .line 1126
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1127
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1128
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1132
    .end local v1           #_arg0:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_6b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1135
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1AlphaTag(I)Ljava/lang/String;

    move-result-object v9

    .line 1136
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1138
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1142
    .end local v1           #_arg0:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_6c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1145
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v9

    .line 1146
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1148
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1152
    .end local v1           #_arg0:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_6d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1155
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v9

    .line 1156
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1158
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1162
    .end local v1           #_arg0:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_6e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1165
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isTestIccCardGemini(I)Z

    move-result v9

    .line 1166
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    if-eqz v9, :cond_2a

    const/4 v0, 0x1

    :goto_2b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1168
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1167
    :cond_2a
    const/4 v0, 0x0

    goto :goto_2b

    .line 1172
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_6f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1175
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivityGemini(I)I

    move-result v9

    .line 1176
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1177
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1178
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1182
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_70
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1186
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1187
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableApnTypeGemini(Ljava/lang/String;I)I

    move-result v9

    .line 1188
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1190
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1194
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v9           #_result:I
    :sswitch_71
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1198
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1199
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->disableApnTypeGemini(Ljava/lang/String;I)I

    move-result v9

    .line 1200
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1202
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1206
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v9           #_result:I
    :sswitch_72
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1209
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivityGemini(I)I

    move-result v9

    .line 1210
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1212
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1216
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_73
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1219
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossibleGemini(I)Z

    move-result v9

    .line 1220
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    if-eqz v9, :cond_2b

    const/4 v0, 0x1

    :goto_2c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1222
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1221
    :cond_2b
    const/4 v0, 0x0

    goto :goto_2c

    .line 1226
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_74
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1229
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataStateGemini(I)I

    move-result v9

    .line 1230
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1231
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1232
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1236
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_75
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1239
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivityGemini(I)I

    move-result v9

    .line 1240
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1242
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1246
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_76
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1249
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCountGemini(I)I

    move-result v9

    .line 1250
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1251
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1252
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1256
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_77
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1259
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isFDNEnabledGemini(I)Z

    move-result v9

    .line 1260
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    if-eqz v9, :cond_2c

    const/4 v0, 0x1

    :goto_2d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1262
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1261
    :cond_2c
    const/4 v0, 0x0

    goto :goto_2d

    .line 1266
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_78
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVTIdle()Z

    move-result v9

    .line 1268
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1269
    if-eqz v9, :cond_2d

    const/4 v0, 0x1

    :goto_2e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1270
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1269
    :cond_2d
    const/4 v0, 0x0

    goto :goto_2e

    .line 1274
    .end local v9           #_result:Z
    :sswitch_79
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1278
    .restart local v1       #_arg0:I
    new-instance v2, Landroid/telephony/BtSimapOperResponse;

    invoke-direct {v2}, Landroid/telephony/BtSimapOperResponse;-><init>()V

    .line 1279
    .local v2, _arg1:Landroid/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapConnectSIM(ILandroid/telephony/BtSimapOperResponse;)I

    move-result v9

    .line 1280
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1281
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1282
    if-eqz v2, :cond_2e

    .line 1283
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1284
    const/4 v0, 0x1

    invoke-virtual {v2, p3, v0}, Landroid/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1289
    :goto_2f
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1287
    :cond_2e
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2f

    .line 1293
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/telephony/BtSimapOperResponse;
    .end local v9           #_result:I
    :sswitch_7a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1294
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapDisconnectSIM()I

    move-result v9

    .line 1295
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1296
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1297
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1301
    .end local v9           #_result:I
    :sswitch_7b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1305
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1307
    .local v2, _arg1:Ljava/lang/String;
    new-instance v3, Landroid/telephony/BtSimapOperResponse;

    invoke-direct {v3}, Landroid/telephony/BtSimapOperResponse;-><init>()V

    .line 1308
    .local v3, _arg2:Landroid/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapApduRequest(ILjava/lang/String;Landroid/telephony/BtSimapOperResponse;)I

    move-result v9

    .line 1309
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1310
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1311
    if-eqz v3, :cond_2f

    .line 1312
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1313
    const/4 v0, 0x1

    invoke-virtual {v3, p3, v0}, Landroid/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1318
    :goto_30
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1316
    :cond_2f
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30

    .line 1322
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Landroid/telephony/BtSimapOperResponse;
    .end local v9           #_result:I
    :sswitch_7c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1326
    .restart local v1       #_arg0:I
    new-instance v2, Landroid/telephony/BtSimapOperResponse;

    invoke-direct {v2}, Landroid/telephony/BtSimapOperResponse;-><init>()V

    .line 1327
    .local v2, _arg1:Landroid/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapResetSIM(ILandroid/telephony/BtSimapOperResponse;)I

    move-result v9

    .line 1328
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1329
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1330
    if-eqz v2, :cond_30

    .line 1331
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1332
    const/4 v0, 0x1

    invoke-virtual {v2, p3, v0}, Landroid/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1337
    :goto_31
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1335
    :cond_30
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_31

    .line 1341
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/telephony/BtSimapOperResponse;
    .end local v9           #_result:I
    :sswitch_7d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1345
    .restart local v1       #_arg0:I
    new-instance v2, Landroid/telephony/BtSimapOperResponse;

    invoke-direct {v2}, Landroid/telephony/BtSimapOperResponse;-><init>()V

    .line 1346
    .restart local v2       #_arg1:Landroid/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapPowerOnSIM(ILandroid/telephony/BtSimapOperResponse;)I

    move-result v9

    .line 1347
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1349
    if-eqz v2, :cond_31

    .line 1350
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1351
    const/4 v0, 0x1

    invoke-virtual {v2, p3, v0}, Landroid/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1356
    :goto_32
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1354
    :cond_31
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    .line 1360
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/telephony/BtSimapOperResponse;
    .end local v9           #_result:I
    :sswitch_7e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1361
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapPowerOffSIM()I

    move-result v9

    .line 1362
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1363
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1364
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1368
    .end local v9           #_result:I
    :sswitch_7f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimIndicatorState()I

    move-result v9

    .line 1370
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1371
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1372
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1376
    .end local v9           #_result:I
    :sswitch_80
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1379
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimIndicatorStateGemini(I)I

    move-result v9

    .line 1380
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1381
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1382
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1386
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_81
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1387
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceState()Landroid/os/Bundle;

    move-result-object v9

    .line 1388
    .local v9, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1389
    if-eqz v9, :cond_32

    .line 1390
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1391
    const/4 v0, 0x1

    invoke-virtual {v9, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1396
    :goto_33
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1394
    :cond_32
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33

    .line 1400
    .end local v9           #_result:Landroid/os/Bundle;
    :sswitch_82
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1402
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1403
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceStateGemini(I)Landroid/os/Bundle;

    move-result-object v9

    .line 1404
    .restart local v9       #_result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1405
    if-eqz v9, :cond_33

    .line 1406
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1407
    const/4 v0, 0x1

    invoke-virtual {v9, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1412
    :goto_34
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1410
    :cond_33
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_34

    .line 1416
    .end local v1           #_arg0:I
    .end local v9           #_result:Landroid/os/Bundle;
    :sswitch_83
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1417
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isPhbReady()Z

    move-result v9

    .line 1418
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1419
    if-eqz v9, :cond_34

    const/4 v0, 0x1

    :goto_35
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1420
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1419
    :cond_34
    const/4 v0, 0x0

    goto :goto_35

    .line 1424
    .end local v9           #_result:Z
    :sswitch_84
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1426
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1427
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isPhbReadyGemini(I)Z

    move-result v9

    .line 1428
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1429
    if-eqz v9, :cond_35

    const/4 v0, 0x1

    :goto_36
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1430
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1429
    :cond_35
    const/4 v0, 0x0

    goto :goto_36

    .line 1434
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_85
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1436
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1437
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getScAddressGemini(I)Ljava/lang/String;

    move-result-object v9

    .line 1438
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1439
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1440
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1444
    .end local v1           #_arg0:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_86
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1446
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1448
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1449
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setScAddressGemini(Ljava/lang/String;I)V

    .line 1450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1451
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1455
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    :sswitch_87
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1456
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSmsDefaultSim()I

    move-result v9

    .line 1457
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1458
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1459
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1463
    .end local v9           #_result:I
    :sswitch_88
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1464
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->get3GCapabilitySIM()I

    move-result v9

    .line 1465
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1466
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1467
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1471
    .end local v9           #_result:I
    :sswitch_89
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1473
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1474
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->set3GCapabilitySIM(I)Z

    move-result v9

    .line 1475
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1476
    if-eqz v9, :cond_36

    const/4 v0, 0x1

    :goto_37
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1477
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1476
    :cond_36
    const/4 v0, 0x0

    goto :goto_37

    .line 1481
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_8a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1482
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->aquire3GSwitchLock()I

    move-result v9

    .line 1483
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1484
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1485
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1489
    .end local v9           #_result:I
    :sswitch_8b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1491
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1492
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->release3GSwitchLock(I)Z

    move-result v9

    .line 1493
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1494
    if-eqz v9, :cond_37

    const/4 v0, 0x1

    :goto_38
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1495
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1494
    :cond_37
    const/4 v0, 0x0

    goto :goto_38

    .line 1499
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_8c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1500
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->is3GSwitchLocked()Z

    move-result v9

    .line 1501
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1502
    if-eqz v9, :cond_38

    const/4 v0, 0x1

    :goto_39
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1503
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1502
    :cond_38
    const/4 v0, 0x0

    goto :goto_39

    .line 1507
    .end local v9           #_result:Z
    :sswitch_8d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1509
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1510
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1511
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1512
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1513
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1517
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_8e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1520
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1521
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1522
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1523
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1527
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_8f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1529
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1530
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1531
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1532
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1533
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1537
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_90
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1539
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1541
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1542
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getInterfaceNameGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 1543
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1544
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1545
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1549
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_91
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1551
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1553
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1554
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getIpAddressGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 1555
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1556
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1557
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1561
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_92
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1563
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1565
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1566
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getGatewayGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 1567
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1568
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1569
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1573
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_93
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1575
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1576
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getAdnStorageInfo(I)[I

    move-result-object v9

    .line 1577
    .local v9, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1578
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1579
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1583
    .end local v1           #_arg0:I
    .end local v9           #_result:[I
    :sswitch_94
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1585
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1587
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1588
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->cleanupApnTypeGemini(Ljava/lang/String;I)I

    move-result v9

    .line 1589
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1590
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1591
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1595
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v9           #_result:I
    :sswitch_95
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1597
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1599
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1600
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForSimModeChange(Landroid/os/IBinder;I)V

    .line 1601
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1602
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1606
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:I
    :sswitch_96
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1608
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1609
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForSimModeChange(Landroid/os/IBinder;)V

    .line 1610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1611
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1615
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_97
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1617
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    const/4 v1, 0x1

    .line 1619
    .local v1, _arg0:Z
    :goto_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1620
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataRoamingEnabledGemini(ZI)V

    .line 1621
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1622
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1617
    .end local v1           #_arg0:Z
    .end local v2           #_arg1:I
    :cond_39
    const/4 v1, 0x0

    goto :goto_3a

    .line 1626
    :sswitch_98
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1628
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v1, 0x1

    .line 1630
    .restart local v1       #_arg0:Z
    :goto_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v2, 0x1

    .line 1631
    .local v2, _arg1:Z
    :goto_3c
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setRoamingIndicatorNeddedProperty(ZZ)V

    .line 1632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1633
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1628
    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Z
    :cond_3a
    const/4 v1, 0x0

    goto :goto_3b

    .line 1630
    .restart local v1       #_arg0:Z
    :cond_3b
    const/4 v2, 0x0

    goto :goto_3c

    .line 1637
    .end local v1           #_arg0:Z
    :sswitch_99
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1638
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMissedCallCount()I

    move-result v9

    .line 1639
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1640
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1641
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1645
    .end local v9           #_result:I
    :sswitch_9a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1647
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1649
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1650
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->adjustModemRadioPower(II)Z

    move-result v9

    .line 1651
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1652
    if-eqz v9, :cond_3c

    const/4 v0, 0x1

    :goto_3d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1653
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1652
    :cond_3c
    const/4 v0, 0x0

    goto :goto_3d

    .line 1657
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v9           #_result:Z
    :sswitch_9b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1659
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1661
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1663
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1664
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->adjustModemRadioPowerByBand(III)Z

    move-result v9

    .line 1665
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1666
    if-eqz v9, :cond_3d

    const/4 v0, 0x1

    :goto_3e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1667
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1666
    :cond_3d
    const/4 v0, 0x0

    goto :goto_3e

    .line 1671
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v9           #_result:Z
    :sswitch_9c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1672
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSpNameInEfSpn()Ljava/lang/String;

    move-result-object v9

    .line 1673
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1674
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1675
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1679
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_9d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1681
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1682
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSpNameInEfSpnGemini(I)Ljava/lang/String;

    move-result-object v9

    .line 1683
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1684
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1685
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1689
    .end local v1           #_arg0:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_9e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1690
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOperatorMvnoForImsi()Ljava/lang/String;

    move-result-object v9

    .line 1691
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1692
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1693
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1697
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_9f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1699
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1700
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isOperatorMvnoForImsiGemini(I)Ljava/lang/String;

    move-result-object v9

    .line 1701
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1702
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1703
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1707
    .end local v1           #_arg0:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_a0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1708
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOperatorMvnoForEfPnn()Ljava/lang/String;

    move-result-object v9

    .line 1709
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1710
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1711
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1715
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_a1
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1717
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1718
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isOperatorMvnoForEfPnnGemini(I)Ljava/lang/String;

    move-result-object v9

    .line 1719
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1720
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1721
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1725
    .end local v1           #_arg0:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_a2
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1726
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIccCardProviderAsMvno()Z

    move-result v9

    .line 1727
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1728
    if-eqz v9, :cond_3e

    const/4 v0, 0x1

    :goto_3f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1729
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1728
    :cond_3e
    const/4 v0, 0x0

    goto :goto_3f

    .line 1733
    .end local v9           #_result:Z
    :sswitch_a3
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1735
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1736
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isIccCardProviderAsMvnoGemini(I)Z

    move-result v9

    .line 1737
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1738
    if-eqz v9, :cond_3f

    const/4 v0, 0x1

    :goto_40
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1739
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1738
    :cond_3f
    const/4 v0, 0x0

    goto :goto_40

    .line 1743
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_a4
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1745
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1746
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkOperatorNameGemini(I)Ljava/lang/String;

    move-result-object v9

    .line 1747
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1748
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1749
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1753
    .end local v1           #_arg0:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_a5
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1755
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1756
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkOperatorGemini(I)Ljava/lang/String;

    move-result-object v9

    .line 1757
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1758
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1759
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1763
    .end local v1           #_arg0:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_a6
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1765
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1766
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isNetworkRoamingGemini(I)Z

    move-result v9

    .line 1767
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1768
    if-eqz v9, :cond_40

    const/4 v0, 0x1

    :goto_41
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1769
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1768
    :cond_40
    const/4 v0, 0x0

    goto :goto_41

    .line 1773
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_a7
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1775
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1776
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkCountryIsoGemini(I)Ljava/lang/String;

    move-result-object v9

    .line 1777
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1778
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1779
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 46
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x91 -> :sswitch_91
        0x92 -> :sswitch_92
        0x93 -> :sswitch_93
        0x94 -> :sswitch_94
        0x95 -> :sswitch_95
        0x96 -> :sswitch_96
        0x97 -> :sswitch_97
        0x98 -> :sswitch_98
        0x99 -> :sswitch_99
        0x9a -> :sswitch_9a
        0x9b -> :sswitch_9b
        0x9c -> :sswitch_9c
        0x9d -> :sswitch_9d
        0x9e -> :sswitch_9e
        0x9f -> :sswitch_9f
        0xa0 -> :sswitch_a0
        0xa1 -> :sswitch_a1
        0xa2 -> :sswitch_a2
        0xa3 -> :sswitch_a3
        0xa4 -> :sswitch_a4
        0xa5 -> :sswitch_a5
        0xa6 -> :sswitch_a6
        0xa7 -> :sswitch_a7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
