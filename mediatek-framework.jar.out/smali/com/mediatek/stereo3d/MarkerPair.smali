.class Lcom/mediatek/stereo3d/MarkerPair;
.super Ljava/lang/Object;
.source "JpsParser.java"


# instance fields
.field private mMarker:I

.field private mOffset:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 446
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput v0, p0, Lcom/mediatek/stereo3d/MarkerPair;->mMarker:I

    .line 448
    iput v0, p0, Lcom/mediatek/stereo3d/MarkerPair;->mOffset:I

    .line 449
    return-void
.end method


# virtual methods
.method protected getMarker()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Lcom/mediatek/stereo3d/MarkerPair;->mMarker:I

    return v0
.end method

.method protected getOffset()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lcom/mediatek/stereo3d/MarkerPair;->mOffset:I

    return v0
.end method

.method protected setMarker(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 458
    iput p1, p0, Lcom/mediatek/stereo3d/MarkerPair;->mMarker:I

    .line 459
    return-void
.end method

.method protected setOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 468
    iput p1, p0, Lcom/mediatek/stereo3d/MarkerPair;->mOffset:I

    .line 469
    return-void
.end method
