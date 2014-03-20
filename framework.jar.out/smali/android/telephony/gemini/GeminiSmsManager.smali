.class public final Landroid/telephony/gemini/GeminiSmsManager;
.super Ljava/lang/Object;
.source "GeminiSmsManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SMS"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyMessageToIccGemini([B[BII)Z
    .locals 5
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"
    .parameter "simId"

    .prologue
    .line 553
    const-string v3, "SMS"

    const-string v4, "call copyMessageToIccGemini"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v2, 0x0

    .line 556
    .local v2, success:Z
    invoke-static {p3}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 560
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 561
    invoke-interface {v0, p2, p1, p0}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEf(I[B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 567
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 563
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static copySmsToIcc([B[BII)I
    .locals 3
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"
    .parameter "subscription"

    .prologue
    .line 1430
    invoke-static {p2, p1, p0, p3}, Landroid/telephony/gemini/GeminiSmsManager;->insertRawMessageToIccCardGemini(I[B[BI)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v1

    .line 1432
    .local v1, smsStatus:Landroid/telephony/SimSmsInsertStatus;
    if-eqz v1, :cond_0

    .line 1433
    invoke-virtual {v1}, Landroid/telephony/SimSmsInsertStatus;->getIndex()[I

    move-result-object v0

    .line 1435
    .local v0, index:[I
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 1436
    const/4 v2, 0x0

    aget v2, v0, v2

    .line 1440
    .end local v0           #index:[I
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static copyTextMessageToIccCardGemini(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJI)I
    .locals 9
    .parameter "scAddress"
    .parameter "address"
    .parameter
    .parameter "status"
    .parameter "timestamp"
    .parameter "slotId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJI)I"
        }
    .end annotation

    .prologue
    .line 585
    .local p2, text:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "SMS"

    const-string v2, "call copyTextMessageToIccCardGemini"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v8, 0x1

    .line 588
    .local v8, result:I
    invoke-static {p6}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v7

    .line 591
    .local v7, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 592
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    .line 593
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 599
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v8

    .line 595
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static createMessageListFromRawRecords(Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter "simId"
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
    .line 810
    .local p0, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    const-string v5, "SMS"

    const-string v6, "call createMessageListFromRawRecords"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const/4 v2, 0x0

    .line 812
    .local v2, geminiMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p0, :cond_2

    .line 813
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 814
    .local v0, count:I
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #geminiMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 816
    .restart local v2       #geminiMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 817
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 819
    .local v1, data:Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 820
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6, p1}, Landroid/telephony/gemini/GeminiSmsMessage;->createFromEfRecord(I[BI)Landroid/telephony/gemini/GeminiSmsMessage;

    move-result-object v3

    .line 822
    .local v3, geminiSms:Landroid/telephony/gemini/GeminiSmsMessage;
    if-eqz v3, :cond_0

    .line 823
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    .end local v3           #geminiSms:Landroid/telephony/gemini/GeminiSmsMessage;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 827
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

    .line 832
    .end local v0           #count:I
    .end local v4           #i:I
    :goto_1
    return-object v2

    .line 829
    :cond_2
    const-string v5, "SMS"

    const-string v6, "fail to parse SIM sms, records is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static deleteMessageFromIccGemini(II)Z
    .locals 6
    .parameter "messageIndex"
    .parameter "simId"

    .prologue
    .line 615
    const-string v4, "SMS"

    const-string v5, "call deleteMessageFromIccGemini"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const/4 v3, 0x0

    .line 617
    .local v3, success:Z
    invoke-static {p1}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, isms:Ljava/lang/String;
    const/16 v4, 0xaf

    new-array v2, v4, [B

    .line 620
    .local v2, pdu:[B
    const/4 v4, -0x1

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 623
    :try_start_0
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 624
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 625
    const/4 v4, 0x0

    invoke-interface {v0, p0, v4, v2}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 632
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v3

    .line 628
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static disableCellBroadcastGemini(II)Z
    .locals 1
    .parameter "msgId"
    .parameter "slotId"

    .prologue
    .line 1281
    invoke-static {p0, p0, p1}, Landroid/telephony/gemini/GeminiSmsManager;->disableCellBroadcastRangeGemini(III)Z

    move-result v0

    return v0
.end method

.method public static disableCellBroadcastRangeGemini(III)Z
    .locals 7
    .parameter "startMsgId"
    .parameter "endMsgId"
    .parameter "slotId"

    .prologue
    .line 1313
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disable CB range "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", slot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    const/4 v1, 0x0

    .line 1316
    .local v1, result:Z
    invoke-static {p2}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v3

    .line 1318
    .local v3, serviceName:Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 1319
    .local v2, service:Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_0

    .line 1320
    invoke-interface {v2, p0, p1}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastRange(II)Z

    move-result v1

    .line 1321
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disable CB range: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    .end local v2           #service:Lcom/android/internal/telephony/ISms;
    :goto_0
    return v1

    .line 1323
    .restart local v2       #service:Lcom/android/internal/telephony/ISms;
    :cond_0
    const-string v4, "SMS"

    const-string v5, "fail to get sms service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1324
    const/4 v1, 0x0

    goto :goto_0

    .line 1326
    .end local v2           #service:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 1327
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "SMS"

    const-string v5, "fail to enable CB range"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
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
    .line 97
    invoke-static {p0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 4
    .parameter "text"
    .parameter "encodingType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1097
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call divideMessage, encoding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    invoke-static {p0, p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1099
    .local v0, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "divideMessage: size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    return-object v0
.end method

.method public static enableCellBroadcastGemini(II)Z
    .locals 1
    .parameter "msgId"
    .parameter "slotId"

    .prologue
    .line 1274
    invoke-static {p0, p0, p1}, Landroid/telephony/gemini/GeminiSmsManager;->enableCellBroadcastRangeGemini(III)Z

    move-result v0

    return v0
.end method

.method public static enableCellBroadcastRangeGemini(III)Z
    .locals 7
    .parameter "startMsgId"
    .parameter "endMsgId"
    .parameter "slotId"

    .prologue
    .line 1288
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enable CB range "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", slot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    const/4 v1, 0x0

    .line 1291
    .local v1, result:Z
    invoke-static {p2}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v3

    .line 1293
    .local v3, serviceName:Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 1294
    .local v2, service:Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_0

    .line 1295
    invoke-interface {v2, p0, p1}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastRange(II)Z

    move-result v1

    .line 1296
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enable CB range: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    .end local v2           #service:Lcom/android/internal/telephony/ISms;
    :goto_0
    return v1

    .line 1298
    .restart local v2       #service:Lcom/android/internal/telephony/ISms;
    :cond_0
    const-string v4, "SMS"

    const-string v5, "fail to get sms service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1299
    const/4 v1, 0x0

    goto :goto_0

    .line 1301
    .end local v2           #service:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 1302
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "SMS"

    const-string v5, "fail to enable CB range"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAllMessagesFromIccGemini(I)Ljava/util/ArrayList;
    .locals 13
    .parameter "simId"
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
    const/4 v12, 0x1

    .line 679
    const-string v9, "SMS"

    const-string v10, "call getAllMessagesFromIccGemini"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-static {p0}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v4

    .line 681
    .local v4, isms:Ljava/lang/String;
    const/4 v6, 0x0

    .line 684
    .local v6, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 685
    .local v2, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_0

    .line 686
    invoke-interface {v2}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEf()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 692
    .end local v2           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    const/4 v8, 0x0

    .line 693
    .local v8, sz:I
    if-eqz v6, :cond_1

    .line 694
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 696
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v8, :cond_5

    .line 697
    const/4 v0, 0x0

    .line 698
    .local v0, data:[B
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SmsRawData;

    .line 699
    .local v5, record:Lcom/android/internal/telephony/SmsRawData;
    if-nez v5, :cond_3

    .line 696
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 702
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v0

    .line 704
    add-int/lit8 v3, v1, 0x1

    .line 705
    .local v3, index:I
    const/4 v9, 0x0

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    .line 706
    const-string v9, "SMS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "index["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] is STATUS_ON_ICC_READ"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-static {v3, v12, v0, p0}, Landroid/telephony/gemini/GeminiSmsManager;->updateMessageOnIccGemini(II[BI)Z

    move-result v7

    .line 709
    .local v7, ret:Z
    if-ne v7, v12, :cond_4

    .line 710
    const-string v9, "SMS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "update index["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] to STATUS_ON_ICC_READ"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 712
    :cond_4
    const-string v9, "SMS"

    const-string v10, "fail to update message status"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 717
    .end local v0           #data:[B
    .end local v3           #index:I
    .end local v5           #record:Lcom/android/internal/telephony/SmsRawData;
    .end local v7           #ret:Z
    :cond_5
    invoke-static {v6, p0}, Landroid/telephony/gemini/GeminiSmsManager;->createMessageListFromRawRecords(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v9

    return-object v9

    .line 688
    .end local v1           #i:I
    .end local v8           #sz:I
    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method public static getMaxEfSmsGemini(I)I
    .locals 2
    .parameter "slotId"

    .prologue
    .line 1444
    invoke-static {p0}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsSimMemoryStatusGemini(I)Landroid/telephony/SmsMemoryStatus;

    move-result-object v0

    .line 1445
    .local v0, memStatus:Landroid/telephony/SmsMemoryStatus;
    if-eqz v0, :cond_0

    .line 1446
    iget v1, v0, Landroid/telephony/SmsMemoryStatus;->mTotal:I

    .line 1449
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected static getSmsFormat(I)Ljava/lang/String;
    .locals 4
    .parameter "simId"

    .prologue
    .line 1338
    invoke-static {p0}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 1340
    .local v2, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1341
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1342
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getFormat()Ljava/lang/String;

    move-result-object v3

    .line 1347
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :goto_0
    return-object v3

    .line 1344
    .restart local v1       #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    const-string v3, "3gpp"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1346
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 1347
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "3gpp"

    goto :goto_0
.end method

.method public static getSmsParametersGemini(I)Landroid/telephony/SmsParameters;
    .locals 6
    .parameter "slotId"

    .prologue
    const/4 v3, 0x0

    .line 1355
    const-string v4, "SMS"

    const-string v5, "[EFsmsp call getSmsParametersGemini"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    invoke-static {p0}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 1359
    .local v2, svcName:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1360
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1361
    const-string v4, "SMS"

    const-string v5, "[EFsmsp to get params from ef"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getSmsParameters()Landroid/telephony/SmsParameters;

    move-result-object v3

    .line 1372
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :goto_0
    return-object v3

    .line 1364
    .restart local v1       #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    const-string v4, "SMS"

    const-string v5, "[EFsmsp fail to get service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1367
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 1368
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "SMS"

    const-string v5, "[EFsmsp fail because of RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    const-string v4, "SMS"

    const-string v5, "[EFsmsp fail to get EFsmsp info"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getSmsServiceName(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"

    .prologue
    .line 841
    if-nez p0, :cond_0

    .line 842
    const-string v0, "isms"

    .line 846
    :goto_0
    return-object v0

    .line 843
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 844
    const-string v0, "isms2"

    goto :goto_0

    .line 846
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSmsSimMemoryStatusGemini(I)Landroid/telephony/SmsMemoryStatus;
    .locals 4
    .parameter "simId"

    .prologue
    .line 781
    const-string v2, "SMS"

    const-string v3, "call getSmsSimMemoryStatusGemini"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-static {p0}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v1

    .line 785
    .local v1, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 787
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 788
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getSmsSimMemoryStatus()Landroid/telephony/SmsMemoryStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 794
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :goto_0
    return-object v2

    .line 790
    :catch_0
    move-exception v2

    .line 794
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static insertRawMessageToIccCardGemini(I[B[BI)Landroid/telephony/SimSmsInsertStatus;
    .locals 6
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"
    .parameter "slotId"

    .prologue
    .line 1139
    const-string v3, "SMS"

    const-string v4, "call insertRawMessageToIccCardGemini"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const/4 v2, 0x0

    .line 1142
    .local v2, ret:Landroid/telephony/SimSmsInsertStatus;
    invoke-static {p3}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v1

    .line 1144
    .local v1, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1145
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1146
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISms;->insertRawMessageToIccCard(I[B[B)Landroid/telephony/SimSmsInsertStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1152
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

    .line 1153
    return-object v2

    .line 1152
    :cond_1
    const-string v3, "[insertRaw null"

    goto :goto_1

    .line 1148
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static insertTextMessageToIccCardGemini(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJI)Landroid/telephony/SimSmsInsertStatus;
    .locals 9
    .parameter "scAddress"
    .parameter "address"
    .parameter
    .parameter "status"
    .parameter "timestamp"
    .parameter "slotId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJI)",
            "Landroid/telephony/SimSmsInsertStatus;"
        }
    .end annotation

    .prologue
    .line 1120
    .local p2, text:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "SMS"

    const-string v2, "call insertTextMessageToIccCardGemini"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const/4 v8, 0x0

    .line 1123
    .local v8, ret:Landroid/telephony/SimSmsInsertStatus;
    invoke-static {p6}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v7

    .line 1125
    .local v7, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1126
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    .line 1127
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->insertTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Landroid/telephony/SimSmsInsertStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1133
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    const-string v2, "SMS"

    if-eqz v8, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[insertText "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v8, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    return-object v8

    .line 1133
    :cond_1
    const-string v1, "[insertText null"

    goto :goto_1

    .line 1129
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isSmsReadyGemini(I)Z
    .locals 5
    .parameter "simId"

    .prologue
    .line 755
    const-string v3, "SMS"

    const-string v4, "call isSmsReadyGemini"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/4 v1, 0x0

    .line 757
    .local v1, isReady:Z
    invoke-static {p0}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 760
    .local v2, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 761
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 762
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->isSmsReady()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 768
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 764
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
    .line 862
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 864
    .local v1, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 867
    .local v0, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    invoke-static {p0, v0, v1}, Landroid/telephony/gemini/GeminiSmsManager;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

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

    .line 890
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 915
    :cond_0
    :goto_0
    return v2

    .line 894
    :cond_1
    invoke-static {p0}, Landroid/telephony/gemini/GeminiSmsManager;->isValidSmsDestinationAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 895
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 896
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 897
    .local v1, sentIntent:Landroid/app/PendingIntent;
    if-eqz v1, :cond_2

    .line 899
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 904
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

    .line 905
    const/4 v2, 0x0

    goto :goto_0

    .line 908
    .end local v0           #i:I
    :cond_4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 909
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 911
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v2, :cond_0

    .line 912
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid message body"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 900
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

    .line 927
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 928
    .local v0, encodeAddress:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 938
    :cond_0
    :goto_0
    return v3

    .line 931
    :cond_1
    const/4 v2, 0x0

    .line 932
    .local v2, spaceCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 933
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_3

    .line 934
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 932
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 938
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

.method public static readValidityPeriod(I)I
    .locals 2
    .parameter "subscription"

    .prologue
    .line 1403
    invoke-static {p0}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsParametersGemini(I)Landroid/telephony/SmsParameters;

    move-result-object v0

    .line 1404
    .local v0, smsParam:Landroid/telephony/SmsParameters;
    if-eqz v0, :cond_0

    .line 1405
    iget v1, v0, Landroid/telephony/SmsParameters;->vp:I

    .line 1408
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static sendDataMessageGemini(Ljava/lang/String;Ljava/lang/String;SS[BILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "originalPort"
    .parameter "data"
    .parameter "simId"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 426
    const-string v1, "SMS"

    const-string v2, "[xj send data with original port"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const-string/jumbo v1, "send_data"

    invoke-static {p0, v1, p6}, Landroid/telephony/gemini/GeminiSmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    if-eqz p4, :cond_2

    array-length v1, p4

    if-nez v1, :cond_3

    .line 433
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 436
    :cond_3
    invoke-static {p5}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v8

    .line 438
    .local v8, isms:Ljava/lang/String;
    :try_start_0
    const-string v1, "SMS"

    const-string v2, "[xj get sms service start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 440
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    const-string v1, "SMS"

    const-string v2, "[xj get sms service end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    if-eqz v0, :cond_0

    .line 442
    const-string v1, "SMS"

    const-string v2, "[xj send data start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const v1, 0xffff

    and-int v3, p2, v1

    const v1, 0xffff

    and-int v4, p3, v1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendDataWithOriginalPort(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 446
    const-string v1, "SMS"

    const-string v2, "[xj send data end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 448
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static sendDataMessageGemini(Ljava/lang/String;Ljava/lang/String;S[BILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "simId"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 371
    const-string v1, "SMS"

    const-string v2, "call sendDataMessageGemini"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string/jumbo v1, "send_data"

    invoke-static {p0, v1, p5}, Landroid/telephony/gemini/GeminiSmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    if-eqz p3, :cond_2

    array-length v1, p3

    if-nez v1, :cond_3

    .line 378
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_3
    invoke-static {p4}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v7

    .line 383
    .local v7, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 384
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 385
    const v1, 0xffff

    and-int v3, p2, v1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static sendMultipartDataMessageGemini(Ljava/lang/String;Ljava/lang/String;S[[BILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "simId"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S[[BI",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 535
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method public static sendMultipartTextMessageGemini(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter "simId"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v4, 0x0

    .line 236
    const-string v1, "SMS"

    const-string v2, "call sendMultipartTextMessageGemini"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {p0, p2, p4}, Landroid/telephony/gemini/GeminiSmsManager;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-static {p3}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v7

    .line 242
    .local v7, isms:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 244
    :try_start_0
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 245
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    .line 246
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 253
    :cond_2
    const/4 v5, 0x0

    .line 254
    .local v5, sentIntent:Landroid/app/PendingIntent;
    const/4 v6, 0x0

    .line 255
    .local v6, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 256
    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #sentIntent:Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 258
    .restart local v5       #sentIntent:Landroid/app/PendingIntent;
    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 259
    invoke-virtual {p5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 261
    .restart local v6       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const-string v3, ""

    .local v3, text:Ljava/lang/String;
    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v4, p3

    .line 262
    invoke-static/range {v1 .. v6}, Landroid/telephony/gemini/GeminiSmsManager;->sendTextMessageGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 261
    .end local v3           #text:Ljava/lang/String;
    :cond_6
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, v1

    goto :goto_1
.end method

.method public static sendMultipartTextMessageGemini(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;SILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter "destinationPort"
    .parameter "simId"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;SI",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p2, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method public static sendMultipartTextMessageWithEncodingTypeGemini(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter "encodingType"
    .parameter "slotId"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v5, 0x0

    .line 1047
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call sendMultipartText, encoding = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    invoke-static {p0, p2, p5}, Landroid/telephony/gemini/GeminiSmsManager;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1050
    const-string v1, "SMS"

    const-string v2, "invalid parameters for multipart message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_0
    :goto_0
    return-void

    .line 1054
    :cond_1
    invoke-static {p4}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v8

    .line 1055
    .local v8, isms:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 1057
    :try_start_0
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1058
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1059
    const-string v1, "SMS"

    const-string v2, "call ISms.sendMultipartText"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 1060
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendMultipartTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1063
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1067
    :cond_2
    const/4 v6, 0x0

    .line 1068
    .local v6, sentIntent:Landroid/app/PendingIntent;
    const/4 v7, 0x0

    .line 1069
    .local v7, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1070
    invoke-virtual {p5, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #sentIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 1072
    .restart local v6       #sentIntent:Landroid/app/PendingIntent;
    :cond_3
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get sentIntent: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    if-eqz p6, :cond_4

    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1074
    invoke-virtual {p6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 1076
    .restart local v7       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_4
    const-string v1, "SMS"

    const-string/jumbo v2, "send single message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    if-eqz p2, :cond_5

    .line 1078
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parts.size = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const-string v3, ""

    .line 1081
    .local v3, text:Ljava/lang/String;
    :goto_1
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pass encoding type "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    .line 1082
    invoke-static/range {v1 .. v7}, Landroid/telephony/gemini/GeminiSmsManager;->sendTextMessageWithEncodingTypeGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1080
    .end local v3           #text:Ljava/lang/String;
    :cond_7
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, v1

    goto :goto_1
.end method

.method public static sendMultipartTextMessageWithExtraParamsGemini(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter "extraParams"
    .parameter "slotId"
    .parameter
    .parameter
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
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1233
    .local p2, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v2, "SMS"

    const-string v3, "call sendMultipartTextWithExtraParamsGemini"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    move-object/from16 v0, p5

    invoke-static {p0, p2, v0}, Landroid/telephony/gemini/GeminiSmsManager;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1268
    :cond_0
    :goto_0
    return-void

    .line 1238
    :cond_1
    if-nez p3, :cond_2

    .line 1239
    const-string v2, "SMS"

    const-string v3, "bundle is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1243
    :cond_2
    invoke-static {p4}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v10

    .line 1244
    .local v10, serviceName:Ljava/lang/String;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "service name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 1247
    :try_start_0
    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1248
    .local v1, service:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 1249
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/ISms;->sendMultipartTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1252
    .end local v1           #service:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v9

    .line 1253
    .local v9, e:Landroid/os/RemoteException;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to call sendMultipartTextWithExtraParamsGemini: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1256
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_3
    const/4 v7, 0x0

    .line 1257
    .local v7, sentIntent:Landroid/app/PendingIntent;
    const/4 v8, 0x0

    .line 1258
    .local v8, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 1259
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #sentIntent:Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 1261
    .restart local v7       #sentIntent:Landroid/app/PendingIntent;
    :cond_4
    if-eqz p6, :cond_5

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1262
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 1265
    .restart local v8       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v6, p4

    invoke-static/range {v2 .. v8}, Landroid/telephony/gemini/GeminiSmsManager;->sendTextMessageWithExtraParamsGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method public static sendTextMessageGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "simId"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 131
    const-string v1, "SMS"

    const-string v2, "call sendTextMessageGemini"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {p0, p2, p4}, Landroid/telephony/gemini/GeminiSmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-static {p3}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 139
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    .line 140
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static sendTextMessageGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "destinationPort"
    .parameter "simId"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 197
    return-void
.end method

.method public static sendTextMessageWithEncodingTypeGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "encodingType"
    .parameter "slotId"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 979
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call sendText, encoding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-static {p0, p2, p5}, Landroid/telephony/gemini/GeminiSmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 982
    const-string v1, "SMS"

    const-string/jumbo v2, "the parameters are invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :goto_0
    return-void

    .line 985
    :cond_0
    const-string v1, "SMS"

    const-string/jumbo v2, "to get ISms"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    invoke-static {p4}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v8

    .line 987
    .local v8, isms:Ljava/lang/String;
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isms = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isms = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :try_start_0
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 991
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 992
    const-string v1, "SMS"

    const-string v2, "call ISms interface to send text message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 993
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 998
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v7

    .line 1000
    .local v7, ex:Landroid/os/RemoteException;
    const-string v1, "SMS"

    const-string v2, "fail to get ISms"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 996
    .end local v7           #ex:Landroid/os/RemoteException;
    .restart local v0       #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_1
    :try_start_1
    const-string v1, "SMS"

    const-string v2, "iccISms is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static sendTextMessageWithExtraParamsGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "extraParams"
    .parameter "slotId"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 1181
    const-string v1, "SMS"

    const-string v2, "call sendTextWithExtraParamsGemini"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    invoke-static {p0, p2, p5}, Landroid/telephony/gemini/GeminiSmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1202
    :cond_0
    :goto_0
    return-void

    .line 1186
    :cond_1
    if-nez p3, :cond_2

    .line 1187
    const-string v1, "SMS"

    const-string v2, "bundle is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1191
    :cond_2
    invoke-static {p4}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v8

    .line 1192
    .local v8, serviceName:Ljava/lang/String;
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "service name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :try_start_0
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1195
    .local v0, service:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 1196
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1199
    .end local v0           #service:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v7

    .line 1200
    .local v7, e:Landroid/os/RemoteException;
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to call sendTextWithExtraParamsGemini: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setEtwsConfigGemini(II)Z
    .locals 5
    .parameter "mode"
    .parameter "slotId"

    .prologue
    .line 1494
    const-string v3, "SMS"

    const-string v4, "call setEtwsConfigGemini"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    const/4 v2, 0x0

    .line 1498
    .local v2, ret:Z
    invoke-static {p1}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v1

    .line 1500
    .local v1, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1501
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1502
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISms;->setEtwsConfig(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1508
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 1504
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static setSmsMemoryStatusGemini(ZI)V
    .locals 4
    .parameter "status"
    .parameter "simId"

    .prologue
    .line 731
    const-string v2, "SMS"

    const-string v3, "call setSmsMemoryStatusGemini"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-static {p1}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 736
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 737
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISms;->setSmsMemoryStatus(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 739
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static setSmsParametersGemini(Landroid/telephony/SmsParameters;I)Z
    .locals 6
    .parameter "params"
    .parameter "slotId"

    .prologue
    const/4 v3, 0x0

    .line 1379
    const-string v4, "SMS"

    const-string v5, "[EFsmsp call setSmsParametersGemini"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    invoke-static {p1}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 1383
    .local v2, svcName:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1384
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1385
    const-string v4, "SMS"

    const-string v5, "[EFsmsp to set params into ef"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISms;->setSmsParameters(Landroid/telephony/SmsParameters;)Z

    move-result v3

    .line 1395
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :goto_0
    return v3

    .line 1388
    .restart local v1       #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    const-string v4, "SMS"

    const-string v5, "[EFsmsp fail to get service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1391
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 1392
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "SMS"

    const-string v5, "[EFsmsp fail because of RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateMessageOnIccGemini(II[BI)Z
    .locals 5
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"
    .parameter "simId"

    .prologue
    .line 652
    const-string v3, "SMS"

    const-string v4, "call updateMessageOnIccGemini"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/4 v2, 0x0

    .line 654
    .local v2, success:Z
    invoke-static {p3}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 658
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 659
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 665
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 661
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static updateSmsOnSimReadStatus(IZI)Z
    .locals 11
    .parameter "index"
    .parameter "read"
    .parameter "subscription"

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v0, 0x1

    .line 1453
    const-string v8, "SMS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "call updateSmsOnSimReadStatus "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    const/4 v2, 0x0

    .line 1456
    .local v2, record:Lcom/android/internal/telephony/SmsRawData;
    invoke-static {p2}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v5

    .line 1458
    .local v5, svcName:Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 1459
    .local v3, smsSvc:Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_0

    .line 1460
    invoke-interface {v3, p0}, Lcom/android/internal/telephony/ISms;->getMessageFromIccEf(I)Lcom/android/internal/telephony/SmsRawData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1466
    .end local v3           #smsSvc:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    if-eqz v2, :cond_6

    .line 1467
    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v1

    .line 1468
    .local v1, rawData:[B
    aget-byte v8, v1, v7

    and-int/lit16 v4, v8, 0xff

    .line 1469
    .local v4, status:I
    const-string v8, "SMS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sms status is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    if-eq v4, v6, :cond_1

    if-eq v4, v0, :cond_1

    .line 1472
    const-string v6, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "non-delivery sms "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 1489
    .end local v1           #rawData:[B
    .end local v4           #status:I
    :goto_1
    return v0

    .line 1475
    .restart local v1       #rawData:[B
    .restart local v4       #status:I
    :cond_1
    if-ne v4, v6, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    if-ne v4, v0, :cond_4

    if-ne p1, v0, :cond_4

    .line 1477
    :cond_3
    const-string v6, "SMS"

    const-string/jumbo v7, "no need to update status"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1480
    :cond_4
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update sms status as "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    if-ne p1, v0, :cond_5

    .line 1483
    .local v0, newStatus:I
    :goto_2
    invoke-static {p0, v0, v1, p2}, Landroid/telephony/gemini/GeminiSmsManager;->updateMessageOnIccGemini(II[BI)Z

    move-result v0

    goto :goto_1

    .end local v0           #newStatus:I
    :cond_5
    move v0, v6

    .line 1481
    goto :goto_2

    .line 1488
    .end local v1           #rawData:[B
    .end local v4           #status:I
    :cond_6
    const-string v6, "SMS"

    const-string/jumbo v8, "record is null"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 1489
    goto :goto_1

    .line 1462
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method public static updateValidityPeriod(II)Z
    .locals 2
    .parameter "validityperiod"
    .parameter "subscription"

    .prologue
    .line 1416
    invoke-static {p1}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsParametersGemini(I)Landroid/telephony/SmsParameters;

    move-result-object v0

    .line 1417
    .local v0, smsParams:Landroid/telephony/SmsParameters;
    if-eqz v0, :cond_0

    .line 1418
    iput p0, v0, Landroid/telephony/SmsParameters;->vp:I

    .line 1419
    invoke-static {v0, p1}, Landroid/telephony/gemini/GeminiSmsManager;->setSmsParametersGemini(Landroid/telephony/SmsParameters;I)Z

    move-result v1

    .line 1422
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
