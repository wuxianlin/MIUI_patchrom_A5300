.class public Lcom/mediatek/banyan/widget/MTKImageView;
.super Landroid/widget/ImageView;
.source "MTKImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;,
        Lcom/mediatek/banyan/widget/MTKImageView$GifThread;,
        Lcom/mediatek/banyan/widget/MTKImageView$Bound;
    }
.end annotation


# static fields
.field private static final MAX_HEIGHT:I = 0x1e0

.field private static final MAX_WIDTH:I = 0x280

.field private static final MSG_RUN_OBJECT:I = 0x401

.field private static final STORE_PIC_TAG:Ljava/lang/String; = "storePic"


# instance fields
.field volatile mAbort:Z

.field private mAnimationThread:Ljava/lang/Thread;

.field private mContext:Landroid/content/Context;

.field private mCurrGifFrame:I

.field protected mGifStream:Ljava/io/InputStream;

.field protected mHandler:Landroid/os/Handler;

.field protected mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

.field private mResGif:Z

.field protected mResourceId:I

.field private mSetFromGif:Z

.field protected mUri:Landroid/net/Uri;

.field private mUriGif:Z

.field private self:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 255
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mSetFromGif:Z

    .line 257
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUri:Landroid/net/Uri;

    .line 258
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResGif:Z

    .line 259
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUriGif:Z

    .line 260
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;

    .line 262
    iput v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I

    .line 265
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    .line 267
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    .line 268
    new-instance v0, Lcom/mediatek/banyan/widget/MTKImageView$2;

    invoke-direct {v0, p0}, Lcom/mediatek/banyan/widget/MTKImageView$2;-><init>(Lcom/mediatek/banyan/widget/MTKImageView;)V

    iput-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mHandler:Landroid/os/Handler;

    .line 89
    iput-object p1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->initForGif()V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 255
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mSetFromGif:Z

    .line 257
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUri:Landroid/net/Uri;

    .line 258
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResGif:Z

    .line 259
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUriGif:Z

    .line 260
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;

    .line 262
    iput v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I

    .line 265
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    .line 267
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    .line 268
    new-instance v0, Lcom/mediatek/banyan/widget/MTKImageView$2;

    invoke-direct {v0, p0}, Lcom/mediatek/banyan/widget/MTKImageView$2;-><init>(Lcom/mediatek/banyan/widget/MTKImageView;)V

    iput-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mHandler:Landroid/os/Handler;

    .line 102
    iput-object p1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->initForGif()V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 255
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mSetFromGif:Z

    .line 257
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUri:Landroid/net/Uri;

    .line 258
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResGif:Z

    .line 259
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUriGif:Z

    .line 260
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;

    .line 262
    iput v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I

    .line 265
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    .line 267
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    .line 268
    new-instance v0, Lcom/mediatek/banyan/widget/MTKImageView$2;

    invoke-direct {v0, p0}, Lcom/mediatek/banyan/widget/MTKImageView$2;-><init>(Lcom/mediatek/banyan/widget/MTKImageView;)V

    iput-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mHandler:Landroid/os/Handler;

    .line 116
    iput-object p1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->initForGif()V

    .line 120
    return-void
.end method

.method private abortAnimationThread()V
    .locals 3

    .prologue
    .line 635
    const-string v1, "MTKImageView"

    const-string v2, "abortAnimationThread()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAnimationThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 637
    const-string v1, "MTKImageView"

    const-string v2, "abortAnimationThread:thread null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :goto_0
    return-void

    .line 641
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    .line 644
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAnimationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 647
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAnimationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAnimationThread:Ljava/lang/Thread;

    .line 654
    const-string v1, "MTKImageView"

    const-string v2, "abortAnimationThread:remove messages"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x401

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v1, "MTKImageView"

    const-string v2, "abortAnimationThread:join interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/mediatek/banyan/widget/MTKImageView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/banyan/widget/MTKImageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->gifAnimation()V

    return-void
.end method

