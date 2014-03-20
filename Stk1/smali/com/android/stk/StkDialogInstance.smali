.class public Lcom/android/stk/StkDialogInstance;
.super Ljava/lang/Object;
.source "StkDialogInstance.java"


# static fields
.field public static final CANCEL_BUTTON:I = 0x7f070012

.field private static final LOGTAG:Ljava/lang/String; = "Stk-DI "

.field protected static final MIN_LENGTH:I = 0x6

.field protected static final MIN_WIDTH:I = 0xaa

.field private static final MSG_ID_TIMEOUT:I = 0x1

.field public static final OK_BUTTON:I = 0x7f070006


# instance fields
.field appService:Lcom/android/stk/StkAppService;

.field protected mSimId:I

.field mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field mTimeoutHandler:Landroid/os/Handler;

.field protected mbSendResp:Z

.field parent:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stk/StkDialogInstance;->mbSendResp:Z

    .line 91
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkDialogInstance;->appService:Lcom/android/stk/StkAppService;

    .line 93
    new-instance v0, Lcom/android/stk/StkDialogInstance$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkDialogInstance$1;-><init>(Lcom/android/stk/StkDialogInstance;)V

    iput-object v0, p0, Lcom/android/stk/StkDialogInstance;->mTimeoutHandler:Landroid/os/Handler;

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    return-void
.end method


# virtual methods
.method protected cancelTimeOut()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/stk/StkDialogInstance;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 242
    return-void
.end method

.method protected handleOnClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/16 v6, 0xd

    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, input:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 132
    :sswitch_0
    const-string v2, "Stk-DI "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OK Clicked! isCurCmdSetupCall["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stk/StkDialogInstance;->appService:Lcom/android/stk/StkAppService;

    iget v5, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v4, v5}, Lcom/android/stk/StkAppService;->isCurCmdSetupCall(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], mSimId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/android/stk/StkDialogInstance;->appService:Lcom/android/stk/StkAppService;

    iget v3, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v2, v3}, Lcom/android/stk/StkAppService;->isCurCmdSetupCall(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    const-string v2, "Stk-DI "

    const-string v3, "stk call sendBroadcast(STKCALL_REGISTER_SPEECH_INFO)"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.stk.STKCALL_REGISTER_SPEECH_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/stk/StkDialogInstance;->parent:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v6, v2}, Lcom/android/stk/StkDialogInstance;->sendResponse(IZ)V

    .line 139
    iget-object v2, p0, Lcom/android/stk/StkDialogInstance;->parent:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 142
    :sswitch_1
    const-string v2, "Stk-DI "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancel Clicked!, mSimId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v2, 0x0

    invoke-virtual {p0, v6, v2}, Lcom/android/stk/StkDialogInstance;->sendResponse(IZ)V

    .line 144
    iget-object v2, p0, Lcom/android/stk/StkDialogInstance;->parent:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 130
    :sswitch_data_0
    .sparse-switch
        0x7f070006 -> :sswitch_0
        0x7f070012 -> :sswitch_1
    .end sparse-switch
.end method

