.class public Landroid/app/MediaRouteButton;
.super Landroid/view/View;
.source "MediaRouteButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/MediaRouteButton$MediaRouteCallback;
    }
.end annotation


# static fields
.field private static final ACTIVATED_STATE_SET:[I = null

.field private static final CHECKED_STATE_SET:[I = null

.field private static final TAG:Ljava/lang/String; = "MediaRouteButton"


# instance fields
.field private mAttachedToWindow:Z

.field private mCheatSheetEnabled:Z

.field private mDialogFragment:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

.field private mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mIsConnecting:Z

.field private mMinHeight:I

.field private mMinWidth:I

.field private mRemoteActive:Z

.field private mRemoteIndicator:Landroid/graphics/drawable/Drawable;

.field private mRouteTypes:I

.field private mRouter:Landroid/media/MediaRouter;

.field private final mRouterCallback:Landroid/app/MediaRouteButton$MediaRouteCallback;

.field private mToggleMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Landroid/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    .line 65
    new-array v0, v3, [I

    const v1, 0x10102fe

    aput v1, v0, v2

    sput-object v0, Landroid/app/MediaRouteButton;->ACTIVATED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 74
    const v0, 0x10103ad

    invoke-direct {p0, p1, p2, v0}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v2, Landroid/app/MediaRouteButton$MediaRouteCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/app/MediaRouteButton$MediaRouteCallback;-><init>(Landroid/app/MediaRouteButton;Landroid/app/MediaRouteButton$1;)V

    iput-object v2, p0, Landroid/app/MediaRouteButton;->mRouterCallback:Landroid/app/MediaRouteButton$MediaRouteCallback;

    .line 80
    const-string v2, "media_router"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter;

    iput-object v2, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    .line 82
    sget-object v2, Lcom/android/internal/R$styleable;->MediaRouteButton:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/MediaRouteButton;->setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/app/MediaRouteButton;->mMinWidth:I

    .line 88
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/app/MediaRouteButton;->mMinHeight:I

    .line 90
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 93
    .local v1, routeTypes:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    invoke-virtual {p0, v5}, Landroid/app/MediaRouteButton;->setClickable(Z)V

    .line 96
    invoke-virtual {p0, v5}, Landroid/app/MediaRouteButton;->setLongClickable(Z)V

    .line 98
    invoke-virtual {p0, v1}, Landroid/app/MediaRouteButton;->setRouteTypes(I)V

    .line 99
    return-void
.end method

.method static synthetic access$102(Landroid/app/MediaRouteButton;Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Lcom/android/internal/app/MediaRouteChooserDialogFragment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Landroid/app/MediaRouteButton;->mDialogFragment:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    return-object p1
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 3

    .prologue
    .line 429
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 430
    .local v0, context:Landroid/content/Context;
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 431
    check-cast v0, Landroid/content/ContextWrapper;

    .end local v0           #context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0       #context:Landroid/content/Context;
    goto :goto_0

    .line 433
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 434
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The MediaRouteButton\'s Context is not an Activity."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 437
    :cond_1
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    return-object v0
.end method

.method private setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "d"

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 104
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/app/MediaRouteButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :cond_0
    iput-object p1, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 107
    if-eqz p1, :cond_1

    .line 108
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 109
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 110
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 113
    :cond_1
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->refreshDrawableState()V

    .line 114
    return-void

    :cond_2
    move v0, v1

    .line 110
    goto :goto_0
.end method

.method private updateRouteInfo()V
    .locals 0

    .prologue
    .line 209
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->updateRemoteIndicator()V

    .line 210
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->updateRouteCount()V

    .line 211
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 282
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 284
    iget-object v1, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 285
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getDrawableState()[I

    move-result-object v0

    .line 286
    .local v0, myDrawableState:[I
    iget-object v1, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 287
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->invalidate()V

    .line 289
    .end local v0           #myDrawableState:[I
    :cond_0
    return-void
.end method

.method public getRouteTypes()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 299
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 300
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 312
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 314
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget v1, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    iget-object v2, p0, Landroid/app/MediaRouteButton;->mRouterCallback:Landroid/app/MediaRouteButton$MediaRouteCallback;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 316
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->updateRouteInfo()V

    .line 318
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 266
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 272
    .local v0, drawableState:[I
    iget-boolean v1, p0, Landroid/app/MediaRouteButton;->mIsConnecting:Z

    if-eqz v1, :cond_1

    .line 273
    sget-object v1, Landroid/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    .line 277
    :cond_0
    :goto_0
    return-object v0

    .line 274
    :cond_1
    iget-boolean v1, p0, Landroid/app/MediaRouteButton;->mRemoteActive:Z

    if-eqz v1, :cond_0

    .line 275
    sget-object v1, Landroid/app/MediaRouteButton;->ACTIVATED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 322
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroid/app/MediaRouteButton;->mRouterCallback:Landroid/app/MediaRouteButton$MediaRouteCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 325
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 326
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 327
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 374
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 376
    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_0

    .line 390
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingLeft()I

    move-result v5

    .line 379
    .local v5, left:I
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 380
    .local v6, right:I
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingTop()I

    move-result v7

    .line 381
    .local v7, top:I
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingBottom()I

    move-result v9

    sub-int v0, v8, v9

    .line 383
    .local v0, bottom:I
    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 384
    .local v4, drawWidth:I
    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 385
    .local v1, drawHeight:I
    sub-int v8, v6, v5

    sub-int/2addr v8, v4

    div-int/lit8 v8, v8, 0x2

    add-int v2, v5, v8

    .line 386
    .local v2, drawLeft:I
    sub-int v8, v0, v7

    sub-int/2addr v8, v1

    div-int/lit8 v8, v8, 0x2

    add-int v3, v7, v8

    .line 388
    .local v3, drawTop:I
    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    add-int v9, v2, v4

    add-int v10, v3, v1

    invoke-virtual {v8, v2, v3, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 389
    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v9, 0x0

    .line 331
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 332
    .local v7, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 333
    .local v2, heightSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 334
    .local v6, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 336
    .local v1, heightMode:I
    iget v10, p0, Landroid/app/MediaRouteButton;->mMinWidth:I

    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    :goto_0
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 338
    .local v4, minWidth:I
    iget v8, p0, Landroid/app/MediaRouteButton;->mMinHeight:I

    iget-object v10, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_0

    iget-object v9, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    :cond_0
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 342
    .local v3, minHeight:I
    sparse-switch v6, :sswitch_data_0

    .line 351
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingLeft()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingRight()I

    move-result v9

    add-int v5, v8, v9

    .line 356
    .local v5, width:I
    :goto_1
    sparse-switch v1, :sswitch_data_1

    .line 365
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingTop()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingBottom()I

    move-result v9

    add-int v0, v8, v9

    .line 369
    .local v0, height:I
    :goto_2
    invoke-virtual {p0, v5, v0}, Landroid/app/MediaRouteButton;->setMeasuredDimension(II)V

    .line 370
    return-void

    .end local v0           #height:I
    .end local v3           #minHeight:I
    .end local v4           #minWidth:I
    .end local v5           #width:I
    :cond_1
    move v8, v9

    .line 336
    goto :goto_0

    .line 344
    .restart local v3       #minHeight:I
    .restart local v4       #minWidth:I
    :sswitch_0
    move v5, v7

    .line 345
    .restart local v5       #width:I
    goto :goto_1

    .line 347
    .end local v5           #width:I
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingLeft()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 348
    .restart local v5       #width:I
    goto :goto_1

    .line 358
    :sswitch_2
    move v0, v2

    .line 359
    .restart local v0       #height:I
    goto :goto_2

    .line 361
    .end local v0           #height:I
    :sswitch_3
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingTop()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 362
    .restart local v0       #height:I
    goto :goto_2

    .line 342
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 356
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public performClick()Z
    .locals 7

    .prologue
    .line 119
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v1

    .line 120
    .local v1, handled:Z
    if-nez v1, :cond_0

    .line 121
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/app/MediaRouteButton;->playSoundEffect(I)V

    .line 124
    :cond_0
    iget-boolean v4, p0, Landroid/app/MediaRouteButton;->mToggleMode:Z

    if-eqz v4, :cond_4

    .line 125
    iget-boolean v4, p0, Landroid/app/MediaRouteButton;->mRemoteActive:Z

    if-eqz v4, :cond_2

    .line 126
    iget-object v4, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget v5, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    iget-object v6, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v6}, Landroid/media/MediaRouter;->getSystemAudioRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaRouter;->selectRouteInt(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 141
    :cond_1
    :goto_0
    return v1

    .line 128
    :cond_2
    iget-object v4, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v4}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v0

    .line 129
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 130
    iget-object v4, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v4, v2}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    .line 131
    .local v3, route:Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v4

    iget v5, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v4}, Landroid/media/MediaRouter;->getSystemAudioRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v4

    if-eq v3, v4, :cond_3

    .line 133
    iget-object v4, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget v5, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    invoke-virtual {v4, v5, v3}, Landroid/media/MediaRouter;->selectRouteInt(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 129
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 138
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #route:Landroid/media/MediaRouter$RouteInfo;
    :cond_4
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->showDialog()V

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 150
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 187
    :goto_0
    return v9

    .line 154
    :cond_0
    iget-boolean v11, p0, Landroid/app/MediaRouteButton;->mCheatSheetEnabled:Z

    if-nez v11, :cond_1

    move v9, v10

    .line 155
    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 159
    .local v1, contentDesc:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v9, v10

    .line 161
    goto :goto_0

    .line 164
    :cond_2
    const/4 v11, 0x2

    new-array v6, v11, [I

    .line 165
    .local v6, screenPos:[I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 166
    .local v3, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Landroid/app/MediaRouteButton;->getLocationOnScreen([I)V

    .line 167
    invoke-virtual {p0, v3}, Landroid/app/MediaRouteButton;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 169
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 170
    .local v2, context:Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getWidth()I

    move-result v8

    .line 171
    .local v8, width:I
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getHeight()I

    move-result v4

    .line 172
    .local v4, height:I
    aget v11, v6, v9

    div-int/lit8 v12, v4, 0x2

    add-int v5, v11, v12

    .line 173
    .local v5, midy:I
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v7, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 175
    .local v7, screenWidth:I
    invoke-static {v2, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 176
    .local v0, cheatSheet:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-ge v5, v11, :cond_3

    .line 178
    const v11, 0x800035

    aget v12, v6, v10

    sub-int v12, v7, v12

    div-int/lit8 v13, v8, 0x2

    sub-int/2addr v12, v13

    invoke-virtual {v0, v11, v12, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 184
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 185
    invoke-virtual {p0, v10}, Landroid/app/MediaRouteButton;->performHapticFeedback(I)Z

    goto :goto_0

    .line 182
    :cond_3
    const/16 v11, 0x51

    invoke-virtual {v0, v11, v10, v4}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1
.end method

.method setCheatSheetEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 145
    iput-boolean p1, p0, Landroid/app/MediaRouteButton;->mCheatSheetEnabled:Z

    .line 146
    return-void
.end method

.method public setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 393
    iput-object p1, p0, Landroid/app/MediaRouteButton;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 394
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mDialogFragment:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mDialogFragment:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    :cond_0
    return-void
.end method

.method public setRouteTypes(I)V
    .locals 2
    .parameter "types"

    .prologue
    .line 191
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    if-ne p1, v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroid/app/MediaRouteButton;->mRouterCallback:Landroid/app/MediaRouteButton$MediaRouteCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 200
    :cond_2
    iput p1, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    .line 202
    iget-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 203
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->updateRouteInfo()V

    .line 204
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroid/app/MediaRouteButton;->mRouterCallback:Landroid/app/MediaRouteButton$MediaRouteCallback;

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    const/4 v1, 0x0

    .line 304
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 306
    iget-object v2, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 308
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 306
    goto :goto_0
.end method

.method public showDialog()V
    .locals 3

    .prologue
    .line 404
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 405
    .local v0, fm:Landroid/app/FragmentManager;
    iget-object v1, p0, Landroid/app/MediaRouteButton;->mDialogFragment:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    if-nez v1, :cond_0

    .line 407
    const-string v1, "android:MediaRouteChooserDialogFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    iput-object v1, p0, Landroid/app/MediaRouteButton;->mDialogFragment:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    .line 410
    :cond_0
    iget-object v1, p0, Landroid/app/MediaRouteButton;->mDialogFragment:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    if-eqz v1, :cond_1

    .line 411
    const-string v1, "MediaRouteButton"

    const-string v2, "showDialog(): Already showing!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :goto_0
    return-void

    .line 415
    :cond_1
    new-instance v1, Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    invoke-direct {v1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;-><init>()V

    iput-object v1, p0, Landroid/app/MediaRouteButton;->mDialogFragment:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    .line 416
    iget-object v1, p0, Landroid/app/MediaRouteButton;->mDialogFragment:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    iget-object v2, p0, Landroid/app/MediaRouteButton;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v1, p0, Landroid/app/MediaRouteButton;->mDialogFragment:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    new-instance v2, Landroid/app/MediaRouteButton$1;

    invoke-direct {v2, p0}, Landroid/app/MediaRouteButton$1;-><init>(Landroid/app/MediaRouteButton;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setLauncherListener(Lcom/android/internal/app/MediaRouteChooserDialogFragment$LauncherListener;)V

    .line 423
    iget-object v1, p0, Landroid/app/MediaRouteButton;->mDialogFragment:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    iget v2, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    invoke-virtual {v1, v2}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setRouteTypes(I)V

    .line 424
    iget-object v1, p0, Landroid/app/MediaRouteButton;->mDialogFragment:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    const-string v2, "android:MediaRouteChooserDialogFragment"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method updateRemoteIndicator()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 218
    iget-object v6, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget v7, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    invoke-virtual {v6, v7}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    .line 219
    .local v3, selected:Landroid/media/MediaRouter$RouteInfo;
    iget-object v6, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v6}, Landroid/media/MediaRouter;->getSystemAudioRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v6

    if-eq v3, v6, :cond_3

    move v1, v4

    .line 220
    .local v1, isRemote:Z
    :goto_0
    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    move v0, v4

    .line 222
    .local v0, isConnecting:Z
    :goto_1
    const/4 v2, 0x0

    .line 223
    .local v2, needsRefresh:Z
    iget-boolean v4, p0, Landroid/app/MediaRouteButton;->mRemoteActive:Z

    if-eq v4, v1, :cond_0

    .line 224
    iput-boolean v1, p0, Landroid/app/MediaRouteButton;->mRemoteActive:Z

    .line 225
    const/4 v2, 0x1

    .line 227
    :cond_0
    iget-boolean v4, p0, Landroid/app/MediaRouteButton;->mIsConnecting:Z

    if-eq v4, v0, :cond_1

    .line 228
    iput-boolean v0, p0, Landroid/app/MediaRouteButton;->mIsConnecting:Z

    .line 229
    const/4 v2, 0x1

    .line 232
    :cond_1
    if-eqz v2, :cond_2

    .line 233
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->refreshDrawableState()V

    .line 235
    :cond_2
    return-void

    .end local v0           #isConnecting:Z
    .end local v1           #isRemote:Z
    .end local v2           #needsRefresh:Z
    :cond_3
    move v1, v5

    .line 219
    goto :goto_0

    .restart local v1       #isRemote:Z
    :cond_4
    move v0, v5

    .line 220
    goto :goto_1
.end method

.method updateRouteCount()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 238
    iget-object v6, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v6}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v0

    .line 239
    .local v0, N:I
    const/4 v1, 0x0

    .line 240
    .local v1, count:I
    const/4 v2, 0x0

    .line 241
    .local v2, hasVideoRoutes:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 242
    iget-object v6, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v6, v3}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v4

    .line 243
    .local v4, route:Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v5

    .line 244
    .local v5, routeTypes:I
    iget v6, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    and-int/2addr v6, v5

    if-eqz v6, :cond_0

    .line 245
    instance-of v6, v4, Landroid/media/MediaRouter$RouteGroup;

    if-eqz v6, :cond_1

    .line 246
    check-cast v4, Landroid/media/MediaRouter$RouteGroup;

    .end local v4           #route:Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteGroup;->getRouteCount()I

    move-result v6

    add-int/2addr v1, v6

    .line 250
    :goto_1
    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_0

    .line 251
    const/4 v2, 0x1

    .line 241
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    .restart local v4       #route:Landroid/media/MediaRouter$RouteInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 256
    .end local v4           #route:Landroid/media/MediaRouter$RouteInfo;
    .end local v5           #routeTypes:I
    :cond_2
    if-eqz v1, :cond_3

    move v6, v7

    :goto_2
    invoke-virtual {p0, v6}, Landroid/app/MediaRouteButton;->setEnabled(Z)V

    .line 260
    const/4 v6, 0x2

    if-ne v1, v6, :cond_4

    iget v6, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    if-nez v2, :cond_4

    :goto_3
    iput-boolean v7, p0, Landroid/app/MediaRouteButton;->mToggleMode:Z

    .line 262
    return-void

    :cond_3
    move v6, v8

    .line 256
    goto :goto_2

    :cond_4
    move v7, v8

    .line 260
    goto :goto_3
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
