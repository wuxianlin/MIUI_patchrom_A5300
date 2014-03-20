.class public Lcom/mediatek/telephony/SmsManagerEx;
.super Ljava/lang/Object;
.source "SmsManagerEx.java"

# interfaces
.implements Lcom/mediatek/common/telephony/ISmsManagerExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "SMS"

.field private static final sInstance:Lcom/mediatek/telephony/SmsManagerEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/mediatek/telephony/SmsManagerEx;

    invoke-direct {v0}, Lcom/mediatek/telephony/SmsManagerEx;-><init>()V

    sput-object v0, Lcom/mediatek/telephony/SmsManagerEx;->sInstance:Lcom/mediatek/telephony/SmsManagerEx;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private static createMessageListFromRawRecords(Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter "slotId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 726
    .local p0, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    const-string v5, "SMS"

    const-string v6, "call createMessageListFromRawRecords"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const/4 v2, 0x0

    .line 728
    .local v2, geminiMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p0, :cond_2

    .line 729
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 730
    .local v0, count:I
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #geminiMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .restart local v2       #geminiMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 733
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 735
    .local v1, data:Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 736
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6, p1}, Landroid/telephony/gemini/GeminiSmsMessage;->createFromEfRecord(I[BI)Landroid/telephony/gemini/GeminiSmsMessage;

    move-result-object v3

    .line 738
    .local v3, geminiSms:Landroid/telephony/gemini/GeminiSmsMessage;
    if-eqz v3, :cond_0

    .line 739
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    .end local v3           #geminiSms:Landroid/telephony/gemini/GeminiSmsMessage;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 743
    .end local v1           #data:Lcom/android/internal/telephony/SmsRawData;
    :cond_1
    const-string v5, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "actual SIM sms count is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    .end local v0           #count:I
    .end local v4           #i:I
    :goto_1
    return-object v2

    .line 745
    :cond_2
    const-string v5, "SMS"

    const-string v6, "fail to parse SIM sms, records is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getDefault()Lcom/mediatek/telephony/SmsManagerEx;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/mediatek/telephony/SmsManagerEx;->sInstance:Lcom/mediatek/telephony/SmsManagerEx;

    return-object v0
.end method

.method private static getSmsParameters(I)Landroid/telephony/SmsParameters;
    .locals 6
    .parameter "slotId"

    .prologue
    const/4 v3, 0x0

    .line 615
    const-string v4, "SMS"

    const-string v5, "[EFsmsp call getSmsParameters"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-static {p0}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 619
    .local v2, svcName:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 620
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 621
    const-string v4, "SMS"

    const-string v5, "[EFsmsp to get params from ef"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getSmsParameters()Landroid/telephony/SmsParameters;

    move-result-object v3

    .line 632
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :goto_0
    return-object v3

    .line 624
    .restart local v1       #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    const-string v4, "SMS"

    const-string v5, "[EFsmsp fail to get service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 627
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 628
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "SMS"

    const-string v5, "[EFsmsp fail because of RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const-string v4, "SMS"

    const-string v5, "[EFsmsp fail to get EFsmsp info"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getSmsServiceName(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 758
    if-nez p0, :cond_0

    .line 759
    const-string v0, "isms"

    .line 763
    :goto_0
    return-object v0

    .line 760
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 761
    const-string v0, "isms2"

    goto :goto_0

    .line 763
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static insertRawMessageToIccCard(I[B[BI)Landroid/telephony/SimSmsInsertStatus;
    .locals 6
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"
    .parameter "slotId"

    .prologue
    .line 489
    const-string v3, "SMS"

    const-string v4, "call insertRawMessageToIccCard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v2, 0x0

    .line 492
    .local v2, ret:Landroid/telephony/SimSmsInsertStatus;
    invoke-static {p3}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 495
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 496
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISms;->insertRawMessageToIccCard(I[B[B)Landroid/telephony/SimSmsInsertStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 502
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    const-string v4, "SMS"

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[insertRaw "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-object v2

    .line 502
    :cond_1
    const-string v3, "[insertRaw null"

    goto :goto_1

    .line 498
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .locals 3
    .parameter "destinationAddress"
    .parameter "text"
    .parameter "sentIntent"

    .prologue
    .line 779
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 781
    .local v1, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 784
    .local v0, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    invoke-static {p0, v0, v1}, Lcom/mediatek/telephony/SmsManagerEx;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    return v2
.end method

.method private static isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5
    .parameter "destinationAddress"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v2, 0x1

    .line 807
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 833
    :cond_0
    :goto_0
    return v2

    .line 811
    :cond_1
    invoke-static {p0}, Lcom/mediatek/telephony/SmsManagerEx;->isValidSmsDestinationAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 812
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 813
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 814
    .local v1, sentIntent:Landroid/app/PendingIntent;
    if-eqz v1, :cond_2

    .line 816
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 822
    .end local v1           #sentIntent:Landroid/app/PendingIntent;
    :cond_3
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid destinationAddress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/4 v2, 0x0

    goto :goto_0

    .line 826
    .end local v0           #i:I
    :cond_4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 827
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 829
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v2, :cond_0

    .line 830
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid message body"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 817
    .restart local v0       #i:I
    .restart local v1       #sentIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private static isValidSmsDestinationAddress(Ljava/lang/String;)Z
    .locals 6
    .parameter "da"

    .prologue
    const/4 v3, 0x1

    .line 844
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 845
    .local v0, encodeAddress:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 856
    :cond_0
    :goto_0
    return v3

    .line 849
    :cond_1
    const/4 v2, 0x0

    .line 850
    .local v2, spaceCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 851
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_3

    .line 852
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 850
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 856
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    if-eq v4, v5, :cond_0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static setSmsParameters(Landroid/telephony/SmsParameters;I)Z
    .locals 6
    .parameter "params"
    .parameter "slotId"

    .prologue
    const/4 v3, 0x0

    .line 636
    const-string v4, "SMS"

    const-string v5, "[EFsmsp call setSmsParameters"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-static {p1}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 640
    .local v2, svcName:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 641
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 642
    const-string v4, "SMS"

    const-string v5, "[EFsmsp to set params into ef"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISms;->setSmsParameters(Landroid/telephony/SmsParameters;)Z

    move-result v3

    .line 652
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :goto_0
    return v3

    .line 645
    .restart local v1       #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    const-string v4, "SMS"

    const-string v5, "[EFsmsp fail to get service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 648
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 649
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "SMS"

    const-string v5, "[EFsmsp fail because of RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public copySmsPduToIcc([B[BII)I
    .locals 4
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"
    .parameter "slotId"

    .prologue
    const/4 v2, -0x1

    .line 701
    invoke-static {p3, p2, p1, p4}, Lcom/mediatek/telephony/SmsManagerEx;->insertRawMessageToIccCard(I[B[BI)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v1

    .line 703
    .local v1, smsStatus:Landroid/telephony/SimSmsInsertStatus;
    if-nez v1, :cond_1

    .line 712
    :cond_0
    :goto_0
    return v2

    .line 706
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/SimSmsInsertStatus;->getIndex()[I

    move-result-object v0

    .line 708
    .local v0, index:[I
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 709
    const/4 v2, 0x0

    aget v2, v0, v2

    goto :goto_0
.end method

.method public deleteAllMessagesFromIcc(I)Z
    .locals 1
    .parameter "slotId"

    .prologue
    .line 343
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/telephony/SmsManagerEx;->deleteMessageFromIcc(II)Z

    move-result v0

    return v0
.end method

.method public deleteMessageFromIcc(II)Z
    .locals 7
    .parameter "messageIndex"
    .parameter "slotId"

    .prologue
    .line 314
    const-string v5, "SMS"

    const-string v6, "call deleteMessageFromIcc"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v4, 0x0

    .line 316
    .local v4, success:Z
    invoke-static {p2}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, isms:Ljava/lang/String;
    const/16 v5, 0xaf

    new-array v3, v5, [B

    .line 319
    .local v3, pdu:[B
    const/4 v5, -0x1

    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 322
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 323
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 324
    const/4 v5, 0x0

    invoke-interface {v1, p1, v5, v3}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 331
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v4

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, ex:Landroid/os/RemoteException;
    const-string v5, "SMS"

    const-string v6, "deleteMessageFromIcc, RemoteException!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllMessagesFromIcc(I)Ljava/util/ArrayList;
    .locals 13
    .parameter "slotId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    const-string v10, "SMS"

    const-string v11, "call getAllMessagesFromIcc"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-static {p1}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v5

    .line 393
    .local v5, isms:Ljava/lang/String;
    const/4 v7, 0x0

    .line 396
    .local v7, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 397
    .local v3, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_0

    .line 398
    invoke-interface {v3}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEf()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 404
    .end local v3           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    const/4 v9, 0x0

    .line 405
    .local v9, sz:I
    if-eqz v7, :cond_1

    .line 406
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .line 408
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v9, :cond_5

    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, data:[B
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/SmsRawData;

    .line 411
    .local v6, record:Lcom/android/internal/telephony/SmsRawData;
    if-nez v6, :cond_3

    .line 408
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 400
    .end local v0           #data:[B
    .end local v2           #i:I
    .end local v6           #record:Lcom/android/internal/telephony/SmsRawData;
    .end local v9           #sz:I
    :catch_0
    move-exception v1

    .line 401
    .local v1, ex:Landroid/os/RemoteException;
    const-string v10, "SMS"

    const-string v11, "getAllMessagesFromIcc, RemoteException!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 414
    .end local v1           #ex:Landroid/os/RemoteException;
    .restart local v0       #data:[B
    .restart local v2       #i:I
    .restart local v6       #record:Lcom/android/internal/telephony/SmsRawData;
    .restart local v9       #sz:I
    :cond_3
    invoke-virtual {v6}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v0

    .line 416
    add-int/lit8 v4, v2, 0x1

    .line 417
    .local v4, index:I
    const/4 v10, 0x0

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    .line 418
    const-string v10, "SMS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "index["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] is STATUS_ON_ICC_READ"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v10, 0x1

    invoke-virtual {p0, v4, v10, v0, p1}, Lcom/mediatek/telephony/SmsManagerEx;->updateMessageOnIcc(II[BI)Z

    move-result v8

    .line 421
    .local v8, ret:Z
    if-eqz v8, :cond_4

    .line 422
    const-string v10, "SMS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "update index["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] to STATUS_ON_ICC_READ"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 424
    :cond_4
    const-string v10, "SMS"

    const-string v11, "fail to update message status"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 429
    .end local v0           #data:[B
    .end local v4           #index:I
    .end local v6           #record:Lcom/android/internal/telephony/SmsRawData;
    .end local v8           #ret:Z
    :cond_5
    invoke-static {v7, p1}, Lcom/mediatek/telephony/SmsManagerEx;->createMessageListFromRawRecords(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v10

    return-object v10
.end method

.method public getIccSmsStorageStatus(I)Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    .locals 7
    .parameter "slotId"

    .prologue
    .line 467
    const-string v5, "SMS"

    const-string v6, "call getSmsSimMemoryStatus"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-static {p1}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 473
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 474
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getSmsSimMemoryStatus()Landroid/telephony/SmsMemoryStatus;

    move-result-object v2

    .line 475
    .local v2, ret:Landroid/telephony/SmsMemoryStatus;
    invoke-virtual {v2}, Landroid/telephony/SmsMemoryStatus;->getTotal()I

    move-result v3

    .line 476
    .local v3, total:I
    invoke-virtual {v2}, Landroid/telephony/SmsMemoryStatus;->getUsed()I

    move-result v4

    .line 477
    .local v4, used:I
    new-instance v5, Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    invoke-direct {v5, v3, v4}, Lcom/mediatek/common/telephony/IccSmsStorageStatus;-><init>(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    .end local v2           #ret:Landroid/telephony/SmsMemoryStatus;
    .end local v3           #total:I
    .end local v4           #used:I
    :goto_0
    return-object v5

    .line 479
    :catch_0
    move-exception v5

    .line 483
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getValidityPeriodFromIccCard(I)I
    .locals 2
    .parameter "slotId"

    .prologue
    .line 663
    invoke-static {p1}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsParameters(I)Landroid/telephony/SmsParameters;

    move-result-object v0

    .line 664
    .local v0, smsParam:Landroid/telephony/SmsParameters;
    if-nez v0, :cond_0

    .line 665
    const/4 v1, 0x0

    .line 667
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/telephony/SmsParameters;->vp:I

    goto :goto_0
.end method

.method public isSmsReady(I)Z
    .locals 5
    .parameter "slotId"

    .prologue
    .line 442
    const-string v3, "SMS"

    const-string v4, "call isSmsReady"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v1, 0x0

    .line 444
    .local v1, isReady:Z
    invoke-static {p1}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 448
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 449
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->isSmsReady()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 455
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 451
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 11
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "originalPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "slotId"

    .prologue
    .line 275
    const-string v2, "SMS"

    const-string v3, "[xj send data with original port"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v2, "send_data"

    move-object/from16 v0, p6

    invoke-static {p1, v2, v0}, Lcom/mediatek/telephony/SmsManagerEx;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    array-length v2, v0

    if-nez v2, :cond_3

    .line 282
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid message data"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 285
    :cond_3
    invoke-static/range {p8 .. p8}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v10

    .line 287
    .local v10, isms:Ljava/lang/String;
    :try_start_0
    const-string v2, "SMS"

    const-string v3, "[xj get sms service start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 289
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    const-string v2, "SMS"

    const-string v3, "[xj get sms service end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    if-eqz v1, :cond_0

    .line 291
    const-string v2, "SMS"

    const-string v3, "[xj send data start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const v2, 0xffff

    and-int v4, p3, v2

    const v2, 0xffff

    and-int v5, p4, v2

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/ISms;->sendDataWithOriginalPort(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 295
    const-string v2, "SMS"

    const-string v3, "[xj send data end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v9

    .line 298
    .local v9, ex:Landroid/os/RemoteException;
    const-string v2, "SMS"

    const-string v3, "sendDataMessage, RemoteException!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 9
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "slotId"

    .prologue
    .line 218
    const-string v1, "SMS"

    const-string v2, "call sendDataMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v1, "send_data"

    invoke-static {p1, v1, p5}, Lcom/mediatek/telephony/SmsManagerEx;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    if-eqz p4, :cond_2

    array-length v1, p4

    if-nez v1, :cond_3

    .line 225
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    :cond_3
    invoke-static/range {p7 .. p7}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v8

    .line 230
    .local v8, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 231
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 232
    const v1, 0xffff

    and-int v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v7

    .line 236
    .local v7, ex:Landroid/os/RemoteException;
    const-string v1, "SMS"

    const-string v2, "sendDataMessage, RemoteException!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 10
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "slotId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v1, "SMS"

    const-string v2, "call sendMultipartTextMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {p1, p3, p4}, Lcom/mediatek/telephony/SmsManagerEx;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-static/range {p6 .. p6}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v9

    .line 159
    .local v9, isms:Ljava/lang/String;
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 161
    :try_start_0
    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 162
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 163
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v8

    .line 167
    .local v8, ex:Landroid/os/RemoteException;
    const-string v1, "SMS"

    const-string v2, "sendMultipartTextMessage, RemoteException!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    .end local v8           #ex:Landroid/os/RemoteException;
    :cond_2
    const/4 v6, 0x0

    .line 171
    .local v6, sentIntent:Landroid/app/PendingIntent;
    const/4 v5, 0x0

    .line 172
    .local v5, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 173
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #sentIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 175
    .restart local v6       #sentIntent:Landroid/app/PendingIntent;
    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 176
    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 178
    .restart local v5       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const-string v4, ""

    .local v4, text:Ljava/lang/String;
    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v7, p6

    .line 179
    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/telephony/SmsManagerEx;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    goto :goto_0

    .line 178
    .end local v4           #text:Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v4, v1

    goto :goto_1
.end method

.method public sendMultipartTextMessageWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 12
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter "extraParams"
    .parameter
    .parameter
    .parameter "slotId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 577
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v2, "SMS"

    const-string v3, "call sendMultipartTextWithExtraParams"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    move-object/from16 v0, p5

    invoke-static {p1, p3, v0}, Lcom/mediatek/telephony/SmsManagerEx;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    if-nez p4, :cond_2

    .line 583
    const-string v2, "SMS"

    const-string v3, "bundle is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 587
    :cond_2
    invoke-static/range {p7 .. p7}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v11

    .line 588
    .local v11, serviceName:Ljava/lang/String;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 591
    :try_start_0
    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 592
    .local v1, service:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 593
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/ISms;->sendMultipartTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    .end local v1           #service:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v10

    .line 597
    .local v10, e:Landroid/os/RemoteException;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to call sendMultipartTextWithExtraParams: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 600
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_3
    const/4 v8, 0x0

    .line 601
    .local v8, sentIntent:Landroid/app/PendingIntent;
    const/4 v7, 0x0

    .line 602
    .local v7, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 603
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #sentIntent:Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 605
    .restart local v8       #sentIntent:Landroid/app/PendingIntent;
    :cond_4
    if-eqz p6, :cond_5

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 606
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 609
    .restart local v7       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v6, p4

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/mediatek/telephony/SmsManagerEx;->sendTextMessageWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    goto/16 :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 8
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "slotId"

    .prologue
    .line 95
    const-string v1, "SMS"

    const-string v2, "call sendTextMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {p1, p3, p4}, Lcom/mediatek/telephony/SmsManagerEx;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-static {p6}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v7

    .line 102
    .local v7, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 104
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 105
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v6

    .line 109
    .local v6, ex:Landroid/os/RemoteException;
    const-string v1, "SMS"

    const-string v2, "sendTextMessage, RemoteException!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendTextMessageWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 9
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "extraParams"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "slotId"

    .prologue
    .line 526
    const-string v1, "SMS"

    const-string v2, "call sendTextWithExtraParams"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-static {p1, p3, p5}, Lcom/mediatek/telephony/SmsManagerEx;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    if-nez p4, :cond_2

    .line 532
    const-string v1, "SMS"

    const-string v2, "bundle is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 536
    :cond_2
    invoke-static/range {p7 .. p7}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v8

    .line 537
    .local v8, serviceName:Ljava/lang/String;
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :try_start_0
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 540
    .local v0, service:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 541
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 544
    .end local v0           #service:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v7

    .line 545
    .local v7, e:Landroid/os/RemoteException;
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to call sendTextWithExtraParams: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setValidityPeroidToIccCard(II)Z
    .locals 2
    .parameter "validityPeriod"
    .parameter "slotId"

    .prologue
    .line 678
    invoke-static {p2}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsParameters(I)Landroid/telephony/SmsParameters;

    move-result-object v0

    .line 679
    .local v0, smsParams:Landroid/telephony/SmsParameters;
    if-nez v0, :cond_0

    .line 680
    const/4 v1, 0x0

    .line 683
    :goto_0
    return v1

    .line 682
    :cond_0
    iput p1, v0, Landroid/telephony/SmsParameters;->vp:I

    .line 683
    invoke-static {v0, p2}, Lcom/mediatek/telephony/SmsManagerEx;->setSmsParameters(Landroid/telephony/SmsParameters;I)Z

    move-result v1

    goto :goto_0
.end method

.method public updateMessageOnIcc(II[BI)Z
    .locals 6
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"
    .parameter "slotId"

    .prologue
    .line 362
    const-string v4, "SMS"

    const-string v5, "call updateMessageOnIcc"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v3, 0x0

    .line 364
    .local v3, success:Z
    invoke-static {p4}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 368
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 369
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 375
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v3

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "SMS"

    const-string v5, "updateMessageOnIcc, RemoteException!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
