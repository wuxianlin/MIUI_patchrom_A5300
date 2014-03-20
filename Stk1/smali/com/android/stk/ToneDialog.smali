.class public Lcom/android/stk/ToneDialog;
.super Landroid/app/Activity;
.source "ToneDialog.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Stk-TD "

.field private static final MSG_ID_STOP_TONE:I = 0xda


# instance fields
.field mIsResponseSent:Z

.field private final mSIMStateChangeFilter:Landroid/content/IntentFilter;

.field private final mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field mSimId:I

.field mToneStopper:Landroid/os/Handler;

.field mVibrator:Landroid/os/Vibrator;

.field private mbSendResp:Z

.field player:Lcom/android/stk/TonePlayer;

.field settings:Lcom/android/internal/telephony/cat/ToneSettings;

.field toneMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    iput-object v1, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 81
    iput-object v1, p0, Lcom/android/stk/ToneDialog;->settings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 82
    iput-object v1, p0, Lcom/android/stk/ToneDialog;->player:Lcom/android/stk/TonePlayer;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/stk/ToneDialog;->mSimId:I

    .line 84
    iput-boolean v2, p0, Lcom/android/stk/ToneDialog;->mIsResponseSent:Z

    .line 86
    iput-object v1, p0, Lcom/android/stk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    .line 89
    iput-boolean v2, p0, Lcom/android/stk/ToneDialog;->mbSendResp:Z

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/stk/ToneDialog;->mSIMStateChangeFilter:Landroid/content/IntentFilter;

    .line 93
    new-instance v0, Lcom/android/stk/ToneDialog$1;

    invoke-direct {v0, p0}, Lcom/android/stk/ToneDialog$1;-><init>(Lcom/android/stk/ToneDialog;)V

    iput-object v0, p0, Lcom/android/stk/ToneDialog;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    new-instance v0, Lcom/android/stk/ToneDialog$2;

    invoke-direct {v0, p0}, Lcom/android/stk/ToneDialog$2;-><init>(Lcom/android/stk/ToneDialog;)V

    iput-object v0, p0, Lcom/android/stk/ToneDialog;->mToneStopper:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stk/ToneDialog;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/stk/ToneDialog;->sendResponse(I)V

    return-void
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 225
    if-nez p1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/stk/ToneDialog;->finish()V

    .line 228
    :cond_0
    const-string v0, "TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 229
    const-string v0, "TONE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/ToneSettings;

    iput-object v0, p0, Lcom/android/stk/ToneDialog;->settings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 230
    const-string v0, "sim id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/stk/ToneDialog;->mSimId:I

    .line 231
    return-void
.end method

