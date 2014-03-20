.class public abstract Lcom/mediatek/calloption/InternationalCallOptionHandler;
.super Lcom/mediatek/calloption/CallOptionBaseHandler;
.source "InternationalCallOptionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final COUNTRY_ISO_CHINA:Ljava/lang/String; = "CN"

.field private static final COUNTRY_ISO_TAIWAN:Ljava/lang/String; = "TW"

.field private static final COUNTRY_ISO_USA:Ljava/lang/String; = "US"

.field private static final INTERNATIONAL_DIALING_PREFERENCE_KEY:Ljava/lang/String; = "international_dialing_key"

.field private static final TAG:Ljava/lang/String; = "InternationalCallOptionHandler"


# instance fields
.field protected mDialogHandler:Lcom/mediatek/calloption/InternationalDialogHandler;

.field private mRequest:Lcom/mediatek/calloption/Request;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/calloption/CallOptionBaseHandler;-><init>()V

    return-void
.end method

.method private addValidCountryISOFromCallHistory(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "number"
    .parameter
    .parameter "onlyFirstOne"
    .parameter "deniedCountryISO"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 509
    .local p3, validCountryISOList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/mediatek/phone/provider/CallHistory$Calls;->getAllCountryISO(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 510
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 511
    .local v0, countryISO:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 512
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 513
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4

    .line 514
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 515
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 516
    :cond_0
    invoke-static {p1, p2, v0}, Lcom/mediatek/calloption/CallOptionUtils;->isValidNumberForCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 517
    if-eqz p4, :cond_2

    .line 518
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 532
    :cond_1
    :goto_1
    return-void

    .line 522
    :cond_2
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 523
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 530
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private findValidCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 11
    .parameter "context"
    .parameter "number"
    .parameter "preferCountryISO"
    .parameter "deniedCountryISO"
    .parameter "onlyFirstOne"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .local v3, validCountryISOList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    invoke-static {p1, p2, p3}, Lcom/mediatek/calloption/CallOptionUtils;->isValidNumberForCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    if-eqz p5, :cond_0

    .line 503
    :goto_0
    return-object v3

    .line 443
    :cond_0
    invoke-static {p1}, Lcom/mediatek/calloption/CallOptionUtils;->getCurrentCountryISO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 444
    .local v6, currentCountryISO:Ljava/lang/String;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 445
    :cond_1
    invoke-static {p1, p2, v6}, Lcom/mediatek/calloption/CallOptionUtils;->isValidNumberForCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 446
    if-eqz p5, :cond_2

    .line 447
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 450
    :cond_2
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 451
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    .line 457
    .local v10, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v0}, Lcom/mediatek/calloption/Request;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 458
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoGemini(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 459
    .local v7, sim1CountryISO:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 461
    :cond_4
    invoke-static {p1, p2, v7}, Lcom/mediatek/calloption/CallOptionUtils;->isValidNumberForCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 462
    if-eqz p5, :cond_5

    .line 463
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 466
    :cond_5
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 467
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoGemini(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 473
    .local v8, sim2CountryISO:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 475
    :cond_7
    invoke-static {p1, p2, v8}, Lcom/mediatek/calloption/CallOptionUtils;->isValidNumberForCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 476
    if-eqz p5, :cond_8

    .line 477
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 480
    :cond_8
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 481
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v7           #sim1CountryISO:Ljava/lang/String;
    .end local v8           #sim2CountryISO:Ljava/lang/String;
    :cond_9
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v4, p5

    move-object v5, p4

    .line 502
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->addValidCountryISOFromCallHistory(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 487
    :cond_a
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 488
    .local v9, simCountryISO:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 490
    :cond_b
    invoke-static {p1, p2, v9}, Lcom/mediatek/calloption/CallOptionUtils;->isValidNumberForCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 491
    if-eqz p5, :cond_c

    .line 492
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 495
    :cond_c
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 496
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private findValidCountryISOFromDefaultCountry(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "number"

    .prologue
    .line 535
    const-string v0, ""

    .line 536
    .local v0, validCountryISO:Ljava/lang/String;
    invoke-static {p1}, Lcom/mediatek/calloption/CallOptionUtils;->getCurrentCountryISO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CN"

    invoke-static {p1, p2, v1}, Lcom/mediatek/calloption/CallOptionUtils;->isValidNumberForCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    const-string v0, "CN"

    .line 550
    :cond_0
    :goto_0
    return-object v0

    .line 540
    :cond_1
    invoke-static {p1}, Lcom/mediatek/calloption/CallOptionUtils;->getCurrentCountryISO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "TW"

    invoke-static {p1, p2, v1}, Lcom/mediatek/calloption/CallOptionUtils;->isValidNumberForCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 542
    const-string v0, "TW"

    goto :goto_0

    .line 544
    :cond_2
    invoke-static {p1}, Lcom/mediatek/calloption/CallOptionUtils;->getCurrentCountryISO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "US"

    invoke-static {p1, p2, v1}, Lcom/mediatek/calloption/CallOptionUtils;->isValidNumberForCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    const-string v0, "US"

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 562
    const-string v0, "InternationalCallOptionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 554
    const-string v0, "dismissDialog()"

    invoke-static {v0}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mDialogHandler:Lcom/mediatek/calloption/InternationalDialogHandler;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mDialogHandler:Lcom/mediatek/calloption/InternationalDialogHandler;

    invoke-virtual {v0}, Lcom/mediatek/calloption/InternationalDialogHandler;->onHandledDialogDismiss()V

    .line 558
    :cond_0
    invoke-super {p0}, Lcom/mediatek/calloption/CallOptionBaseHandler;->dismissDialog()V

    .line 559
    return-void
.end method

.method public handleRequest(Lcom/mediatek/calloption/Request;)V
    .locals 65
    .parameter "request"

    .prologue
    .line 79
    const-string v5, "handleRequest()"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 81
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/calloption/CallOptionUtils;->getInitialNumber(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v12

    .line 87
    .local v12, number:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "international_dialing_key"

    const/4 v9, 0x0

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v57

    .line 89
    .local v57, internationalDialingSetting:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "internationalDialingSetting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.android.phone.extra.international"

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 92
    .local v17, internationalDialOption:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "internationalDialOption = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 93
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "+"

    invoke-virtual {v12, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "#"

    invoke-virtual {v12, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.android.phone.extra.ip"

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x2

    move/from16 v0, v17

    if-eq v5, v0, :cond_1

    const/4 v5, 0x1

    move/from16 v0, v57

    if-eq v5, v0, :cond_0

    const/4 v5, 0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 100
    :cond_1
    const-string v5, "number beging with + or international dialing setting is off or some other conditions, dial directly"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v5, :cond_2

    .line 102
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    .line 378
    :cond_2
    :goto_0
    return-void

    .line 106
    :cond_3
    const/16 v60, 0x0

    .line 108
    .local v60, isOffhook:Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getTelephonyInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v60

    .line 112
    :goto_1
    if-eqz v60, :cond_4

    .line 113
    const-string v5, "is offhook"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 114
    const/4 v5, 0x6

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/calloption/CallOptionUtils;->getCurrentCountryISO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v12}, Landroid/telephony/PhoneNumberUtils;->isValidNumber(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 116
    const-string v5, "current phone state is offhook and number is valid when call exists, so call directly"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v5, :cond_2

    .line 118
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto :goto_0

    .line 109
    :catch_0
    move-exception v55

    .line 110
    .local v55, e:Landroid/os/RemoteException;
    const-string v5, "Remote exception happen when call ITelephony::isOffhook()"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 124
    .end local v55           #e:Landroid/os/RemoteException;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/CallOptionUtils;->getCurrentCountryISO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, currentCountryISO:Ljava/lang/String;
    move-object/from16 v26, v12

    .line 126
    .local v26, number2:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CallHistory getCallInfo start, number2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-static {v5, v0}, Lcom/mediatek/phone/provider/CallHistory$Calls;->getCallInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;

    move-result-object v51

    .line 128
    .local v51, callInfo:Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;
    const/4 v5, 0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_f

    if-eqz v51, :cond_f

    .line 129
    const-string v5, "CallHistory getCallInfo end, get same call history!"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", number2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", country iso = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    iget-object v6, v0, Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;->mCountryISO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " area code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    iget-object v6, v0, Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", confirm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    iget-wide v9, v0, Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;->mConfirm:J

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, v51

    iget-object v7, v0, Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;->mCountryISO:Ljava/lang/String;

    .line 133
    .local v7, countryISORecorded:Ljava/lang/String;
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;->mAreaCode:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 134
    .local v23, areaCodeRecorded:Ljava/lang/String;
    move-object/from16 v0, v51

    iget-wide v0, v0, Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;->mConfirm:J

    move-wide/from16 v52, v0

    .line 137
    .local v52, confirm:J
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 139
    const-string v5, "find same call history, and call history\'s country iso is same as current one, dial directly"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v5, :cond_2

    .line 141
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto/16 :goto_0

    .line 145
    :cond_5
    const-string v5, "The current country ISO is different with recorded one"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 148
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->getInternationalPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 149
    .local v59, internationlPrefixRecorded:Ljava/lang/String;
    invoke-static/range {v59 .. v59}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v64

    .line 150
    .local v64, pattern:Ljava/util/regex/Pattern;
    move-object/from16 v0, v64

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v62

    .line 151
    .local v62, matcher:Ljava/util/regex/Matcher;
    invoke-virtual/range {v62 .. v62}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual/range {v62 .. v62}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 154
    const-string v5, "The dialed number starts with recorded country ISO\'s international prefix"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 155
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->getInternationalPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 156
    .local v58, internationlPrefixCurrent:Ljava/lang/String;
    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 158
    const-string v5, "Current country ISO\'s international prefix is different with that of recorded one"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 159
    const-string v5, "+"

    move-object/from16 v0, v62

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 161
    .local v13, formatNumber:Ljava/lang/String;
    const-wide/16 v5, 0x1

    cmp-long v5, v5, v52

    if-nez v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.android.phone.extra.forbid_dialog"

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_6

    .line 162
    const-string v5, "confirm is 1, pop up internation prefix confirm dialog"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 165
    new-instance v61, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v61

    invoke-direct {v0, v5, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .local v61, locale:Ljava/util/Locale;
    new-instance v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    move-object/from16 v0, v61

    invoke-virtual {v0, v6}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v4 .. v16}, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 169
    .local v4, prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v14, p0

    move-object/from16 v18, v4

    move-object/from16 v19, p0

    move-object/from16 v20, p0

    move-object/from16 v21, p0

    invoke-virtual/range {v14 .. v21}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->showDialog(Landroid/content/Context;IILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 172
    new-instance v5, Lcom/mediatek/phone/provider/CallHistoryAsync;

    invoke-direct {v5}, Lcom/mediatek/phone/provider/CallHistoryAsync;-><init>()V

    new-instance v6, Lcom/mediatek/phone/provider/CallHistoryAsync$UpdateConfirmFlagArgs;

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-direct {v6, v9, v12, v10, v11}, Lcom/mediatek/phone/provider/CallHistoryAsync$UpdateConfirmFlagArgs;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {v5, v6}, Lcom/mediatek/phone/provider/CallHistoryAsync;->updateConfirmFlag(Lcom/mediatek/phone/provider/CallHistoryAsync$UpdateConfirmFlagArgs;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 178
    .end local v4           #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    .end local v61           #locale:Ljava/util/Locale;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {v5, v6, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    .end local v13           #formatNumber:Ljava/lang/String;
    :cond_7
    const-string v5, "Current country ISO\'s international prefix is same as that of recorded one, dial directly"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v5, :cond_2

    .line 183
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto/16 :goto_0

    .line 187
    .end local v58           #internationlPrefixCurrent:Ljava/lang/String;
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", countryISORecorded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 189
    const-wide/16 v5, 0x1

    cmp-long v5, v5, v52

    if-nez v5, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.android.phone.extra.forbid_dialog"

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_d

    .line 190
    const-string v5, "confirm == 1, show confirm dialog"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 191
    new-instance v61, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v61

    invoke-direct {v0, v5, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .restart local v61       #locale:Ljava/util/Locale;
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 194
    .local v19, countryCode:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    .line 196
    .local v20, defaultCountryName:Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-static {v0, v7}, Lcom/mediatek/calloption/CallOptionUtils;->getNumberInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;

    move-result-object v63

    .line 198
    .local v63, numberInfo:Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;
    move-object/from16 v0, v26

    invoke-static {v7, v0}, Landroid/telephony/PhoneNumberUtils;->isAreaCodeNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 200
    const-string v5, "The number with recorded country prefix can be dialed directly, pop up country single select dialog"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 202
    new-instance v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCode:Ljava/lang/String;

    move-object/from16 v23, v0

    .end local v23           #areaCodeRecorded:Ljava/lang/String;
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mSubscriber:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCodePrefix:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v18, v4

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    invoke-direct/range {v18 .. v30}, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 205
    .restart local v4       #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v28

    const/16 v29, 0x2

    move-object/from16 v27, p0

    move/from16 v30, v17

    move-object/from16 v31, v4

    move-object/from16 v32, p0

    move-object/from16 v33, p0

    move-object/from16 v34, p0

    invoke-virtual/range {v27 .. v34}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->showDialog(Landroid/content/Context;IILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 211
    .end local v4           #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    .restart local v23       #areaCodeRecorded:Ljava/lang/String;
    :cond_9
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 212
    const-string v5, "area code recorded is not empty"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v61

    invoke-static {v5, v7, v0}, Lcom/mediatek/calloption/CallOptionUtils;->getCityGeoDescription(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    .line 217
    .local v24, geoDescriptionOfCity:Ljava/lang/String;
    new-instance v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    const/16 v25, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCodePrefix:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v18, v4

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v28, v26

    invoke-direct/range {v18 .. v30}, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 220
    .restart local v4       #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v27, p0

    move/from16 v30, v17

    move-object/from16 v31, v4

    move-object/from16 v32, p0

    move-object/from16 v33, p0

    move-object/from16 v34, p0

    invoke-virtual/range {v27 .. v34}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->showDialog(Landroid/content/Context;IILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 224
    .end local v4           #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    .end local v24           #geoDescriptionOfCity:Ljava/lang/String;
    :cond_a
    const-string v5, "area code recorded is empty"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 227
    if-eqz v63, :cond_b

    move-object/from16 v0, v63

    iget-object v5, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCode:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 228
    const-string v5, "The number already has area code"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 232
    move-object/from16 v0, v26

    move-object/from16 v1, v61

    invoke-static {v0, v7, v1}, Lcom/mediatek/calloption/CallOptionUtils;->getCityGeoDescription(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    .line 235
    .restart local v24       #geoDescriptionOfCity:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "area name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 236
    new-instance v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCode:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v34, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mSubscriber:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v27, v4

    move-object/from16 v28, v19

    move-object/from16 v29, v20

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v33, v24

    move-object/from16 v35, v26

    invoke-direct/range {v27 .. v39}, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 239
    .restart local v4       #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v27, p0

    move/from16 v30, v17

    move-object/from16 v31, v4

    move-object/from16 v32, p0

    move-object/from16 v33, p0

    move-object/from16 v34, p0

    invoke-virtual/range {v27 .. v34}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->showDialog(Landroid/content/Context;IILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 243
    .end local v4           #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    .end local v24           #geoDescriptionOfCity:Ljava/lang/String;
    :cond_b
    const-string v5, "The number do not include area code"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v5}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/mediatek/phone/provider/CallHistory$Calls;->getLatestAreaCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 246
    .local v32, latestAreaCode:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 247
    const-string v5, "can get latest area code from other recorded number"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v61

    invoke-static {v5, v7, v0}, Lcom/mediatek/calloption/CallOptionUtils;->getCityGeoDescription(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    .line 251
    .restart local v24       #geoDescriptionOfCity:Ljava/lang/String;
    new-instance v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    const/16 v34, 0x1

    const/16 v36, 0x0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mSubscriber:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCodePrefix:Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v27, v4

    move-object/from16 v28, v19

    move-object/from16 v29, v20

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v33, v24

    move-object/from16 v35, v12

    invoke-direct/range {v27 .. v39}, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 254
    .restart local v4       #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v34

    const/16 v35, 0x7

    move-object/from16 v33, p0

    move/from16 v36, v17

    move-object/from16 v37, v4

    move-object/from16 v38, p0

    move-object/from16 v39, p0

    move-object/from16 v40, p0

    invoke-virtual/range {v33 .. v40}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->showDialog(Landroid/content/Context;IILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 258
    .end local v4           #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    .end local v24           #geoDescriptionOfCity:Ljava/lang/String;
    :cond_c
    const-string v5, "can NOT get latest area code from other recorded number"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 259
    new-instance v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x1

    const/16 v42, 0x0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mSubscriber:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCodePrefix:Ljava/lang/String;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v33, v4

    move-object/from16 v34, v19

    move-object/from16 v35, v20

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 v41, v12

    invoke-direct/range {v33 .. v45}, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 262
    .restart local v4       #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v34

    const/16 v35, 0x6

    move-object/from16 v33, p0

    move/from16 v36, v17

    move-object/from16 v37, v4

    move-object/from16 v38, p0

    move-object/from16 v39, p0

    move-object/from16 v40, p0

    invoke-virtual/range {v33 .. v40}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->showDialog(Landroid/content/Context;IILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 270
    .end local v4           #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    .end local v19           #countryCode:Ljava/lang/String;
    .end local v20           #defaultCountryName:Ljava/lang/String;
    .end local v32           #latestAreaCode:Ljava/lang/String;
    .end local v61           #locale:Ljava/util/Locale;
    .end local v63           #numberInfo:Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 271
    .local v56, finalNumber:Ljava/lang/String;
    if-nez v56, :cond_e

    .line 272
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    move-object/from16 v0, v26

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v5, :cond_2

    .line 376
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto/16 :goto_0

    .line 274
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    move-object/from16 v0, v56

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 281
    .end local v7           #countryISORecorded:Ljava/lang/String;
    .end local v23           #areaCodeRecorded:Ljava/lang/String;
    .end local v52           #confirm:J
    .end local v56           #finalNumber:Ljava/lang/String;
    .end local v59           #internationlPrefixRecorded:Ljava/lang/String;
    .end local v62           #matcher:Ljava/util/regex/Matcher;
    .end local v64           #pattern:Ljava/util/regex/Pattern;
    :cond_f
    const-string v5, "CallHistory getCallInfo end, do not find same call history!"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 282
    const-string v36, ""

    .line 283
    .local v36, preferCountryISO:Ljava/lang/String;
    const-string v37, ""

    .line 284
    .local v37, deniedCountryISO:Ljava/lang/String;
    const/4 v5, 0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_11

    .line 285
    if-eqz v51, :cond_10

    .line 286
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;->mCountryISO:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 288
    :cond_10
    move-object/from16 v37, v8

    .line 291
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v34

    const/16 v38, 0x1

    move-object/from16 v33, p0

    move-object/from16 v35, v12

    invoke-direct/range {v33 .. v38}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->findValidCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v50

    .line 293
    .local v50, validCountryISOList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v50, :cond_12

    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_12
    const-string v41, ""

    .line 296
    .local v41, validCountryISO:Ljava/lang/String;
    :goto_3
    const/4 v5, 0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_16

    .line 297
    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 298
    const-string v5, "can not find valid country iso, show invalid number dialog"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->showInvalidNumberDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 293
    .end local v41           #validCountryISO:Ljava/lang/String;
    :cond_13
    const/4 v5, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v41, v5

    goto :goto_3

    .line 303
    .restart local v41       #validCountryISO:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 304
    const-string v5, "The number is valid for current country ISO, dial directly"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v5, :cond_2

    .line 307
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto/16 :goto_0

    .line 311
    :cond_15
    const-string v5, "The number is NOT valid for current country ISO"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 314
    :cond_16
    const/4 v5, 0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_18

    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 316
    const-string v5, "can not find valid country iso, set default country ISO"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->findValidCountryISOFromDefaultCountry(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 319
    .local v54, defaultValidCountryISO:Ljava/lang/String;
    invoke-static/range {v54 .. v54}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 320
    const-string v5, "default valid country ISO is null"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 331
    .end local v54           #defaultValidCountryISO:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, v41

    invoke-static {v12, v0}, Lcom/mediatek/calloption/CallOptionUtils;->getNumberInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;

    move-result-object v63

    .line 333
    .restart local v63       #numberInfo:Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "valid country ISO = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 334
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number info = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v63

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 336
    new-instance v61, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v61

    move-object/from16 v1, v41

    invoke-direct {v0, v5, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .restart local v61       #locale:Ljava/util/Locale;
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 339
    .restart local v19       #countryCode:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v40

    .line 340
    .local v40, countryName:Ljava/lang/String;
    move-object/from16 v0, v41

    invoke-static {v0, v12}, Landroid/telephony/PhoneNumberUtils;->isAreaCodeNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 342
    const-string v5, "the number can be dialed directly, just show dialog for country selection"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 344
    new-instance v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCode:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v47, 0x0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mSubscriber:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCodePrefix:Ljava/lang/String;

    move-object/from16 v49, v0

    move-object/from16 v38, v4

    move-object/from16 v39, v19

    move-object/from16 v42, v8

    move-object/from16 v46, v12

    invoke-direct/range {v38 .. v50}, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 347
    .restart local v4       #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v43

    const/16 v44, 0x3

    move-object/from16 v42, p0

    move/from16 v45, v17

    move-object/from16 v46, v4

    move-object/from16 v47, p0

    move-object/from16 v48, p0

    move-object/from16 v49, p0

    invoke-virtual/range {v42 .. v49}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->showDialog(Landroid/content/Context;IILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 322
    .end local v4           #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    .end local v19           #countryCode:Ljava/lang/String;
    .end local v40           #countryName:Ljava/lang/String;
    .end local v61           #locale:Ljava/util/Locale;
    .end local v63           #numberInfo:Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;
    .restart local v54       #defaultValidCountryISO:Ljava/lang/String;
    :cond_17
    move-object/from16 v0, v50

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    move-object/from16 v41, v54

    goto/16 :goto_4

    .line 326
    .end local v54           #defaultValidCountryISO:Ljava/lang/String;
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v34

    const/16 v38, 0x0

    move-object/from16 v33, p0

    move-object/from16 v35, v12

    invoke-direct/range {v33 .. v38}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->findValidCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v50

    goto/16 :goto_4

    .line 351
    .restart local v19       #countryCode:Ljava/lang/String;
    .restart local v40       #countryName:Ljava/lang/String;
    .restart local v61       #locale:Ljava/util/Locale;
    .restart local v63       #numberInfo:Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v5}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-static {v5, v0}, Lcom/mediatek/phone/provider/CallHistory$Calls;->getLatestAreaCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 352
    .restart local v32       #latestAreaCode:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "latest area code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 353
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 354
    const-string v5, "can get latest area code from records"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v41

    move-object/from16 v1, v61

    invoke-static {v5, v0, v1}, Lcom/mediatek/calloption/CallOptionUtils;->getCityGeoDescription(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    .line 357
    .restart local v24       #geoDescriptionOfCity:Ljava/lang/String;
    new-instance v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    const/16 v45, 0x1

    const/16 v47, 0x0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCodePrefix:Ljava/lang/String;

    move-object/from16 v49, v0

    move-object/from16 v38, v4

    move-object/from16 v39, v19

    move-object/from16 v42, v8

    move-object/from16 v43, v32

    move-object/from16 v44, v24

    move-object/from16 v46, v12

    move-object/from16 v48, v12

    invoke-direct/range {v38 .. v50}, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 360
    .restart local v4       #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v43

    const/16 v44, 0x5

    move-object/from16 v42, p0

    move/from16 v45, v17

    move-object/from16 v46, v4

    move-object/from16 v47, p0

    move-object/from16 v48, p0

    move-object/from16 v49, p0

    invoke-virtual/range {v42 .. v49}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->showDialog(Landroid/content/Context;IILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 364
    .end local v4           #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    .end local v24           #geoDescriptionOfCity:Ljava/lang/String;
    :cond_1a
    const-string v5, "can NOT get latest area code from records"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 365
    new-instance v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x1

    const/16 v47, 0x0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCodePrefix:Ljava/lang/String;

    move-object/from16 v49, v0

    move-object/from16 v38, v4

    move-object/from16 v39, v19

    move-object/from16 v42, v8

    move-object/from16 v46, v12

    move-object/from16 v48, v12

    invoke-direct/range {v38 .. v50}, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 368
    .restart local v4       #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v43

    const/16 v44, 0x4

    move-object/from16 v42, p0

    move/from16 v45, v17

    move-object/from16 v46, v4

    move-object/from16 v47, p0

    move-object/from16 v48, p0

    move-object/from16 v49, p0

    invoke-virtual/range {v42 .. v49}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->showDialog(Landroid/content/Context;IILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 417
    const-string v0, "onCancel()"

    invoke-static {v0}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v0}, Lcom/mediatek/calloption/Request;->getResultHandler()Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;->onHandlingFinish()V

    .line 419
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 381
    const/4 v2, -0x1

    if-ne p2, v2, :cond_4

    .line 382
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mDialogHandler:Lcom/mediatek/calloption/InternationalDialogHandler;

    if-nez v2, :cond_1

    .line 384
    iget-object v2, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v2, :cond_0

    .line 385
    iget-object v2, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    iget-object v3, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v2, v3}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mDialogHandler:Lcom/mediatek/calloption/InternationalDialogHandler;

    invoke-virtual {v2}, Lcom/mediatek/calloption/InternationalDialogHandler;->getSelectResult()Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, numberSelect:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 391
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v2}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v3}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/calloption/CallOptionUtils;->getInitialNumber(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, number:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 396
    new-instance v2, Lcom/mediatek/phone/provider/CallHistoryAsync;

    invoke-direct {v2}, Lcom/mediatek/phone/provider/CallHistoryAsync;-><init>()V

    new-instance v3, Lcom/mediatek/phone/provider/CallHistoryAsync$DeleteCallArgs;

    iget-object v4, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v4}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/mediatek/phone/provider/CallHistoryAsync$DeleteCallArgs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/mediatek/phone/provider/CallHistoryAsync;->deleteCall(Lcom/mediatek/phone/provider/CallHistoryAsync$DeleteCallArgs;)Landroid/os/AsyncTask;

    .line 404
    .end local v0           #number:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v2, :cond_0

    .line 405
    iget-object v2, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    iget-object v3, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v2, v3}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto :goto_0

    .line 399
    .restart local v0       #number:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v2}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 402
    .end local v0           #number:Ljava/lang/String;
    :cond_3
    const-string v2, "no select from alert dialog, something wrong"

    invoke-static {v2}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 407
    .end local v1           #numberSelect:Ljava/lang/String;
    :cond_4
    const/4 v2, -0x2

    if-ne p2, v2, :cond_0

    .line 408
    iget-object v2, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->cancel()V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 413
    const-string v0, "onDismiss()"

    invoke-static {v0}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method protected abstract showDialog(Landroid/content/Context;IILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
.end method

.method protected abstract showInvalidNumberDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
.end method
