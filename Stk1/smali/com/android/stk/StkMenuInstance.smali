.class Lcom/android/stk/StkMenuInstance;
.super Ljava/lang/Object;
.source "StkMenuInstance.java"


# static fields
.field static final FINISH_CAUSE_FLIGHT_MODE:I = 0x2

.field static final FINISH_CAUSE_NO:I = 0x1

.field static final FINISH_CAUSE_NULL_MENU:I = 0x4

.field static final FINISH_CAUSE_NULL_SERVICE:I = 0x3

.field private static final LOGTAG:Ljava/lang/String; = "Stk-MI"

.field private static final MSG_ID_TIMEOUT:I = 0x1

.field static final STATE_END:I = 0x3

.field static final STATE_MAIN:I = 0x1

.field static final STATE_SECONDARY:I = 0x2


# instance fields
.field appService:Lcom/android/stk/StkAppService;

.field mAcceptUsersInput:Z

.field mContext:Landroid/content/Context;

.field protected mSendResp:Z

.field mSimId:I

.field mState:I

.field mStkMenu:Lcom/android/internal/telephony/cat/Menu;

.field mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object v1, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 103
    iput v0, p0, Lcom/android/stk/StkMenuInstance;->mState:I

    .line 104
    iput-boolean v0, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    .line 105
    iput-object v1, p0, Lcom/android/stk/StkMenuInstance;->mContext:Landroid/content/Context;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/stk/StkMenuInstance;->mSimId:I

    .line 109
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkMenuInstance;->appService:Lcom/android/stk/StkAppService;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stk/StkMenuInstance;->mSendResp:Z

    .line 127
    new-instance v0, Lcom/android/stk/StkMenuInstance$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkMenuInstance$1;-><init>(Lcom/android/stk/StkMenuInstance;)V

    iput-object v0, p0, Lcom/android/stk/StkMenuInstance;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method private initFromIntent(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    .line 409
    const/4 v0, 0x1

    .line 410
    .local v0, nothing:Z
    if-eqz p1, :cond_1

    .line 411
    const-string v1, "STATE"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/stk/StkMenuInstance;->mState:I

    .line 412
    const-string v1, "sim id"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/stk/StkMenuInstance;->mSimId:I

    .line 413
    const-string v1, "Stk-MI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/stk/StkMenuInstance;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/stk/StkMenuInstance;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget v1, p0, Lcom/android/stk/StkMenuInstance;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 415
    const/4 v0, 0x0

    .line 420
    :cond_0
    :goto_0
    return v0

    .line 418
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method cancelTimeOut()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/stk/StkMenuInstance;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 332
    return-void
.end method

.method displayMenu(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/app/ListActivity;)V
    .locals 6
    .parameter "iconView"
    .parameter "textView"
    .parameter "list"

    .prologue
    const/4 v4, 0x0

    .line 346
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v3, :cond_7

    .line 348
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 349
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 350
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    :goto_0
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    if-nez v3, :cond_4

    .line 355
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 357
    const/high16 v2, 0x7f06

    .line 358
    .local v2, resId:I
    iget v3, p0, Lcom/android/stk/StkMenuInstance;->mSimId:I

    if-nez v3, :cond_2

    .line 363
    const v2, 0x7f060001

    .line 373
    :cond_0
    :goto_1
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 381
    .end local v2           #resId:I
    :goto_2
    const/4 v1, 0x0

    .line 382
    .local v1, i:I
    const/4 v1, 0x0

    :goto_3
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 384
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    .line 386
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 387
    const-string v3, "Stk-MI"

    const-string v4, "Remove null item from menu.items"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 352
    .end local v1           #i:I
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 371
    .restart local v2       #resId:I
    :cond_2
    iget v3, p0, Lcom/android/stk/StkMenuInstance;->mSimId:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 372
    const v2, 0x7f060002

    goto :goto_1

    .line 375
    .end local v2           #resId:I
    :cond_3
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 378
    :cond_4
    const/4 v3, 0x4

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 390
    .restart local v1       #i:I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 392
    :cond_6
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_8

    .line 394
    const-string v3, "Stk-MI"

    const-string v4, "should not display the SET_UP_MENU because no item"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .end local v1           #i:I
    :cond_7
    :goto_4
    return-void

    .line 398
    .restart local v1       #i:I
    :cond_8
    new-instance v0, Lcom/android/stk/StkMenuAdapter;

    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    iget-object v4, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B

    iget-object v5, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    invoke-direct {v0, p3, v3, v4, v5}, Lcom/android/stk/StkMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[BZ)V

    .line 401
    .local v0, adapter:Lcom/android/stk/StkMenuAdapter;
    invoke-virtual {p3, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 403
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget v3, v3, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    invoke-virtual {p3, v3}, Landroid/app/ListActivity;->setSelection(I)V

    goto :goto_4
.end method

.method getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;
    .locals 5
    .parameter "position"

    .prologue
    .line 424
    const/4 v2, 0x0

    .line 425
    .local v2, item:Lcom/android/internal/telephony/cat/Item;
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v3, :cond_0

    .line 427
    :try_start_0
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/cat/Item;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 438
    :cond_0
    :goto_0
    return-object v2

    .line 428
    :catch_0
    move-exception v1

    .line 430
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "Stk-MI"

    const-string v4, "Invalid menu"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 432
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 434
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "Stk-MI"

    const-string v4, "Invalid menu"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 182
    const-string v2, "Stk-MI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleKeyDown, mAcceptUsersInput: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-boolean v2, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    if-nez v2, :cond_0

    .line 203
    :goto_0
    return v0

    .line 187
    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    move v0, v1

    .line 203
    goto :goto_0

    .line 189
    :pswitch_0
    const-string v2, "Stk-MI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleKeyDown - KEYCODE_BACK - mState["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/stk/StkMenuInstance;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget v2, p0, Lcom/android/stk/StkMenuInstance;->mState:I

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 192
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/stk/StkMenuInstance;->cancelTimeOut()V

    .line 193
    iput-boolean v1, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    .line 194
    const-string v1, "Stk-MI"

    const-string v2, "onKeyDown - KEYCODE_BACK - STATE_SECONDARY"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Lcom/android/stk/StkMenuInstance;->sendResponse(I)V

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 190
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public handleListItemClick(ILandroid/widget/ProgressBar;)V
    .locals 5
    .parameter "position"
    .parameter "bar"

    .prologue
    const/4 v4, 0x0

    .line 163
    iget-boolean v1, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    if-nez v1, :cond_0

    .line 164
    const-string v1, "Stk-MI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleListItemClick, mAcceptUsersInput: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/stk/StkMenuInstance;->getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;

    move-result-object v0

    .line 169
    .local v0, item:Lcom/android/internal/telephony/cat/Item;
    if-nez v0, :cond_1

    .line 170
    const-string v1, "Stk-MI"

    const-string v2, "handleListItemClick, item is null"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_1
    const/16 v1, 0xb

    iget v2, v0, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/stk/StkMenuInstance;->sendResponse(IIZ)V

    .line 174
    iput-boolean v4, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    .line 175
    const-string v1, "Stk-MI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick, id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mAcceptUsersInput: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 177
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0
.end method

.method public handleNewIntent(Landroid/content/Intent;Z)Z
    .locals 4
    .parameter "intent"
    .parameter "access_user_input"

    .prologue
    .line 152
    const/4 v0, 0x1

    .line 154
    .local v0, nothing:Z
    invoke-direct {p0, p1}, Lcom/android/stk/StkMenuInstance;->initFromIntent(Landroid/content/Intent;)Z

    move-result v0

    .line 155
    iput-boolean p2, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    .line 156
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/stk/StkMenuInstance;->mSendResp:Z

    .line 157
    const-string v1, "Stk-MI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNewIntent, return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mAcceptUsersInput: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return v0
.end method

.method public handleOnCreate(Landroid/content/Context;Landroid/content/Intent;Z)Z
    .locals 4
    .parameter "context"
    .parameter "intent"
    .parameter "access_user_input"

    .prologue
    .line 141
    const/4 v0, 0x1

    .line 143
    .local v0, nothing:Z
    iput-object p1, p0, Lcom/android/stk/StkMenuInstance;->mContext:Landroid/content/Context;

    .line 144
    invoke-direct {p0, p2}, Lcom/android/stk/StkMenuInstance;->initFromIntent(Landroid/content/Intent;)Z

    move-result v0

    .line 145
    iput-boolean p3, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    .line 146
    const-string v1, "Stk-MI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOnCreate, return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mAcceptUsersInput: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return v0
.end method

.method public handleOptionItemSelected(Landroid/view/MenuItem;Landroid/widget/ProgressBar;)Z
    .locals 8
    .parameter "item"
    .parameter "bar"

    .prologue
    const/16 v7, 0xb

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 290
    iget-boolean v5, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    if-nez v5, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v3

    .line 293
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_2
    :pswitch_0
    move v3, v4

    .line 327
    goto :goto_0

    .line 295
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/stk/StkMenuInstance;->cancelTimeOut()V

    .line 296
    iput-boolean v4, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    .line 298
    const/16 v4, 0x16

    invoke-virtual {p0, v4}, Lcom/android/stk/StkMenuInstance;->sendResponse(I)V

    goto :goto_0

    .line 301
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/stk/StkMenuInstance;->cancelTimeOut()V

    .line 302
    iput-boolean v4, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    .line 304
    const/4 v1, 0x0

    .line 305
    .local v1, position:I
    invoke-virtual {p0, v1}, Lcom/android/stk/StkMenuInstance;->getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;

    move-result-object v2

    .line 306
    .local v2, stkItem:Lcom/android/internal/telephony/cat/Item;
    if-eqz v2, :cond_2

    .line 310
    iget v4, v2, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-virtual {p0, v7, v4, v3}, Lcom/android/stk/StkMenuInstance;->sendResponse(IIZ)V

    goto :goto_0

    .line 313
    .end local v1           #position:I
    .end local v2           #stkItem:Lcom/android/internal/telephony/cat/Item;
    :pswitch_3
    iget-object v5, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v5, :cond_0

    .line 314
    iget-object v5, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    iget-object v6, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget v6, v6, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Item;

    .line 315
    .local v0, defaultItem:Lcom/android/internal/telephony/cat/Item;
    if-eqz v0, :cond_0

    .line 318
    iget v5, v0, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-virtual {p0, v7, v5, v4}, Lcom/android/stk/StkMenuInstance;->sendResponse(IIZ)V

    .line 320
    iput-boolean v4, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    .line 321
    invoke-virtual {p2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 322
    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public handlePause()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/stk/StkMenuInstance;->appService:Lcom/android/stk/StkAppService;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/stk/StkMenuInstance;->mSimId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/stk/StkAppService;->indicateMenuVisibility(ZI)V

    .line 251
    invoke-virtual {p0}, Lcom/android/stk/StkMenuInstance;->cancelTimeOut()V

    .line 252
    return-void
.end method

.method public handlePrepareOptionMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, helpVisible:Z
    const/4 v2, 0x0

    .line 259
    .local v2, mainVisible:Z
    iget v3, p0, Lcom/android/stk/StkMenuInstance;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 260
    const/4 v2, 0x1

    .line 262
    :cond_0
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v3, :cond_1

    .line 263
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v0, v3, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    .line 266
    :cond_1
    if-eqz v2, :cond_2

    .line 267
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f060004

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 269
    :cond_2
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 271
    if-eqz v0, :cond_3

    .line 272
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f060005

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 274
    :cond_3
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 276
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v3, :cond_5

    .line 277
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    iget-object v4, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget v4, v4, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/Item;

    .line 278
    .local v1, item:Lcom/android/internal/telephony/cat/Item;
    if-eqz v1, :cond_4

    iget-object v3, v1, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 279
    :cond_4
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 285
    .end local v1           #item:Lcom/android/internal/telephony/cat/Item;
    :cond_5
    :goto_0
    return v5

    .line 281
    .restart local v1       #item:Lcom/android/internal/telephony/cat/Item;
    :cond_6
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, v1, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 282
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public handleResume(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/app/ListActivity;Landroid/widget/ProgressBar;)I
    .locals 4
    .parameter "iconView"
    .parameter "textView"
    .parameter "list"
    .parameter "bar"

    .prologue
    const/4 v3, 0x1

    .line 208
    const/4 v0, 0x1

    .line 211
    .local v0, nothing:I
    invoke-virtual {p0}, Lcom/android/stk/StkMenuInstance;->isOnFlightMode()Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 212
    const-string v1, "Stk-MI"

    const-string v2, "don\'t make stk be visible"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x2

    .line 244
    :goto_0
    const-string v1, "Stk-MI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleResume, result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return v0

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkMenuInstance;->appService:Lcom/android/stk/StkAppService;

    if-nez v1, :cond_1

    .line 218
    const-string v1, "Stk-MI"

    const-string v2, "can not launch stk menu \'cause null StkAppService"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x3

    .line 220
    goto :goto_0

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/android/stk/StkMenuInstance;->appService:Lcom/android/stk/StkAppService;

    iget v2, p0, Lcom/android/stk/StkMenuInstance;->mSimId:I

    invoke-virtual {v1, v3, v2}, Lcom/android/stk/StkAppService;->indicateMenuVisibility(ZI)V

    .line 224
    iget-object v1, p0, Lcom/android/stk/StkMenuInstance;->appService:Lcom/android/stk/StkAppService;

    iget v2, p0, Lcom/android/stk/StkMenuInstance;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/stk/StkAppService;->getMenu(I)Lcom/android/internal/telephony/cat/Menu;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 225
    iget-object v1, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-nez v1, :cond_2

    .line 226
    const/4 v0, 0x4

    .line 227
    goto :goto_0

    .line 229
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/stk/StkMenuInstance;->displayMenu(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/app/ListActivity;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/stk/StkMenuInstance;->startTimeOut()V

    .line 234
    iget-boolean v1, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    if-nez v1, :cond_3

    .line 235
    iput v3, p0, Lcom/android/stk/StkMenuInstance;->mState:I

    .line 236
    iput-boolean v3, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    .line 240
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 241
    const/16 v1, 0x8

    invoke-virtual {p4, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method isOnFlightMode()Z
    .locals 5

    .prologue
    .line 478
    const/4 v1, 0x0

    .line 480
    .local v1, mode:I
    :try_start_0
    iget-object v2, p0, Lcom/android/stk/StkMenuInstance;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 486
    :goto_0
    const-string v2, "Stk-MI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "airlane mode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "Stk-MI"

    const-string v3, "fail to get airlane mode"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const/4 v1, 0x0

    goto :goto_0

    .line 487
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method sendResponse(I)V
    .locals 1
    .parameter "resId"

    .prologue
    const/4 v0, 0x0

    .line 442
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/stk/StkMenuInstance;->sendResponse(IIZ)V

    .line 443
    return-void
.end method

.method sendResponse(IIZ)V
    .locals 7
    .parameter "resId"
    .parameter "itemId"
    .parameter "help"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 452
    iget v2, p0, Lcom/android/stk/StkMenuInstance;->mState:I

    if-eq v5, v2, :cond_0

    const/16 v2, 0x16

    if-ne v2, p1, :cond_0

    .line 453
    const-string v2, "Stk-MI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore response of End Session in mState["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/stk/StkMenuInstance;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :goto_0
    return-void

    .line 457
    :cond_0
    const-string v2, "Stk-MI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendResponse resID["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] itemId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] help["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iput-boolean v6, p0, Lcom/android/stk/StkMenuInstance;->mSendResp:Z

    .line 459
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 460
    .local v0, args:Landroid/os/Bundle;
    new-array v1, v5, [I

    .line 461
    .local v1, op:[I
    const/4 v2, 0x0

    aput v5, v1, v2

    .line 462
    iget v2, p0, Lcom/android/stk/StkMenuInstance;->mSimId:I

    aput v2, v1, v6

    .line 463
    const-string v2, "op"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 464
    const-string v2, "response id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 465
    const-string v2, "menu selection"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 466
    const-string v2, "help"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 467
    iget-object v2, p0, Lcom/android/stk/StkMenuInstance;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/stk/StkMenuInstance;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/stk/StkAppService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method showTextToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 472
    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 473
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x50

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 474
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 475
    return-void
.end method

.method startTimeOut()V
    .locals 4

    .prologue
    .line 335
    iget v0, p0, Lcom/android/stk/StkMenuInstance;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/android/stk/StkMenuInstance;->cancelTimeOut()V

    .line 338
    iget-object v0, p0, Lcom/android/stk/StkMenuInstance;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/stk/StkMenuInstance;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 341
    :cond_0
    return-void
.end method
