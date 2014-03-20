.class public Lcom/mediatek/calloption/CallOptionUtils;
.super Ljava/lang/Object;
.source "CallOptionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;
    }
.end annotation


# static fields
.field public static final MODEM_MASK_TDSCDMA:I = 0x8

.field public static final MODEM_MASK_WCDMA:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CallOptionUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static get3GCapabilitySIM(Lcom/mediatek/calloption/Request;)I
    .locals 3
    .parameter "request"

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-virtual {p0}, Lcom/mediatek/calloption/Request;->getTelephonyInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-nez v2, :cond_0

    .line 155
    :goto_0
    return v1

    .line 152
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/calloption/Request;->getTelephonyInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->get3GCapabilitySIM()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "RemoteException happens in get3GCapabilitySIM()"

    invoke-static {v2}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static get3GCapabilitySIMBySolt(I)Z
    .locals 8
    .parameter "slot"

    .prologue
    .line 290
    const/4 v1, 0x0

    .line 291
    .local v1, mask:I
    const/4 v2, 0x0

    .line 292
    .local v2, modemIs3G:Z
    const-string v4, "gsm.baseband.capability"

    .line 293
    .local v4, propertyKey:Ljava/lang/String;
    const/4 v0, 0x0

    .line 294
    .local v0, capability:Ljava/lang/String;
    const/4 v5, 0x1

    if-ne p0, v5, :cond_0

    .line 295
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 297
    :cond_0
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    const-string v5, "CallOptionUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gsm.baseband.capability "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    if-eqz v0, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 300
    :cond_1
    const/4 v5, 0x0

    .line 314
    :goto_0
    return v5

    .line 304
    :cond_2
    const/16 v5, 0x10

    :try_start_0
    invoke-static {v0, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 305
    and-int/lit8 v5, v1, 0x8

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    and-int/lit8 v5, v1, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .line 307
    :cond_3
    const/4 v2, 0x1

    :goto_1
    move v5, v2

    .line 314
    goto :goto_0

    .line 309
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 311
    :catch_0
    move-exception v3

    .line 312
    .local v3, ne:Ljava/lang/NumberFormatException;
    const-string v5, "parse value of basband error"

    invoke-static {v5}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getCityGeoDescription(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 7
    .parameter "number"
    .parameter "countryISO"
    .parameter "locale"

    .prologue
    .line 203
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v4

    .line 204
    .local v4, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v2

    .line 206
    .local v2, geocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    const/4 v3, 0x0

    .line 208
    .local v3, pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parsing \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' for countryIso \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v4, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    .line 211
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- parsed number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    if-eqz v3, :cond_0

    .line 217
    invoke-virtual {v2, v3, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, description:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- got description = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 221
    .end local v0           #description:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, e:Lcom/android/i18n/phonenumbers/NumberParseException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getGeoDescription: NumberParseException for incoming number \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 221
    .end local v1           #e:Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static final getCurrentCountryISO(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 164
    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 166
    .local v0, detector:Landroid/location/CountryDetector;
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInitialNumber(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInitialNumber(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    const/4 v1, 0x0

    .line 84
    :goto_0
    return-object v1

    .line 78
    :cond_0
    const-string v2, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    const-string v2, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, actualNumberToDial:Ljava/lang/String;
    goto :goto_0

    .line 84
    .end local v1           #actualNumberToDial:Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Lcom/mediatek/calloption/CallOptionUtils;->getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 89
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, scheme:Ljava/lang/String;
    const-string v5, "sip"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 112
    :goto_0
    return-object v5

    .line 97
    :cond_0
    const-string v5, "voicemail:"

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voice_call_sim_setting"

    const-wide/16 v7, -0x5

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 100
    .local v0, defaultSim:J
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v3

    .line 102
    .local v3, simInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_1

    long-to-int v5, v0

    invoke-virtual {v3, v5}, Lcom/mediatek/phone/SIMInfoWrapper;->getSlotIdBySimId(I)I

    move-result v5

    if-ltz v5, :cond_1

    .line 103
    const-string v5, "simId"

    long-to-int v6, v0

    invoke-virtual {v3, v6}, Lcom/mediatek/phone/SIMInfoWrapper;->getSlotIdBySimId(I)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    .end local v0           #defaultSim:J
    .end local v3           #simInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;
    :cond_1
    const-string v5, "getNumberFromIntent ....."

    invoke-static {v5}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 112
    invoke-static {p1, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getNumberInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;
    .locals 11
    .parameter "number"
    .parameter "countryISO"

    .prologue
    .line 170
    const-string v8, "getNumberInfo().."

    invoke-static {v8}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v6

    .line 172
    .local v6, phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v5, 0x0

    .line 174
    .local v5, phoneNumber:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_0
    invoke-virtual {v6, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 179
    if-nez v5, :cond_0

    .line 180
    const-string v8, "phoneNumber is null"

    invoke-static {v8}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 181
    new-instance v8, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;

    const-string v9, ""

    const-string v10, ""

    invoke-direct {v8, p1, v9, p0, v10}, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :goto_0
    return-object v8

    .line 175
    :catch_0
    move-exception v3

    .line 176
    .local v3, e:Lcom/android/i18n/phonenumbers/NumberParseException;
    const-string v8, "NumberParseException happens"

    invoke-static {v8}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 177
    new-instance v8, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;

    const-string v9, ""

    const-string v10, ""

    invoke-direct {v8, p1, v9, p0, v10}, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    .end local v3           #e:Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_0
    invoke-virtual {v6, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, nationalSignificantNumber:Ljava/lang/String;
    const-string v0, ""

    .line 185
    .local v0, areaCode:Ljava/lang/String;
    const-string v7, ""

    .line 186
    .local v7, subscriberNumber:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getPossibleNationalPrefix()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, areaCodePrefix:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "phone number = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 188
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nationalSignificantNumber = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v6, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getLengthOfGeographicalAreaCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result v1

    .line 190
    .local v1, areaCodeLength:I
    if-lez v1, :cond_1

    .line 191
    const/4 v8, 0x0

    invoke-virtual {v4, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 193
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "areaCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 194
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subscriberNumber = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 198
    :goto_1
    new-instance v8, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;

    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0, v7, v2}, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 196
    :cond_1
    move-object v7, v4

    goto :goto_1
.end method

.method public static isRadioOn(Lcom/mediatek/calloption/Request;I)Z
    .locals 4
    .parameter "request"
    .parameter "slot"

    .prologue
    const/4 v3, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/mediatek/calloption/Request;->getTelephonyInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-nez v2, :cond_0

    .line 144
    :goto_0
    return v3

    .line 133
    :cond_0
    const/4 v1, 0x0

    .line 135
    .local v1, result:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/calloption/Request;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/mediatek/calloption/Request;->getTelephonyInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "RemoteException happens in isRadioOn()"

    invoke-static {v2}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/mediatek/calloption/Request;->getTelephonyInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static isSimInsert(Lcom/mediatek/calloption/Request;I)Z
    .locals 4
    .parameter "request"
    .parameter "slot"

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/mediatek/calloption/Request;->getTelephonyInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    if-nez v3, :cond_0

    move v1, v2

    .line 126
    :goto_0
    return v1

    .line 119
    :cond_0
    const/4 v1, 0x0

    .line 121
    .local v1, result:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/calloption/Request;->getTelephonyInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "RemoteException happens in isSimInsert()"

    invoke-static {v3}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    move v1, v2

    .line 124
    goto :goto_0
.end method

.method public static isValidNumberForCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "number"
    .parameter "countryISO"

    .prologue
    .line 235
    const/4 v1, 0x0

    .line 237
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v3

    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumberForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 242
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidNumberForCountryISO(), PhoneNumberUtil.isValidNumberForRegion() result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 243
    if-nez v1, :cond_0

    .line 244
    invoke-static {p2, p1}, Landroid/telephony/PhoneNumberUtils;->isValidNumber(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 245
    .local v2, result2:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidNumberForCountryISO(), result2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 246
    packed-switch v2, :pswitch_data_0

    .line 267
    const/4 v1, 0x0

    .line 271
    .end local v2           #result2:I
    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidNumberForCountryISO(), number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", country ISO = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 273
    return v1

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Lcom/android/i18n/phonenumbers/NumberParseException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch NumberParseException, exception info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    .end local v0           #e:Lcom/android/i18n/phonenumbers/NumberParseException;
    .restart local v2       #result2:I
    :pswitch_0
    const/4 v1, 0x0

    .line 251
    goto :goto_1

    .line 254
    :pswitch_1
    const/4 v1, 0x1

    .line 255
    goto :goto_1

    .line 257
    :pswitch_2
    invoke-static {p0}, Lcom/mediatek/calloption/CallOptionUtils;->getCurrentCountryISO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    const/4 v1, 0x1

    goto :goto_1

    .line 260
    :cond_1
    const/4 v1, 0x0

    .line 262
    goto :goto_1

    .line 264
    :pswitch_3
    const/4 v1, 0x0

    .line 265
    goto :goto_1

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 318
    const-string v0, "CallOptionUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void
.end method

.method public static queryIPPrefix(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "slot"
    .parameter "isMultipleSim"

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v4, "ipprefix"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    if-eqz p2, :cond_0

    .line 280
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    .line 281
    .local v3, simInfo:Landroid/provider/Telephony$SIMInfo;
    iget-wide v4, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 283
    .end local v3           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, ipPrefix:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryIPPrefix, ipPrefix = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 286
    return-object v1
.end method