.method static synthetic access$502(Lcom/mediatek/banyan/widget/MTKImageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mSetFromGif:Z

    return p1
.end method

.method private closeGifStream()V
    .locals 4

    .prologue
    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 291
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Ljava/io/IOException;
    const-string v1, "MTKImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close GIF InputStream failed, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private decodeBoundsInfo(Landroid/net/Uri;)Lcom/mediatek/banyan/widget/MTKImageView$Bound;
    .locals 7
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 418
    const/4 v2, 0x0

    .line 419
    .local v2, input:Ljava/io/InputStream;
    new-instance v0, Lcom/mediatek/banyan/widget/MTKImageView$Bound;

    invoke-direct {v0, p0, v4}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;-><init>(Lcom/mediatek/banyan/widget/MTKImageView;Lcom/mediatek/banyan/widget/MTKImageView$1;)V

    .line 421
    .local v0, bound:Lcom/mediatek/banyan/widget/MTKImageView$Bound;
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 422
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 423
    .local v3, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 424
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 426
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #setter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->width:I
    invoke-static {v0, v4}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$202(Lcom/mediatek/banyan/widget/MTKImageView$Bound;I)I

    .line 427
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #setter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->height:I
    invoke-static {v0, v4}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$302(Lcom/mediatek/banyan/widget/MTKImageView$Bound;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 432
    if-eqz v2, :cond_0

    .line 434
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 442
    .end local v3           #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v0

    .line 435
    .restart local v3       #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 437
    .local v1, e:Ljava/io/IOException;
    const-string v4, "MTKImageView"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 428
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v1

    .line 430
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v4, "MTKImageView"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 432
    if-eqz v2, :cond_0

    .line 434
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 435
    :catch_2
    move-exception v1

    .line 437
    .local v1, e:Ljava/io/IOException;
    const-string v4, "MTKImageView"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 432
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_1

    .line 434
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 438
    :cond_1
    :goto_1
    throw v4

    .line 435
    :catch_3
    move-exception v1

    .line 437
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "MTKImageView"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private decodeDegreeInfo(Landroid/net/Uri;)I
    .locals 8
    .parameter "uri"

    .prologue
    .line 446
    const/4 v3, 0x0

    .line 447
    .local v3, inputForRotate:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 448
    .local v4, orientation:I
    const/4 v0, 0x0

    .line 450
    .local v0, degree:I
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 451
    if-eqz v3, :cond_0

    .line 452
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 453
    .local v2, exif:Landroid/media/ExifInterface;
    if-eqz v2, :cond_0

    .line 454
    const-string v5, "Orientation"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 455
    invoke-direct {p0, v4}, Lcom/mediatek/banyan/widget/MTKImageView;->getExifRotation(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 463
    .end local v2           #exif:Landroid/media/ExifInterface;
    :cond_0
    if-eqz v3, :cond_1

    .line 465
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 471
    :cond_1
    :goto_0
    return v0

    .line 466
    :catch_0
    move-exception v1

    .line 467
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "MTKImageView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 458
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 459
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v5, "MTKImageView"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 463
    if-eqz v3, :cond_1

    .line 465
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 466
    :catch_2
    move-exception v1

    .line 467
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "MTKImageView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 460
    .end local v1           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 461
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    const-string v5, "MTKImageView"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 463
    if-eqz v3, :cond_1

    .line 465
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 466
    :catch_4
    move-exception v1

    .line 467
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "MTKImageView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 463
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_2

    .line 465
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 468
    :cond_2
    :goto_1
    throw v5

    .line 466
    :catch_5
    move-exception v1

    .line 467
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v6, "MTKImageView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getExifRotation(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, degrees:I
    packed-switch p1, :pswitch_data_0

    .line 392
    :goto_0
    :pswitch_0
    return v0

    .line 380
    :pswitch_1
    const/4 v0, 0x0

    .line 381
    goto :goto_0

    .line 383
    :pswitch_2
    const/16 v0, 0x5a

    .line 384
    goto :goto_0

    .line 386
    :pswitch_3
    const/16 v0, 0xb4

    .line 387
    goto :goto_0

    .line 389
    :pswitch_4
    const/16 v0, 0x10e

    goto :goto_0

    .line 378
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private gifAnimation()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 667
    :try_start_0
    const-string v6, "MTKImageView"

    const-string v7, "gifAnimation:call openGifStream()"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->openGifStream()V

    .line 669
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;

    if-nez v6, :cond_1

    .line 670
    const-string v6, "MTKImageView"

    const-string v7, "gifAnimation:got null mGifStream"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    if-eqz v6, :cond_0

    .line 752
    iput-object v10, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    .line 755
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->closeGifStream()V

    .line 757
    :goto_0
    return-void

    .line 673
    :cond_1
    :try_start_1
    iget-boolean v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    if-eqz v6, :cond_3

    .line 674
    const-string v6, "MTKImageView"

    const-string v7, "gifAnimation:after open stream:thread aborted"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 750
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    if-eqz v6, :cond_2

    .line 752
    iput-object v10, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    .line 755
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->closeGifStream()V

    goto :goto_0

    .line 679
    :cond_3
    const/4 v6, 0x0

    :try_start_2
    iput-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 681
    :try_start_3
    const-class v6, Lcom/mediatek/common/gifdecoder/IGifDecoder;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/common/gifdecoder/IGifDecoder;

    iput-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 686
    :goto_1
    :try_start_4
    iget-boolean v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    if-eqz v6, :cond_6

    .line 687
    const-string v6, "MTKImageView"

    const-string v7, "gifAnimation:after new GifDecoder:thread aborted"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 750
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    if-eqz v6, :cond_4

    .line 752
    iput-object v10, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    .line 755
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->closeGifStream()V

    goto :goto_0

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 750
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    if-eqz v7, :cond_5

    .line 752
    iput-object v10, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    .line 755
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->closeGifStream()V

    throw v6

    .line 691
    :cond_6
    :try_start_6
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    if-nez v6, :cond_8

    .line 692
    const-string v6, "MTKImageView"

    const-string v7, "Decode GIF resource failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->showFirstGifFrame()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 750
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    if-eqz v6, :cond_7

    .line 752
    iput-object v10, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    .line 755
    :cond_7
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->closeGifStream()V

    goto :goto_0

    .line 698
    :cond_8
    :try_start_7
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    invoke-interface {v6}, Lcom/mediatek/common/gifdecoder/IGifDecoder;->getTotalFrameCount()I

    move-result v6

    if-nez v6, :cond_a

    .line 699
    const-string v6, "MTKImageView"

    const-string v7, "gifAnimation:decode gif stream fails"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    .line 704
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->showFirstGifFrame()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 750
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    if-eqz v6, :cond_9

    .line 752
    iput-object v10, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    .line 755
    :cond_9
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->closeGifStream()V

    goto/16 :goto_0

    .line 708
    :cond_a
    const-wide/16 v2, 0x0

    .line 709
    .local v2, frameDuration:J
    :try_start_8
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    invoke-interface {v6}, Lcom/mediatek/common/gifdecoder/IGifDecoder;->getTotalFrameCount()I

    move-result v5

    .line 710
    .local v5, totalFrameCount:I
    const/4 v6, 0x0

    iput v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I

    .line 714
    :goto_2
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    iget v7, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I

    invoke-interface {v6, v7}, Lcom/mediatek/common/gifdecoder/IGifDecoder;->getFrameBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 716
    .local v4, gifFrame:Landroid/graphics/Bitmap;
    iget-boolean v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    if-eqz v6, :cond_c

    .line 717
    const-string v6, "MTKImageView"

    const-string v7, "gifAnimation:after decode:thread aborted"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 750
    :goto_3
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    if-eqz v6, :cond_b

    .line 752
    iput-object v10, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    .line 755
    :cond_b
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->closeGifStream()V

    goto/16 :goto_0

    .line 722
    :cond_c
    :try_start_9
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x401

    new-instance v9, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;

    invoke-direct {v9, p0, v4}, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;-><init>(Lcom/mediatek/banyan/widget/MTKImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 726
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    iget v7, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I

    invoke-interface {v6, v7}, Lcom/mediatek/common/gifdecoder/IGifDecoder;->getFrameDuration(I)I

    move-result v6

    int-to-long v2, v6

    .line 727
    const-string v6, "MTKImageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sleep for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms for frame "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " //this="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/banyan/widget/MTKImageView;->self:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-boolean v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    if-eqz v6, :cond_d

    .line 731
    const-string v6, "MTKImageView"

    const-string v7, "gifAnimation:animating:thread aborted"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 736
    :cond_d
    :try_start_a
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1

    .line 742
    :goto_4
    if-ne v11, v5, :cond_e

    .line 743
    :try_start_b
    const-string v6, "MTKImageView"

    const-string v7, "gifAnim:single frame, cancel"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 737
    :catch_1
    move-exception v1

    .line 738
    .local v1, ex:Ljava/lang/InterruptedException;
    const-string v6, "MTKImageView"

    const-string v7, "gifAnimation:sleeping interrupted"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 746
    .end local v1           #ex:Ljava/lang/InterruptedException;
    :cond_e
    iget v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I

    add-int/lit8 v6, v6, 0x1

    rem-int/2addr v6, v5

    iput v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2
.end method

.method private openGifStream()V
    .locals 4

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->closeGifStream()V

    .line 301
    iget-boolean v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUriGif:Z

    iget-boolean v2, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResGif:Z

    if-ne v1, v2, :cond_0

    .line 302
    const-string v1, "MTKImageView"

    const-string v2, "openGifStream:not correct status!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResGif:Z

    if-eqz v1, :cond_1

    .line 308
    :try_start_0
    const-string v1, "MTKImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openGifStream:open new gif strem from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResourceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v1, "MTKImageView"

    const-string v2, "Open GIF resource as InputStream failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 315
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_1
    :try_start_1
    const-string v1, "MTKImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openGifStream:open new gif strem from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 317
    :catch_1
    move-exception v0

    .line 318
    .local v0, e:Ljava/io/IOException;
    const-string v1, "MTKImageView"

    const-string v2, "Open GIF URI as InputStream failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resizeAndRotateImage(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "uri"

    .prologue
    .line 477
    const/4 v4, 0x0

    .line 479
    .local v4, finalImage:Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/mediatek/banyan/widget/MTKImageView;->decodeBoundsInfo(Landroid/net/Uri;)Lcom/mediatek/banyan/widget/MTKImageView$Bound;

    move-result-object v0

    .line 480
    .local v0, bound:Lcom/mediatek/banyan/widget/MTKImageView$Bound;
    #getter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->width:I
    invoke-static {v0}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$200(Lcom/mediatek/banyan/widget/MTKImageView$Bound;)I

    move-result v6

    .line 481
    .local v6, imageWidth:I
    #getter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->height:I
    invoke-static {v0}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$300(Lcom/mediatek/banyan/widget/MTKImageView$Bound;)I

    move-result v5

    .line 483
    .local v5, imageHeight:I
    const/4 v9, 0x1

    .line 484
    .local v9, scaleFactor:I
    invoke-direct {p0, p1}, Lcom/mediatek/banyan/widget/MTKImageView;->decodeDegreeInfo(Landroid/net/Uri;)I

    move-result v1

    .line 486
    .local v1, degree:I
    const/16 v10, 0x5a

    if-eq v1, v10, :cond_0

    const/16 v10, 0x10e

    if-ne v1, v10, :cond_1

    .line 487
    :cond_0
    #getter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->height:I
    invoke-static {v0}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$300(Lcom/mediatek/banyan/widget/MTKImageView$Bound;)I

    move-result v6

    .line 488
    #getter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->width:I
    invoke-static {v0}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$200(Lcom/mediatek/banyan/widget/MTKImageView$Bound;)I

    move-result v5

    .line 491
    :cond_1
    const/16 v10, 0x280

    if-gt v6, v10, :cond_2

    const/16 v10, 0x1e0

    if-le v5, v10, :cond_4

    .line 492
    :cond_2
    const-string v10, "MTKImageView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Image need resize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_3
    mul-int/lit8 v9, v9, 0x2

    .line 495
    div-int v10, v6, v9

    const/16 v11, 0x280

    if-gt v10, v11, :cond_3

    div-int v10, v5, v9

    const/16 v11, 0x1e0

    if-gt v10, v11, :cond_3

    .line 497
    :cond_4
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 498
    .local v8, options:Landroid/graphics/BitmapFactory$Options;
    iput v9, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 499
    const/4 v7, 0x0

    .line 501
    .local v7, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v10, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v7

    .line 502
    if-eqz v7, :cond_7

    .line 504
    const/4 v10, 0x0

    :try_start_1
    invoke-static {v7, v10, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    .line 509
    if-nez v4, :cond_6

    .line 511
    const/4 v10, 0x0

    .line 524
    if-eqz v7, :cond_5

    .line 526
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 533
    :cond_5
    :goto_0
    return-object v10

    .line 505
    :catch_0
    move-exception v3

    .line 507
    .local v3, ex:Ljava/lang/OutOfMemoryError;
    const/4 v10, 0x0

    .line 524
    if-eqz v7, :cond_5

    .line 526
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 527
    :catch_1
    move-exception v2

    .line 528
    .local v2, e:Ljava/lang/Exception;
    const-string v11, "MTKImageView"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 527
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #ex:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v2

    .line 528
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v11, "MTKImageView"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 514
    .end local v2           #e:Ljava/lang/Exception;
    :cond_6
    :try_start_4
    #getter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->width:I
    invoke-static {v0}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$200(Lcom/mediatek/banyan/widget/MTKImageView$Bound;)I

    move-result v10

    div-int/2addr v10, v9

    if-lez v10, :cond_9

    #getter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->width:I
    invoke-static {v0}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$200(Lcom/mediatek/banyan/widget/MTKImageView$Bound;)I

    move-result v10

    div-int/2addr v10, v9

    move v11, v10

    :goto_1
    #getter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->height:I
    invoke-static {v0}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$300(Lcom/mediatek/banyan/widget/MTKImageView$Bound;)I

    move-result v10

    div-int/2addr v10, v9

    if-lez v10, :cond_a

    #getter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->height:I
    invoke-static {v0}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$300(Lcom/mediatek/banyan/widget/MTKImageView$Bound;)I

    move-result v10

    div-int/2addr v10, v9

    :goto_2
    const/4 v12, 0x0

    invoke-static {v4, v11, v10, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v4

    .line 519
    :goto_3
    :try_start_5
    invoke-static {v4, v1}, Lcom/mediatek/banyan/widget/MTKImageView;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v4

    .line 524
    :cond_7
    if-eqz v7, :cond_8

    .line 526
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_8
    :goto_4
    move-object v10, v4

    .line 533
    goto :goto_0

    .line 514
    :cond_9
    const/4 v10, 0x1

    move v11, v10

    goto :goto_1

    :cond_a
    const/4 v10, 0x1

    goto :goto_2

    .line 527
    :catch_3
    move-exception v2

    .line 528
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v10, "MTKImageView"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 521
    .end local v2           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 522
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_7
    const-string v10, "MTKImageView"

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 524
    if-eqz v7, :cond_8

    .line 526
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    .line 527
    :catch_5
    move-exception v2

    .line 528
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "MTKImageView"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 524
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    if-eqz v7, :cond_b

    .line 526
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 529
    :cond_b
    :goto_5
    throw v10

    .line 527
    :catch_6
    move-exception v2

    .line 528
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v11, "MTKImageView"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 516
    .end local v2           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v10

    goto :goto_3
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "b"
    .parameter "degrees"

    .prologue
    const/high16 v3, 0x4000

    .line 398
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 399
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 400
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 403
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 404
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 406
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 407
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    move-object p0, v7

    .line 414
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 410
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showFirstGifFrame()V
    .locals 7

    .prologue
    .line 784
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->openGifStream()V

    .line 785
    iget-object v3, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;

    if-nez v3, :cond_0

    .line 807
    :goto_0
    return-void

    .line 786
    :cond_0
    const/4 v1, 0x0

    .line 787
    .local v1, firstFrame:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 788
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 789
    const/4 v3, 0x1

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 791
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 796
    iget-boolean v3, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    if-eqz v3, :cond_1

    .line 797
    const-string v3, "MTKImageView"

    const-string v4, "showFirstGifFrame:thread aborted"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    const-string v3, "MTKImageView"

    const-string v4, "showFirstGifFrame:OOM when decoding"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 800
    .end local v0           #ex:Ljava/lang/OutOfMemoryError;
    :cond_1
    if-eqz v1, :cond_2

    .line 802
    iget-object v3, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x401

    new-instance v6, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;

    invoke-direct {v6, p0, v1}, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;-><init>(Lcom/mediatek/banyan/widget/MTKImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 805
    :cond_2
    const-string v3, "MTKImageView"

    const-string v4, "showFirstGifFrame:failed to decode first frame!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startAnimationThread()V
    .locals 2

    .prologue
    .line 623
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAnimationThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 632
    :goto_0
    return-void

    .line 627
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    .line 628
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/banyan/widget/MTKImageView$GifThread;

    invoke-direct {v1, p0}, Lcom/mediatek/banyan/widget/MTKImageView$GifThread;-><init>(Lcom/mediatek/banyan/widget/MTKImageView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 629
    .local v0, t:Ljava/lang/Thread;
    const-string v1, "gif-animation"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 630
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 631
    iput-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAnimationThread:Ljava/lang/Thread;

    goto :goto_0
.end method


# virtual methods
.method protected initForGif()V
    .locals 0

    .prologue
    .line 283
    iput-object p0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->self:Landroid/widget/ImageView;

    .line 284
    return-void
.end method

.method public setAnimationRunning(Z)V
    .locals 9
    .parameter "flag"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 174
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_4

    .line 176
    if-eqz v2, :cond_1

    instance-of v7, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v7, :cond_1

    move-object v5, v2

    .line 178
    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    .line 179
    .local v5, tempAD:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v7

    if-nez v7, :cond_0

    .line 180
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 249
    .end local v5           #tempAD:Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const/4 v3, 0x0

    .line 185
    .local v3, iv:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 186
    .local v4, parent:Landroid/view/ViewParent;
    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    move-object v6, v4

    .line 188
    check-cast v6, Landroid/view/ViewGroup;

    .line 189
    .local v6, vg:Landroid/view/ViewGroup;
    const-string v7, "storePic"

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .end local v3           #iv:Landroid/widget/ImageView;
    check-cast v3, Landroid/widget/ImageView;

    .line 197
    .restart local v3       #iv:Landroid/widget/ImageView;
    if-eqz v3, :cond_3

    instance-of v7, v3, Landroid/widget/ImageView;

    if-eqz v7, :cond_3

    .line 199
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 200
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v7, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v7, :cond_0

    move-object v0, v1

    .line 202
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 203
    .local v0, ad:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0, v0}, Lcom/mediatek/banyan/widget/MTKImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 193
    .end local v0           #ad:Landroid/graphics/drawable/AnimationDrawable;
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v6           #vg:Landroid/view/ViewGroup;
    :cond_2
    const-string v7, "test"

    const-string v8, "ViewParent is not a ViewGroup!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    .restart local v6       #vg:Landroid/view/ViewGroup;
    :cond_3
    const-string v7, "com.mediatek.sns"

    const-string v8, "Iv is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v4           #parent:Landroid/view/ViewParent;
    .end local v6           #vg:Landroid/view/ViewGroup;
    :cond_4
    if-eqz v2, :cond_5

    instance-of v7, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v7, :cond_5

    move-object v5, v2

    .line 218
    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    .line 219
    .restart local v5       #tempAD:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 220
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 222
    .end local v5           #tempAD:Landroid/graphics/drawable/AnimationDrawable;
    :cond_5
    const/4 v3, 0x0

    .line 223
    .restart local v3       #iv:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 224
    .restart local v4       #parent:Landroid/view/ViewParent;
    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_6

    move-object v6, v4

    .line 226
    check-cast v6, Landroid/view/ViewGroup;

    .line 227
    .restart local v6       #vg:Landroid/view/ViewGroup;
    const-string v7, "storePic"

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .end local v3           #iv:Landroid/widget/ImageView;
    check-cast v3, Landroid/widget/ImageView;

    .line 235
    .restart local v3       #iv:Landroid/widget/ImageView;
    if-eqz v3, :cond_7

    instance-of v7, v3, Landroid/widget/ImageView;

    if-eqz v7, :cond_7

    .line 237
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 238
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {p0, v1}, Lcom/mediatek/banyan/widget/MTKImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 231
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v6           #vg:Landroid/view/ViewGroup;
    :cond_6
    const-string v7, "test"

    const-string v8, "ViewParent is not a ViewGroup!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    .restart local v6       #vg:Landroid/view/ViewGroup;
    :cond_7
    const-string v7, "com.mediatek.sns"

    const-string v8, "Iv is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 165
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bm"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 608
    iget-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mSetFromGif:Z

    if-nez v0, :cond_0

    .line 609
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->abortAnimationThread()V

    .line 611
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 612
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mSetFromGif:Z

    if-nez v0, :cond_0

    .line 617
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->abortAnimationThread()V

    .line 619
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 620
    return-void
.end method

.method public setImageResource(I)V
    .locals 9
    .parameter "resId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 331
    const-string v4, "MTKImageView"

    const-string v5, "setImageResource:abort previous gif animation if any"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->abortAnimationThread()V

    .line 334
    const/4 v2, 0x0

    .line 335
    .local v2, imageStream:Ljava/io/InputStream;
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 336
    .local v0, buffer:[B
    const/4 v3, 0x0

    .line 338
    .local v3, isGifImage:Z
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 339
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v6, v4, :cond_0

    .line 340
    const-string v4, "MTKImageView"

    const-string v5, "can\'t read data from resource inputstream"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v3, 0x0

    .line 348
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    const/4 v2, 0x0

    .line 354
    :goto_1
    if-nez v3, :cond_2

    .line 355
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 366
    :goto_2
    return-void

    .line 342
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    aget-byte v4, v0, v4

    const/16 v5, 0x47

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    const/16 v5, 0x49

    if-ne v4, v5, :cond_1

    const/4 v4, 0x2

    aget-byte v4, v0, v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v5, 0x46

    if-ne v4, v5, :cond_1

    .line 343
    const/4 v3, 0x1

    goto :goto_0

    .line 345
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v1

    .line 351
    .local v1, e:Ljava/io/IOException;
    const-string v4, "MTKImageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 359
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    iput p1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResourceId:I

    .line 362
    iput-boolean v7, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUriGif:Z

    .line 363
    iput-boolean v8, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResGif:Z

    .line 365
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->startAnimationThread()V

    goto :goto_2
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 11
    .parameter "uri"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 544
    const-string v5, "MTKImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setImageURI(uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " //this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->abortAnimationThread()V

    .line 547
    if-nez p1, :cond_0

    .line 548
    const-string v5, "MTKImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setImageURI:follow ImageView\'s routin for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 604
    :goto_0
    return-void

    .line 553
    :cond_0
    const/4 v3, 0x0

    .line 554
    .local v3, imageStream:Ljava/io/InputStream;
    const/4 v5, 0x4

    new-array v0, v5, [B

    .line 555
    .local v0, buffer:[B
    const/4 v4, 0x0

    .line 556
    .local v4, isGifImage:Z
    const/4 v2, 0x0

    .line 558
    .local v2, finalImage:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.resource"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 562
    :cond_1
    iget-object v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 563
    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v10, v5, :cond_2

    .line 564
    const-string v5, "MTKImageView"

    const-string v6, "can\'t read data from uri inputstream"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/4 v4, 0x0

    .line 573
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    const/4 v3, 0x0

    .line 583
    :goto_2
    const-string v5, "MTKImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setImageURI:isGifImage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " //this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    if-nez v4, :cond_6

    .line 586
    const-string v5, "MTKImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setImageURI:follow ImageView\'s routin for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    if-eqz v2, :cond_5

    .line 588
    invoke-super {p0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 566
    :cond_2
    const/4 v5, 0x0

    :try_start_1
    aget-byte v5, v0, v5

    const/16 v6, 0x47

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    aget-byte v5, v0, v5

    const/16 v6, 0x49

    if-ne v5, v6, :cond_3

    const/4 v5, 0x2

    aget-byte v5, v0, v5

    const/16 v6, 0x46

    if-ne v5, v6, :cond_3

    .line 567
    const/4 v4, 0x1

    goto :goto_1

    .line 569
    :cond_3
    const/4 v4, 0x0

    .line 570
    invoke-direct {p0, p1}, Lcom/mediatek/banyan/widget/MTKImageView;->resizeAndRotateImage(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 576
    :cond_4
    const-string v5, "MTKImageView"

    const-string v6, "Uncoped uri scheme,call ImageView.setImageURI()"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 577
    const/4 v4, 0x0

    goto :goto_2

    .line 579
    :catch_0
    move-exception v1

    .line 580
    .local v1, e:Ljava/io/IOException;
    const-string v5, "MTKImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 590
    .end local v1           #e:Ljava/io/IOException;
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 596
    :cond_6
    const-string v5, "MTKImageView"

    const-string v6, "setImageUri:synchroized lock, start gif animation"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iput-object p1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUri:Landroid/net/Uri;

    .line 600
    iput-boolean v9, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUriGif:Z

    .line 601
    iput-boolean v8, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResGif:Z

    .line 603
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->startAnimationThread()V

    goto/16 :goto_0
.end method

.method public setOnClickIntent(Ljava/lang/String;)V
    .locals 1
    .parameter "action"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lcom/mediatek/banyan/widget/MTKImageView$1;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/banyan/widget/MTKImageView$1;-><init>(Lcom/mediatek/banyan/widget/MTKImageView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/banyan/widget/MTKImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    return-void
.end method
