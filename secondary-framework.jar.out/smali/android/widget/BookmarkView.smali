.class public Landroid/widget/BookmarkView;
.super Landroid/widget/FrameLayout;
.source "BookmarkView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/BookmarkView$BookmarkDataSetObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DEFAULT_MAX_ZOOM:F = 400.0f

.field private static final DEFAULT_REFLECTION:F = 0.25f

.field private static final TAG:Ljava/lang/String; = "BookmarkView"


# instance fields
.field private mBookmarkAdapter:Landroid/widget/BookmarkAdapter;

.field private mBookmarkDataSetObserver:Landroid/widget/BookmarkView$BookmarkDataSetObserver;

.field private mCoverflow:Landroid/widget/BounceCoverFlow;

.field private mCurrentSelectedPosition:I

.field private mImageDispHeight:I

.field private mImageDispWidth:I

.field private mImageReflection:F

.field private mIndicators:Landroid/widget/LinearLayout;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInfoColor:I

.field private mInfoView:Landroid/widget/TextView;

.field private mItemCount:I

.field private mMaxZoom:F

.field private mOldItemCount:I

.field private mRecycledIndicators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectionChangeListener:Landroid/widget/BounceGallery$OnSelectionChangeListener;

.field private mSpaceBetweenIndicators:I

.field private mSpaceBetweenItems:I

