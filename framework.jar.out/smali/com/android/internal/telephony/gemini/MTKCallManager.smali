.class public Lcom/android/internal/telephony/gemini/MTKCallManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lcom/android/internal/telephony/gemini/MTKCallManager;


# instance fields
.field a:Lcom/android/internal/telephony/CallManager;

.field b:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKCallManager;->c:Lcom/android/internal/telephony/gemini/MTKCallManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    .line 89
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/gemini/MTKCallManager;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKCallManager;->c:Lcom/android/internal/telephony/gemini/MTKCallManager;

    return-object v0
.end method


# virtual methods
.method public dialGemini(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 134
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    .line 135
    const-string v0, "MTKCallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialGemini receives error simId. simId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v0, 0x0

    .line 140
    :goto_0
    return-object v0

    .line 139
    :cond_0
    check-cast p1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v0, p2}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultPhoneGemini()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public registerForCallWaitingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 555
    if-nez p4, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 560
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForCdmaOtaStatusChangeGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 646
    if-nez p4, :cond_0

    .line 647
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 651
    :goto_0
    return-void

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForCrssSuppServiceNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 788
    if-nez p4, :cond_0

    .line 789
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 793
    :goto_0
    return-void

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForCrssSuppServiceNotification2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    if-nez p4, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForDisplayInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 617
    if-nez p4, :cond_0

    .line 618
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 622
    :goto_0
    return-void

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfo2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForEcmTimerResetGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 417
    if-nez p4, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForEcmTimerReset2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForInCallVoicePrivacyOffGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 527
    if-nez p4, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 532
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOff2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForInCallVoicePrivacyOnGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 499
    if-nez p4, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 504
    :goto_0
    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOn2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForIncomingRingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 279
    if-nez p4, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForMmiCompleteGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 391
    if-nez p4, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForMmiInitiateGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 363
    if-nez p4, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForMmiInitiate2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForNewRingingConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 250
    if-nez p4, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForPostDialCharacterGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 724
    if-nez p4, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 729
    :goto_0
    return-void

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForPreciseCallStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    if-nez p4, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForResendIncallMuteGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 333
    if-nez p4, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 338
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForResendIncallMute2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForRingbackToneGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 309
    if-nez p4, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForRingbackTone2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForServiceStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 442
    if-nez p4, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 447
    :goto_0
    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForServiceStateChanged2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForSignalInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 586
    if-nez p4, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 591
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfo2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForSpeechInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 740
    if-nez p4, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 745
    :goto_0
    return-void

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSpeechInfo2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForSubscriptionInfoReadyGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 672
    if-nez p4, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 677
    :goto_0
    return-void

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSubscriptionInfoReady2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForSuppServiceFailedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 470
    if-nez p4, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 475
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForSuppServiceNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 804
    if-nez p4, :cond_0

    .line 805
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 809
    :goto_0
    return-void

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceNotification2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForUnknownConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    if-nez p4, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnection2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForVtReplaceDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 820
    if-nez p4, :cond_0

    .line 821
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 825
    :goto_0
    return-void

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForVtReplaceDisconnect2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForVtRingInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 772
    if-nez p4, :cond_0

    .line 773
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 777
    :goto_0
    return-void

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForVtRingInfo2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForVtStatusInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 756
    if-nez p4, :cond_0

    .line 757
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 761
    :goto_0
    return-void

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForVtStatusInfo2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerPhoneGemini(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/Phone;

    move-object v0, p1

    .line 109
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    move-object v0, p1

    .line 112
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 116
    return-void
.end method

.method public unregisterForCallWaitingGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 567
    if-nez p2, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 572
    :goto_0
    return-void

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForCdmaOtaStatusChangeGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 658
    if-nez p2, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 663
    :goto_0
    return-void

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForCrssSuppServiceNotificationGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 796
    if-nez p2, :cond_0

    .line 797
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V

    .line 801
    :goto_0
    return-void

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForCrssSuppServiceNotification2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForDisconnectGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 178
    if-nez p2, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForDisplayInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 631
    if-nez p2, :cond_0

    .line 632
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 636
    :goto_0
    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisplayInfo2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForEcmTimerResetGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 429
    if-nez p2, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 434
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForEcmTimerReset2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForInCallVoicePrivacyOffGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 540
    if-nez p2, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 545
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOff2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForInCallVoicePrivacyOnGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 512
    if-nez p2, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 517
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOn2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForIncomingRingGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 292
    if-nez p2, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForMmiCompleteGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 403
    if-nez p2, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForMmiInitiateGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 375
    if-nez p2, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiate2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForNewRingingConnectionGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 263
    if-nez p2, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForPostDialCharacterGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 732
    if-nez p2, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter(Landroid/os/Handler;)V

    .line 737
    :goto_0
    return-void

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForPreciseCallStateChangedGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 207
    if-nez p2, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForResendIncallMuteGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 344
    if-nez p2, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForResendIncallMute2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForRingbackToneGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 321
    if-nez p2, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForRingbackTone2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForServiceStateChangedGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 454
    if-nez p2, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForServiceStateChanged2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForSignalInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 600
    if-nez p2, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 605
    :goto_0
    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSignalInfo2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForSpeechInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 748
    if-nez p2, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSpeechInfo(Landroid/os/Handler;)V

    .line 753
    :goto_0
    return-void

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSpeechInfo2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForSubscriptionInfoReadyGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 684
    if-nez p2, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 689
    :goto_0
    return-void

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSubscriptionInfoReady2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForSuppServiceFailedGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 484
    if-nez p2, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 489
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForSuppServiceNotificationGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 812
    if-nez p2, :cond_0

    .line 813
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 817
    :goto_0
    return-void

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceNotification2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForUnknownConnectionGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 230
    if-nez p2, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForUnknownConnection2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForVtReplaceDisconnectGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 828
    if-nez p2, :cond_0

    .line 829
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V

    .line 833
    :goto_0
    return-void

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForVtReplaceDisconnect2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForVtRingInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 780
    if-nez p2, :cond_0

    .line 781
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForVtRingInfo(Landroid/os/Handler;)V

    .line 785
    :goto_0
    return-void

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForVtRingInfo2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForVtStatusInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 764
    if-nez p2, :cond_0

    .line 765
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForVtStatusInfo(Landroid/os/Handler;)V

    .line 769
    :goto_0
    return-void

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForVtStatusInfo2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterPhoneGemini(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter

    .prologue
    .line 122
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    move-object v0, p1

    .line 125
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 129
    return-void
.end method

.method public vtDialGemini(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 146
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    .line 147
    const-string v0, "MTKCallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vtDialGemini receives error simId. simId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    .line 151
    :cond_0
    check-cast p1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v0, p2}, Lcom/android/internal/telephony/CallManager;->vtDial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0
.end method
