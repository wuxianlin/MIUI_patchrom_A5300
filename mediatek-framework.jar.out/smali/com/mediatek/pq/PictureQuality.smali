.class public Lcom/mediatek/pq/PictureQuality;
.super Ljava/lang/Object;
.source "PictureQuality.java"


# static fields
.field public static final MTK_PQ_MODE_CAMERA:I = 0x1

.field public static final MTK_PQ_MODE_MASK:I = 0x1

.field public static final MTK_PQ_MODE_NORMAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "jni_pq"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native setCameraPreviewMode()V
.end method

.method private static native setGalleryNormalMode()V
.end method

.method public static setMode(I)Ljava/lang/String;
    .locals 2
    .parameter "mode"

    .prologue
    .line 70
    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 72
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->setCameraPreviewMode()V

    .line 79
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_0
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->setGalleryNormalMode()V

    goto :goto_0
.end method
