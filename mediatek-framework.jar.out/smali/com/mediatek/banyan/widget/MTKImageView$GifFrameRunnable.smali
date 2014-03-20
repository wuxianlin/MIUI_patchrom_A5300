.class Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;
.super Ljava/lang/Object;
.source "MTKImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/banyan/widget/MTKImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GifFrameRunnable"
.end annotation


# instance fields
.field mFrame:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/mediatek/banyan/widget/MTKImageView;


# direct methods
.method constructor <init>(Lcom/mediatek/banyan/widget/MTKImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter "b"

    .prologue
    .line 761
    iput-object p1, p0, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;->this$0:Lcom/mediatek/banyan/widget/MTKImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    iput-object p2, p0, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    .line 763
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 766
    iget-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;->this$0:Lcom/mediatek/banyan/widget/MTKImageView;

    iget-boolean v0, v0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    if-eqz v0, :cond_1

    .line 767
    const-string v0, "MTKImageView"

    const-string v1, "GifFrameRunnable:run:gif aborted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 769
    const-string v0, "MTKImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GifFrameRunnable:run:recycle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 771
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    iget-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;->this$0:Lcom/mediatek/banyan/widget/MTKImageView;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/banyan/widget/MTKImageView;->mSetFromGif:Z
    invoke-static {v0, v1}, Lcom/mediatek/banyan/widget/MTKImageView;->access$502(Lcom/mediatek/banyan/widget/MTKImageView;Z)Z

    .line 776
    const-string v0, "MTKImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GifFrameRunnable:run:call setImageBitmap(mFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;->this$0:Lcom/mediatek/banyan/widget/MTKImageView;

    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/mediatek/banyan/widget/MTKImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 779
    iget-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;->this$0:Lcom/mediatek/banyan/widget/MTKImageView;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/banyan/widget/MTKImageView;->mSetFromGif:Z
    invoke-static {v0, v1}, Lcom/mediatek/banyan/widget/MTKImageView;->access$502(Lcom/mediatek/banyan/widget/MTKImageView;Z)Z

    goto :goto_0
.end method
