.class public Lcom/android/stk/StkDialogActivity;
.super Landroid/app/Activity;
.source "StkDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Stk-DA"

.field private static final TEXT:Ljava/lang/String; = "text"


# instance fields
.field private mDialogInstance:Lcom/android/stk/StkDialogInstance;

.field private final mSIMStateChangeFilter:Landroid/content/IntentFilter;

.field private final mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    new-instance v0, Lcom/android/stk/StkDialogInstance;

    invoke-direct {v0}, Lcom/android/stk/StkDialogInstance;-><init>()V

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mSIMStateChangeFilter:Landroid/content/IntentFilter;

    .line 89
    new-instance v0, Lcom/android/stk/StkDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkDialogActivity$1;-><init>(Lcom/android/stk/StkDialogActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stk/StkDialogActivity;)Lcom/android/stk/StkDialogInstance;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    return-object v0
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 165
    const-string v4, "Stk-DA"

    const-string v5, "init"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 167
    .local v3, window:Landroid/view/Window;
    const v4, 0x7f070010

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 170
    .local v1, mMessageView:Landroid/widget/TextView;
    const v4, 0x7f070006

    invoke-virtual {p0, v4}, Lcom/android/stk/StkDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 171
    .local v2, okButton:Landroid/widget/Button;
    const v4, 0x7f070012

    invoke-virtual {p0, v4}, Lcom/android/stk/StkDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 173
    .local v0, cancelButton:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    iget-object v4, v4, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/stk/StkDialogActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    iget-object v4, v4, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    iget-object v4, v4, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    .line 178
    :cond_0
    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    iget-object v4, v4, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    iget-object v4, v4, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    const/4 v5, 0x6

    if-ge v4, v5, :cond_2

    .line 179
    :cond_1
    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    const/16 v4, 0xaa

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 181
    :cond_2
    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    iget-object v4, v4, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_3
    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    iget-object v4, v4, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v4, :cond_4

    .line 185
    const v4, 0x108051d

    invoke-virtual {v3, v6, v4}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 191
    :goto_0
    return-void

    .line 188
    :cond_4
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    iget-object v5, v5, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v6, v4}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    invoke-virtual {v0, p1}, Lcom/android/stk/StkDialogInstance;->handleOnClick(Landroid/view/View;)V

    .line 204
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x3

    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const-string v4, "Stk-DA"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v4, "Stk-DA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate - mbSendResp["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    iget-boolean v6, v6, Lcom/android/stk/StkDialogInstance;->mbSendResp:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    iput-object p0, v4, Lcom/android/stk/StkDialogInstance;->parent:Landroid/app/Activity;

    .line 118
    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/stk/StkDialogInstance;->initFromIntent(Landroid/content/Intent;)V

    .line 119
    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    iget-object v4, v4, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-nez v4, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    .line 162
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/stk/StkDialogActivity;->requestWindowFeature(I)Z

    .line 125
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 127
    .local v3, window:Landroid/view/Window;
    const v4, 0x7f030005

    invoke-virtual {p0, v4}, Lcom/android/stk/StkDialogActivity;->setContentView(I)V

    .line 128
    const v4, 0x7f070010

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 131
    .local v1, mMessageView:Landroid/widget/TextView;
    const v4, 0x7f070006

    invoke-virtual {p0, v4}, Lcom/android/stk/StkDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 132
    .local v2, okButton:Landroid/widget/Button;
    const v4, 0x7f070012

    invoke-virtual {p0, v4}, Lcom/android/stk/StkDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 134
    .local v0, cancelButton:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    iget-object v4, v4, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/stk/StkDialogActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    iget-object v4, v4, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    iget-object v4, v4, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v4, :cond_4

    .line 142
    :cond_1
    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    iget-object v4, v4, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    iget-object v4, v4, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    const/4 v5, 0x6

    if-ge v4, v5, :cond_3

    .line 143
    :cond_2
    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    const/16 v4, 0xaa

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 145
    :cond_3
    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    iget-object v4, v4, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_4
    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    iget-object v4, v4, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v4, :cond_5

    .line 149
    const-string v4, "Stk-DA"

    const-string v5, "onCreate icon is null"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const v4, 0x108051d

    invoke-virtual {v3, v7, v4}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 159
    :goto_1
    const/high16 v4, 0x800

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 161
    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->mSIMStateChangeFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v4, v5}, Lcom/android/stk/StkDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 153
    :cond_5
    const-string v4, "Stk-DA"

    const-string v5, "onCreate icon is not null"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    iget-object v5, v5, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v7, v4}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 229
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    invoke-virtual {v0}, Lcom/android/stk/StkDialogInstance;->handleOnDestroy()V

    .line 231
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stk/StkDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 232
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    invoke-virtual {v0, p1, p2}, Lcom/android/stk/StkDialogInstance;->handleOnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 197
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    invoke-virtual {v0, p1}, Lcom/android/stk/StkDialogInstance;->handleOnNewIntent(Landroid/content/Intent;)V

    .line 199
    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->init()V

    .line 200
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 222
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    invoke-virtual {v0}, Lcom/android/stk/StkDialogInstance;->handleOnPause()V

    .line 223
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 246
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    const-string v0, "text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, v1, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 247
    const-string v0, "Stk-DA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState - ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    iget-object v2, v2, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 215
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    invoke-virtual {v0}, Lcom/android/stk/StkDialogInstance;->handleOnResume()V

    .line 216
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 236
    const-string v0, "Stk-DA"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 239
    const-string v0, "text"

    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mDialogInstance:Lcom/android/stk/StkDialogInstance;

    iget-object v1, v1, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 240
    return-void
.end method
