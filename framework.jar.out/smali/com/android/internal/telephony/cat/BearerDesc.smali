.class public Lcom/android/internal/telephony/cat/BearerDesc;
.super Ljava/lang/Object;
.source "BearerDesc.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/BearerDesc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bearerService:I

.field public bearerType:I

.field public connectionElement:I

.field public dataCompression:I

.field public dataRate:I

.field public delay:I

.field public headerCompression:I

.field public mean:I

.field public pdpType:I

.field public peak:I

.field public precedence:I

.field public reliability:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/android/internal/telephony/cat/BearerDesc$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/BearerDesc$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/BearerDesc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    .line 60
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->precedence:I

    .line 61
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->delay:I

    .line 62
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->reliability:I

    .line 63
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->peak:I

    .line 64
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->mean:I

    .line 65
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->pdpType:I

    .line 67
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->dataCompression:I

    .line 68
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->headerCompression:I

    .line 70
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->dataRate:I

    .line 71
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->bearerService:I

    .line 72
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->connectionElement:I

    .line 75
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    .line 60
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->precedence:I

    .line 61
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->delay:I

    .line 62
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->reliability:I

    .line 63
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->peak:I

    .line 64
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->mean:I

    .line 65
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->pdpType:I

    .line 67
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->dataCompression:I

    .line 68
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->headerCompression:I

    .line 70
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->dataRate:I

    .line 71
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->bearerService:I

    .line 72
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->connectionElement:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->precedence:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->delay:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->reliability:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->peak:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->mean:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->pdpType:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->dataCompression:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->headerCompression:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->dataRate:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->bearerService:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->connectionElement:I

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/BearerDesc$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BearerDesc;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->precedence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->delay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->reliability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->peak:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->mean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->pdpType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->dataCompression:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->headerCompression:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->dataRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->bearerService:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->connectionElement:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    return-void
.end method