.method private sendResponse(I)V
    .locals 7
    .parameter "resId"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 234
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v2

    iget v3, p0, Lcom/android/stk/ToneDialog;->mSimId:I

    invoke-virtual {v2, v3}, Lcom/android/stk/StkAppService;->haveEndSession(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    const-string v2, "Stk-TD "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore response, id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :goto_0
    return-void

    .line 240
    :cond_0
    const-string v2, "Stk-TD "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendResponse resID["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iput-boolean v5, p0, Lcom/android/stk/ToneDialog;->mbSendResp:Z

    .line 242
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 243
    .local v0, args:Landroid/os/Bundle;
    new-array v1, v6, [I

    .line 244
    .local v1, op:[I
    const/4 v2, 0x0

    aput v6, v1, v2

    .line 245
    iget v2, p0, Lcom/android/stk/ToneDialog;->mSimId:I

    aput v2, v1, v5

    .line 246
    const-string v2, "op"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 247
    const-string v2, "response id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/stk/StkAppService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/stk/ToneDialog;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 249
    iput-boolean v5, p0, Lcom/android/stk/ToneDialog;->mIsResponseSent:Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const-string v4, "Stk-TD "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate - mbSendResp["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/stk/ToneDialog;->mbSendResp:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/stk/ToneDialog;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/stk/ToneDialog;->initFromIntent(Landroid/content/Intent;)V

    .line 139
    const v4, 0x1020016

    invoke-virtual {p0, v4}, Lcom/android/stk/ToneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 140
    .local v2, title:Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 143
    const v4, 0x7f030007

    invoke-virtual {p0, v4}, Lcom/android/stk/ToneDialog;->setContentView(I)V

    .line 145
    const v4, 0x7f070019

    invoke-virtual {p0, v4}, Lcom/android/stk/ToneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 146
    .local v3, tv:Landroid/widget/TextView;
    const v4, 0x7f07000a

    invoke-virtual {p0, v4}, Lcom/android/stk/ToneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 149
    .local v0, iv:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 150
    :cond_0
    const-string v4, "Stk-TD "

    const-string v5, "onCreate - null tone text"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v4, :cond_5

    .line 156
    const v4, 0x1080363

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    :goto_1
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->settings:Lcom/android/internal/telephony/cat/ToneSettings;

    if-nez v4, :cond_1

    .line 163
    const-string v4, "Stk-TD "

    const-string v5, "onCreate - null settings - finish"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/stk/ToneDialog;->finish()V

    .line 167
    :cond_1
    new-instance v4, Lcom/android/stk/TonePlayer;

    invoke-direct {v4}, Lcom/android/stk/TonePlayer;-><init>()V

    iput-object v4, p0, Lcom/android/stk/ToneDialog;->player:Lcom/android/stk/TonePlayer;

    .line 168
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->player:Lcom/android/stk/TonePlayer;

    iget-object v5, p0, Lcom/android/stk/ToneDialog;->settings:Lcom/android/internal/telephony/cat/ToneSettings;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/ToneSettings;->tone:Lcom/android/internal/telephony/cat/Tone;

    invoke-virtual {v4, v5}, Lcom/android/stk/TonePlayer;->play(Lcom/android/internal/telephony/cat/Tone;)V

    .line 169
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->settings:Lcom/android/internal/telephony/cat/ToneSettings;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/ToneSettings;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-static {v4}, Lcom/android/stk/StkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/cat/Duration;)I

    move-result v1

    .line 170
    .local v1, timeout:I
    if-nez v1, :cond_2

    .line 171
    const/16 v1, 0x7d0

    .line 174
    :cond_2
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    if-nez v4, :cond_3

    .line 175
    const-string v4, "vibrator"

    invoke-virtual {p0, v4}, Lcom/android/stk/ToneDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/stk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    .line 177
    :cond_3
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->mToneStopper:Landroid/os/Handler;

    const/16 v5, 0xda

    int-to-long v6, v1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 178
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->settings:Lcom/android/internal/telephony/cat/ToneSettings;

    iget-boolean v4, v4, Lcom/android/internal/telephony/cat/ToneSettings;->vibrate:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/stk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    if-eqz v4, :cond_6

    .line 179
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    .line 185
    :goto_2
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/stk/ToneDialog;->mSIMStateChangeFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v4, v5}, Lcom/android/stk/ToneDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    return-void

    .line 152
    .end local v1           #timeout:I
    :cond_4
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 158
    :cond_5
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 181
    .restart local v1       #timeout:I
    :cond_6
    const-string v4, "Stk-TD "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate - settings.vibrate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/stk/ToneDialog;->settings:Lcom/android/internal/telephony/cat/ToneSettings;

    iget-boolean v6, v6, Lcom/android/internal/telephony/cat/ToneSettings;->vibrate:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v5, "Stk-TD "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate - mVibrator is null "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/stk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    if-nez v4, :cond_7

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 192
    const-string v0, "Stk-TD "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy - before Send End Session mbSendResp["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/stk/ToneDialog;->mbSendResp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-boolean v0, p0, Lcom/android/stk/ToneDialog;->mbSendResp:Z

    if-nez v0, :cond_0

    .line 194
    const-string v0, "Stk-TD "

    const-string v1, "onDestroy - Send End Session"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/android/stk/ToneDialog;->sendResponse(I)V

    .line 198
    :cond_0
    iget-boolean v0, p0, Lcom/android/stk/ToneDialog;->mIsResponseSent:Z

    if-eqz v0, :cond_1

    .line 199
    const-string v0, "Stk-TD "

    const-string v1, "onDestroy - removeMessages"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/android/stk/ToneDialog;->mToneStopper:Landroid/os/Handler;

    const/16 v1, 0xda

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/android/stk/ToneDialog;->player:Lcom/android/stk/TonePlayer;

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/android/stk/ToneDialog;->player:Lcom/android/stk/TonePlayer;

    invoke-virtual {v0}, Lcom/android/stk/TonePlayer;->stop()V

    .line 205
    iget-object v0, p0, Lcom/android/stk/ToneDialog;->player:Lcom/android/stk/TonePlayer;

    invoke-virtual {v0}, Lcom/android/stk/TonePlayer;->release()V

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/android/stk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/android/stk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/android/stk/ToneDialog;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stk/ToneDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 211
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 215
    packed-switch p1, :pswitch_data_0

    .line 221
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 217
    :pswitch_0
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/android/stk/ToneDialog;->sendResponse(I)V

    .line 218
    invoke-virtual {p0}, Lcom/android/stk/ToneDialog;->finish()V

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
