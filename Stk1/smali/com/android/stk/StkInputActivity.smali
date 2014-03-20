.class public Lcom/android/stk/StkInputActivity;
.super Landroid/app/Activity;
.source "StkInputActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Stk-IA "


# instance fields
.field private mInputInstance:Lcom/android/stk/StkInputInstance;

.field private mNormalLayout:Landroid/view/View;

.field private mPromptView:Landroid/widget/TextView;

.field private final mSIMStateChangeFilter:Landroid/content/IntentFilter;

.field private final mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTextIn:Landroid/widget/EditText;

.field private mYesNoLayout:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    .line 91
    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mPromptView:Landroid/widget/TextView;

    .line 92
    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mYesNoLayout:Landroid/view/View;

    .line 93
    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mNormalLayout:Landroid/view/View;

    .line 96
    new-instance v0, Lcom/android/stk/StkInputInstance;

    invoke-direct {v0}, Lcom/android/stk/StkInputInstance;-><init>()V

    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mSIMStateChangeFilter:Landroid/content/IntentFilter;

    .line 100
    new-instance v0, Lcom/android/stk/StkInputActivity$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkInputActivity$1;-><init>(Lcom/android/stk/StkInputActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stk/StkInputActivity;)Lcom/android/stk/StkInputInstance;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    return-object v0
.end method

.method private configInputDisplay()V
    .locals 7

    .prologue
    .line 264
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 265
    .local v3, numOfCharsView:Landroid/widget/TextView;
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 267
    .local v4, inTypeView:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    iget-object v0, v0, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 268
    const/4 v0, 0x3

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    iget-object v2, v2, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/stk/StkInputActivity;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mPromptView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/stk/StkInputActivity;->mYesNoLayout:Landroid/view/View;

    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mNormalLayout:Landroid/view/View;

    invoke-virtual/range {v0 .. v6}, Lcom/android/stk/StkInputInstance;->handleConfigInputDisplay(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V

    .line 273
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-virtual {v0, p1, v1}, Lcom/android/stk/StkInputInstance;->handleAfterTextChanged(Landroid/text/Editable;Landroid/widget/EditText;)V

    .line 261
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/stk/StkInputInstance;->handleBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 252
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-virtual {v0, p1, v1}, Lcom/android/stk/StkInputInstance;->handleClick(Landroid/view/View;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->finish()V

    .line 127
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const-string v4, "Stk-IA "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate - mbSendResp["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    iget-boolean v6, v6, Lcom/android/stk/StkInputInstance;->mbSendResp:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v4, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    iput-object p0, v4, Lcom/android/stk/StkInputInstance;->parent:Landroid/app/Activity;

    .line 137
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/stk/StkInputActivity;->requestWindowFeature(I)Z

    .line 138
    const v4, 0x7f030001

    invoke-virtual {p0, v4}, Lcom/android/stk/StkInputActivity;->setContentView(I)V

    .line 141
    const v4, 0x7f070005

    invoke-virtual {p0, v4}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    .line 142
    const/high16 v4, 0x7f07

    invoke-virtual {p0, v4}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/stk/StkInputActivity;->mPromptView:Landroid/widget/TextView;

    .line 145
    const v4, 0x7f070006

    invoke-virtual {p0, v4}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 146
    .local v2, okButton:Landroid/widget/Button;
    const v4, 0x7f070008

    invoke-virtual {p0, v4}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 147
    .local v3, yesButton:Landroid/widget/Button;
    const v4, 0x7f070009

    invoke-virtual {p0, v4}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 149
    .local v1, noButton:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v4, 0x7f070007

    invoke-virtual {p0, v4}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/stk/StkInputActivity;->mYesNoLayout:Landroid/view/View;

    .line 154
    const v4, 0x7f070001

    invoke-virtual {p0, v4}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/stk/StkInputActivity;->mNormalLayout:Landroid/view/View;

    .line 158
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 159
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 160
    iget-object v5, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    const-string v4, "INPUT"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/cat/Input;

    iput-object v4, v5, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    .line 161
    iget-object v4, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    const-string v5, "sim id"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/android/stk/StkInputInstance;->mSimId:I

    .line 162
    const-string v4, "Stk-IA "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate - sim id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    iget v6, v6, Lcom/android/stk/StkInputInstance;->mSimId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v4, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    iget-object v4, v4, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    if-nez v4, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->finish()V

    .line 172
    :goto_0
    iget-object v4, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, v4, Lcom/android/stk/StkInputInstance;->mContext:Landroid/content/Context;

    .line 174
    iget-object v4, p0, Lcom/android/stk/StkInputActivity;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/stk/StkInputActivity;->mSIMStateChangeFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v4, v5}, Lcom/android/stk/StkInputActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    return-void

    .line 166
    :cond_0
    iget-object v5, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    iget-object v4, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    iget-object v4, v4, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v4, v4, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    :goto_1
    iput v4, v5, Lcom/android/stk/StkInputInstance;->mState:I

    .line 167
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->configInputDisplay()V

    goto :goto_0

    .line 166
    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    .line 170
    :cond_2
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->finish()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 214
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 215
    const v0, 0x7f060004

    invoke-interface {p1, v4, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 217
    const/4 v0, 0x3

    const/4 v1, 0x2

    const v2, 0x7f060005

    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 219
    return v3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 199
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    invoke-virtual {v0}, Lcom/android/stk/StkInputInstance;->handleDestroy()V

    .line 200
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stk/StkInputActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 201
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    invoke-virtual {v0, p1, p2}, Lcom/android/stk/StkInputInstance;->handleKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->finish()V

    .line 209
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 235
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 245
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 237
    :pswitch_1
    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/android/stk/StkInputInstance;->sendResponse(I)V

    .line 238
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->finish()V

    goto :goto_0

    .line 241
    :pswitch_2
    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    const/16 v2, 0xc

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/stk/StkInputInstance;->sendResponse(ILjava/lang/String;Z)V

    .line 242
    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    invoke-virtual {v1}, Lcom/android/stk/StkInputInstance;->delayFinish()V

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 193
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    invoke-virtual {v0}, Lcom/android/stk/StkInputInstance;->handlePause()V

    .line 194
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 181
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 182
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 224
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 225
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 226
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    iget-object v1, v1, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 228
    return v2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 187
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    invoke-virtual {v0}, Lcom/android/stk/StkInputInstance;->handleResume()V

    .line 188
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mInputInstance:Lcom/android/stk/StkInputInstance;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/stk/StkInputInstance;->handleTextChanged(Ljava/lang/CharSequence;III)V

    .line 257
    return-void
.end method