.method protected handleOnDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 182
    const-string v0, "Stk-DI "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy - before Send CONFIRM false mbSendResp["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/stk/StkDialogInstance;->mbSendResp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-boolean v0, p0, Lcom/android/stk/StkDialogInstance;->mbSendResp:Z

    if-nez v0, :cond_0

    .line 184
    const-string v0, "Stk-DI "

    const-string v1, "onDestroy - Send CONFIRM false"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v3}, Lcom/android/stk/StkDialogInstance;->sendResponse(IZ)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkDialogInstance;->appService:Lcom/android/stk/StkAppService;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/stk/StkDialogInstance;->appService:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v0, v3, v1}, Lcom/android/stk/StkAppService;->indicateDialogVisibility(ZI)V

    .line 190
    :cond_1
    const-string v0, "Stk-DI "

    const-string v1, "onDestroy-"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method protected handleOnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 151
    packed-switch p1, :pswitch_data_0

    .line 158
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 153
    :pswitch_0
    const-string v0, "Stk-DI "

    const-string v1, "onKeyDown - KEYCODE_BACK"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/stk/StkDialogInstance;->sendResponse(I)V

    .line 155
    iget-object v0, p0, Lcom/android/stk/StkDialogInstance;->parent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected handleOnNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 116
    const-string v0, "Stk-DI "

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "Stk-DI "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent - mbSendResp["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/stk/StkDialogInstance;->mbSendResp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/stk/StkDialogInstance;->initFromIntent(Landroid/content/Intent;)V

    .line 120
    iget-object v0, p0, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/stk/StkDialogInstance;->parent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 124
    :cond_0
    return-void
.end method

.method protected handleOnPause()V
    .locals 3

    .prologue
    .line 173
    const-string v0, "Stk-DI "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause, sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/stk/StkDialogInstance;->appService:Lcom/android/stk/StkAppService;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/stk/StkDialogInstance;->appService:Lcom/android/stk/StkAppService;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/stk/StkAppService;->indicateDialogVisibility(ZI)V

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/android/stk/StkDialogInstance;->cancelTimeOut()V

    .line 178
    return-void
.end method

.method protected handleOnResume()V
    .locals 3

    .prologue
    .line 163
    const-string v0, "Stk-DI "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume - mbSendResp["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/stk/StkDialogInstance;->mbSendResp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/stk/StkDialogInstance;->appService:Lcom/android/stk/StkAppService;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/stk/StkDialogInstance;->appService:Lcom/android/stk/StkAppService;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/stk/StkAppService;->indicateDialogVisibility(ZI)V

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/stk/StkDialogInstance;->startTimeOut()V

    .line 169
    return-void
.end method

.method protected initFromIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 230
    if-eqz p1, :cond_0

    .line 231
    const-string v0, "TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 232
    const-string v0, "sim id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    .line 237
    :goto_0
    const-string v0, "Stk-DI "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initFromIntent - ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkDialogInstance;->parent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected sendResponse(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 225
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/stk/StkDialogInstance;->sendResponse(IZ)V

    .line 226
    return-void
.end method

.method protected sendResponse(IZ)V
    .locals 8
    .parameter "resId"
    .parameter "confirmed"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 194
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v3

    if-nez v3, :cond_1

    .line 195
    const-string v3, "Stk-DI "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore response: id is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v3

    iget v4, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v3, v4}, Lcom/android/stk/StkAppService;->haveEndSession(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 201
    const-string v3, "Stk-DI "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore response, id is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_2
    const-string v3, "Stk-DI "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendResponse resID["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] confirmed["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iput-boolean v7, p0, Lcom/android/stk/StkDialogInstance;->mbSendResp:Z

    .line 207
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 208
    .local v0, args:Landroid/os/Bundle;
    new-array v1, v6, [I

    .line 209
    .local v1, op:[I
    const/4 v3, 0x0

    aput v6, v1, v3

    .line 210
    iget v3, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    aput v3, v1, v7

    .line 211
    const-string v3, "op"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 212
    const-string v3, "response id"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    const-string v3, "confirm"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 217
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v2

    .line 218
    .local v2, service:Lcom/android/stk/StkAppService;
    if-eqz v2, :cond_0

    .line 219
    iget v3, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v2, v6, v0, v3}, Lcom/android/stk/StkAppService;->sendMessageToServiceHandler(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected startTimeOut()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 246
    invoke-virtual {p0}, Lcom/android/stk/StkDialogInstance;->cancelTimeOut()V

    .line 247
    iget-object v1, p0, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-static {v1}, Lcom/android/stk/StkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/cat/Duration;)I

    move-result v0

    .line 250
    .local v0, dialogDuration:I
    iget-object v1, p0, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-nez v1, :cond_0

    .line 260
    :goto_0
    return-void

    .line 254
    :cond_0
    if-nez v0, :cond_1

    .line 255
    const v0, 0x9c40

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/android/stk/StkDialogInstance;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/stk/StkDialogInstance;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