.field private mTitleColor:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/BookmarkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/BookmarkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x43c8

    const/high16 v5, 0x3e80

    const/4 v4, -0x1

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    iput v6, p0, Landroid/widget/BookmarkView;->mMaxZoom:F

    .line 74
    iput v5, p0, Landroid/widget/BookmarkView;->mImageReflection:F

    .line 76
    iput v4, p0, Landroid/widget/BookmarkView;->mInfoColor:I

    .line 77
    iput v4, p0, Landroid/widget/BookmarkView;->mTitleColor:I

    .line 90
    iput v4, p0, Landroid/widget/BookmarkView;->mCurrentSelectedPosition:I

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/BookmarkView;->mRecycledIndicators:Ljava/util/List;

    .line 422
    new-instance v2, Landroid/widget/BookmarkView$1;

    invoke-direct {v2, p0}, Landroid/widget/BookmarkView$1;-><init>(Landroid/widget/BookmarkView;)V

    iput-object v2, p0, Landroid/widget/BookmarkView;->mSelectionChangeListener:Landroid/widget/BounceGallery$OnSelectionChangeListener;

    .line 112
    sget-object v2, Lcom/mediatek/internal/R$styleable;->BookmarkView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 114
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 115
    .local v1, resources:Landroid/content/res/Resources;
    const/4 v2, 0x0

    const v3, 0x20b0019

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/widget/BookmarkView;->mImageDispWidth:I

    .line 117
    const v2, 0x20b001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/widget/BookmarkView;->mImageDispHeight:I

    .line 120
    const/4 v2, 0x3

    const v3, 0x20b0017

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/widget/BookmarkView;->mSpaceBetweenIndicators:I

    .line 122
    const/4 v2, 0x2

    const v3, 0x20b0018

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/widget/BookmarkView;->mSpaceBetweenItems:I

    .line 125
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/widget/BookmarkView;->mMaxZoom:F

    .line 126
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/widget/BookmarkView;->mImageReflection:F

    .line 129
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/widget/BookmarkView;->mTitleColor:I

    .line 131
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/widget/BookmarkView;->mInfoColor:I

    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Landroid/widget/BookmarkView;->mInflater:Landroid/view/LayoutInflater;

    .line 137
    iget-object v2, p0, Landroid/widget/BookmarkView;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x2070002

    invoke-virtual {v2, v3, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 138
    return-void
.end method

.method static synthetic access$000(Landroid/widget/BookmarkView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/widget/BookmarkView;->refreshIndicators()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/BookmarkView;)Landroid/widget/BookmarkAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/BookmarkView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Landroid/widget/BookmarkView;->mOldItemCount:I

    return v0
.end method

.method static synthetic access$202(Landroid/widget/BookmarkView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Landroid/widget/BookmarkView;->mOldItemCount:I

    return p1
.end method

.method static synthetic access$300(Landroid/widget/BookmarkView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Landroid/widget/BookmarkView;->mItemCount:I

    return v0
.end method

.method static synthetic access$302(Landroid/widget/BookmarkView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Landroid/widget/BookmarkView;->mItemCount:I

    return p1
.end method

.method static synthetic access$400(Landroid/widget/BookmarkView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Landroid/widget/BookmarkView;->mCurrentSelectedPosition:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/BookmarkView;)Landroid/widget/BounceCoverFlow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;

    return-object v0
.end method

.method private refreshIndicators()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 329
    iget-object v5, p0, Landroid/widget/BookmarkView;->mIndicators:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 330
    .local v2, indicatorCnt:I
    move v3, v2

    .line 331
    .local v3, realCount:I
    iget v5, p0, Landroid/widget/BookmarkView;->mItemCount:I

    if-le v2, v5, :cond_0

    .line 332
    iget v3, p0, Landroid/widget/BookmarkView;->mItemCount:I

    .line 333
    const/4 v4, 0x0

    .line 334
    .local v4, recycleView:Landroid/widget/ImageView;
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    iget v5, p0, Landroid/widget/BookmarkView;->mItemCount:I

    if-lt v0, v5, :cond_3

    .line 335
    iget-object v5, p0, Landroid/widget/BookmarkView;->mIndicators:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #recycleView:Landroid/widget/ImageView;
    check-cast v4, Landroid/widget/ImageView;

    .line 336
    .restart local v4       #recycleView:Landroid/widget/ImageView;
    iget-object v5, p0, Landroid/widget/BookmarkView;->mIndicators:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 339
    invoke-virtual {v4}, Landroid/widget/ImageView;->forceLayout()V

    .line 340
    invoke-virtual {v4}, Landroid/widget/ImageView;->dispatchStartTemporaryDetach()V

    .line 341
    iget-object v5, p0, Landroid/widget/BookmarkView;->mRecycledIndicators:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 343
    .end local v0           #i:I
    .end local v4           #recycleView:Landroid/widget/ImageView;
    :cond_0
    iget v5, p0, Landroid/widget/BookmarkView;->mItemCount:I

    if-ge v2, v5, :cond_3

    .line 344
    const/4 v1, 0x0

    .line 345
    .local v1, indicator:Landroid/widget/ImageView;
    move v0, v2

    .restart local v0       #i:I
    :goto_1
    iget v5, p0, Landroid/widget/BookmarkView;->mItemCount:I

    if-ge v0, v5, :cond_3

    .line 346
    iget-object v5, p0, Landroid/widget/BookmarkView;->mRecycledIndicators:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 347
    iget-object v5, p0, Landroid/widget/BookmarkView;->mRecycledIndicators:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #indicator:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 352
    .restart local v1       #indicator:Landroid/widget/ImageView;
    :goto_2
    if-eqz v1, :cond_2

    .line 355
    const-string v5, "BookmarkView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get indicator from recycled list:indicator = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v5, p0, Landroid/widget/BookmarkView;->mRecycledIndicators:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 366
    :goto_3
    iget v5, p0, Landroid/widget/BookmarkView;->mSpaceBetweenIndicators:I

    invoke-virtual {v1, v8, v8, v5, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 367
    iget-object v5, p0, Landroid/widget/BookmarkView;->mIndicators:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 349
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 360
    :cond_2
    const-string v5, "BookmarkView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get indicator by inflating layout resource:indicator = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v5, p0, Landroid/widget/BookmarkView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x2070001

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .end local v1           #indicator:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .restart local v1       #indicator:Landroid/widget/ImageView;
    goto :goto_3

    .line 371
    .end local v0           #i:I
    .end local v1           #indicator:Landroid/widget/ImageView;
    :cond_3
    const-string v5, "BookmarkView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshIndicators indicatorCnt = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mItemCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BookmarkView;->mItemCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mIndicators = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/BookmarkView;->mIndicators:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mCurrentSelectedPosition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BookmarkView;->mCurrentSelectedPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",realCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mRecycledIndicators.size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/BookmarkView;->mRecycledIndicators:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    if-ge v0, v3, :cond_4

    .line 380
    iget-object v5, p0, Landroid/widget/BookmarkView;->mIndicators:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 384
    :cond_4
    iget-object v5, p0, Landroid/widget/BookmarkView;->mIndicators:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    iget v6, p0, Landroid/widget/BookmarkView;->mCurrentSelectedPosition:I

    if-le v5, v6, :cond_5

    .line 385
    iget-object v5, p0, Landroid/widget/BookmarkView;->mIndicators:Landroid/widget/LinearLayout;

    iget v6, p0, Landroid/widget/BookmarkView;->mCurrentSelectedPosition:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 387
    :cond_5
    return-void
.end method


# virtual methods
.method public getCoverFlow()Landroid/widget/BounceCoverFlow;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Landroid/widget/BookmarkView;->mCurrentSelectedPosition:I

    return v0
.end method

.method public getIndicatorsLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Landroid/widget/BookmarkView;->mIndicators:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getInfoView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Landroid/widget/BookmarkView;->mInfoView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Landroid/widget/BookmarkView;->mItemCount:I

    return v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/widget/BookmarkView;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 391
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 393
    const-string v0, "BookmarkView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachedToWindow:mBookmarkAdapter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mBookmarkDataSetObserver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/BookmarkView;->mBookmarkDataSetObserver:Landroid/widget/BookmarkView$BookmarkDataSetObserver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/BookmarkView;->mBookmarkDataSetObserver:Landroid/widget/BookmarkView$BookmarkDataSetObserver;

    if-nez v0, :cond_0

    .line 397
    new-instance v0, Landroid/widget/BookmarkView$BookmarkDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/BookmarkView$BookmarkDataSetObserver;-><init>(Landroid/widget/BookmarkView;)V

    iput-object v0, p0, Landroid/widget/BookmarkView;->mBookmarkDataSetObserver:Landroid/widget/BookmarkView$BookmarkDataSetObserver;

    .line 398
    iget-object v0, p0, Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;

    iget-object v1, p0, Landroid/widget/BookmarkView;->mBookmarkDataSetObserver:Landroid/widget/BookmarkView$BookmarkDataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BookmarkAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 401
    iget v0, p0, Landroid/widget/BookmarkView;->mItemCount:I

    iput v0, p0, Landroid/widget/BookmarkView;->mOldItemCount:I

    .line 402
    iget-object v0, p0, Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;

    invoke-virtual {v0}, Landroid/widget/BookmarkAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/BookmarkView;->mItemCount:I

    .line 404
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 408
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 410
    const-string v0, "BookmarkView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachedToWindow:mBookmarkAdapter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mRecycledIndicators.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/BookmarkView;->mRecycledIndicators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Landroid/widget/BookmarkView;->mRecycledIndicators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 416
    iget-object v0, p0, Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;

    iget-object v1, p0, Landroid/widget/BookmarkView;->mBookmarkDataSetObserver:Landroid/widget/BookmarkView$BookmarkDataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BookmarkAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/BookmarkView;->mBookmarkDataSetObserver:Landroid/widget/BookmarkView$BookmarkDataSetObserver;

    .line 420
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 144
    const v0, 0x20e0001

    invoke-virtual {p0, v0}, Landroid/widget/BookmarkView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/BookmarkView;->mTitleView:Landroid/widget/TextView;

    .line 145
    const v0, 0x20e0002

    invoke-virtual {p0, v0}, Landroid/widget/BookmarkView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/BookmarkView;->mInfoView:Landroid/widget/TextView;

    .line 147
    const v0, 0x20e0003

    invoke-virtual {p0, v0}, Landroid/widget/BookmarkView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/BounceCoverFlow;

    iput-object v0, p0, Landroid/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;

    .line 148
    iget-object v0, p0, Landroid/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/BounceCoverFlow;->setGravity(I)V

    .line 150
    const v0, 0x20e0004

    invoke-virtual {p0, v0}, Landroid/widget/BookmarkView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/BookmarkView;->mIndicators:Landroid/widget/LinearLayout;

    .line 152
    iget-object v0, p0, Landroid/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;

    iget v1, p0, Landroid/widget/BookmarkView;->mSpaceBetweenItems:I

    invoke-virtual {v0, v1}, Landroid/widget/BounceCoverFlow;->setSpacing(I)V

    .line 153
    iget-object v0, p0, Landroid/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;

    iget v1, p0, Landroid/widget/BookmarkView;->mMaxZoom:F

    invoke-virtual {v0, v1}, Landroid/widget/BounceCoverFlow;->setMaxZoomOut(F)V

    .line 154
    iget-object v0, p0, Landroid/widget/BookmarkView;->mTitleView:Landroid/widget/TextView;

    iget v1, p0, Landroid/widget/BookmarkView;->mTitleColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-object v0, p0, Landroid/widget/BookmarkView;->mTitleView:Landroid/widget/TextView;

    iget v1, p0, Landroid/widget/BookmarkView;->mInfoColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-object v0, p0, Landroid/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;

    iget-object v1, p0, Landroid/widget/BookmarkView;->mSelectionChangeListener:Landroid/widget/BounceGallery$OnSelectionChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/BounceCoverFlow;->setOnSelectionChangeListener(Landroid/widget/BounceGallery$OnSelectionChangeListener;)V

    .line 158
    return-void
.end method

.method public refreshInfo(Z)V
    .locals 5
    .parameter "force"

    .prologue
    .line 300
    iget-object v2, p0, Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;

    if-eqz v2, :cond_0

    .line 302
    iget-object v2, p0, Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;

    invoke-virtual {v2}, Landroid/widget/BookmarkAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 303
    const-string v2, "BookmarkView"

    const-string v3, "refreshInfo and data invalid."

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v2, p0, Landroid/widget/BookmarkView;->mTitleView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v2, p0, Landroid/widget/BookmarkView;->mInfoView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/BookmarkView;->mCurrentSelectedPosition:I

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v2, p0, Landroid/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;

    invoke-virtual {v2}, Landroid/widget/BounceCoverFlow;->getSelectedItemPosition()I

    move-result v1

    .line 312
    .local v1, selectedPos:I
    const-string v2, "BookmarkView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshInfo: new selectedPos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", old selected pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/BookmarkView;->mCurrentSelectedPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",force = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    if-nez p1, :cond_2

    iget v2, p0, Landroid/widget/BookmarkView;->mCurrentSelectedPosition:I

    if-eq v2, v1, :cond_0

    .line 316
    :cond_2
    iget-object v2, p0, Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/BookmarkAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BookmarkItem;

    .line 317
    .local v0, item:Landroid/widget/BookmarkItem;
    iget-object v2, p0, Landroid/widget/BookmarkView;->mTitleView:Landroid/widget/TextView;

    iget-object v3, v0, Landroid/widget/BookmarkItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v2, p0, Landroid/widget/BookmarkView;->mInfoView:Landroid/widget/TextView;

    iget-object v3, v0, Landroid/widget/BookmarkItem;->mInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iput v1, p0, Landroid/widget/BookmarkView;->mCurrentSelectedPosition:I

    goto :goto_0
.end method

.method public setBookmarkAdapter(Landroid/widget/BookmarkAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 168
    const-string v0, "BookmarkView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBookmarkAdapter adapter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mBookmarkDataSetObserver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/BookmarkView;->mBookmarkDataSetObserver:Landroid/widget/BookmarkView$BookmarkDataSetObserver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;

    iget-object v1, p0, Landroid/widget/BookmarkView;->mBookmarkDataSetObserver:Landroid/widget/BookmarkView$BookmarkDataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BookmarkAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 175
    :cond_0
    iget-object v0, p0, Landroid/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;

    invoke-virtual {v0, p1}, Landroid/widget/BounceCoverFlow;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 176
    iput-object p1, p0, Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;

    .line 177
    iget-object v0, p0, Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;

    if-eqz v0, :cond_1

    .line 178
    new-instance v0, Landroid/widget/BookmarkView$BookmarkDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/BookmarkView$BookmarkDataSetObserver;-><init>(Landroid/widget/BookmarkView;)V

    iput-object v0, p0, Landroid/widget/BookmarkView;->mBookmarkDataSetObserver:Landroid/widget/BookmarkView$BookmarkDataSetObserver;

    .line 179
    iget-object v0, p0, Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;

    iget-object v1, p0, Landroid/widget/BookmarkView;->mBookmarkDataSetObserver:Landroid/widget/BookmarkView$BookmarkDataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BookmarkAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 180
    iget-object v0, p0, Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;

    iget v1, p0, Landroid/widget/BookmarkView;->mImageDispWidth:I

    iget v2, p0, Landroid/widget/BookmarkView;->mImageDispHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/BookmarkAdapter;->setImageDispSize(II)V

    .line 181
    iget-object v0, p0, Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;

    iget v1, p0, Landroid/widget/BookmarkView;->mImageReflection:F

    invoke-virtual {v0, v1}, Landroid/widget/BookmarkAdapter;->setImageReflection(F)V

    .line 183
    iget v0, p0, Landroid/widget/BookmarkView;->mItemCount:I

    iput v0, p0, Landroid/widget/BookmarkView;->mOldItemCount:I

    .line 184
    iget-object v0, p0, Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;

    invoke-virtual {v0}, Landroid/widget/BookmarkAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/BookmarkView;->mItemCount:I

    .line 186
    :cond_1
    return-void
.end method

.method public setCoverFlowMaxZoomOut(F)V
    .locals 1
    .parameter "maxZoomout"

    .prologue
    .line 203
    iget-object v0, p0, Landroid/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;

    invoke-virtual {v0, p1}, Landroid/widget/BounceCoverFlow;->setMaxZoomOut(F)V

    .line 204
    return-void
.end method

.method public setCoverFlowSpacing(I)V
    .locals 1
    .parameter "spacing"

    .prologue
    .line 194
    iget-object v0, p0, Landroid/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;

    invoke-virtual {v0, p1}, Landroid/widget/BounceCoverFlow;->setSpacing(I)V

    .line 195
    return-void
.end method

.method public setGalleryOverScrollDistance(I)V
    .locals 1
    .parameter "distance"

    .prologue
    .line 237
    iget-object v0, p0, Landroid/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;

    invoke-virtual {v0, p1}, Landroid/widget/BounceCoverFlow;->setOverScrollDistance(I)V

    .line 238
    return-void
.end method

.method public setImageDispSize(II)V
    .locals 1
    .parameter "dispWidth"
    .parameter "dispHeight"

    .prologue
    .line 213
    iput p1, p0, Landroid/widget/BookmarkView;->mImageDispWidth:I

    .line 214
    iput p2, p0, Landroid/widget/BookmarkView;->mImageDispHeight:I

    .line 215
    iget-object v0, p0, Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/BookmarkAdapter;->setImageDispSize(II)V

    .line 218
    :cond_0
    return-void
.end method

.method public setImageReflection(F)V
    .locals 1
    .parameter "reflection"

    .prologue
    .line 226
    iget-object v0, p0, Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BookmarkAdapter;->setImageReflection(F)V

    .line 229
    :cond_0
    return-void
.end method
