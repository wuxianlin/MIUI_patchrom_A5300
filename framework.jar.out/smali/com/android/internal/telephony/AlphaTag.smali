.class public Lcom/android/internal/telephony/AlphaTag;
.super Ljava/lang/Object;
.source "AlphaTag.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/AlphaTag;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "AlphaTag"


# instance fields
.field mAlphaTag:Ljava/lang/String;

.field mPbrIndex:I

.field mRecordNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/android/internal/telephony/AlphaTag$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/AlphaTag$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/AlphaTag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "pbr"

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/AlphaTag;->mAlphaTag:Ljava/lang/String;

    .line 91
    iput p1, p0, Lcom/android/internal/telephony/AlphaTag;->mRecordNumber:I

    .line 92
    iput-object p2, p0, Lcom/android/internal/telephony/AlphaTag;->mAlphaTag:Ljava/lang/String;

    .line 93
    iput p3, p0, Lcom/android/internal/telephony/AlphaTag;->mPbrIndex:I

    .line 94
    return-void
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 131
    if-ne p0, p1, :cond_0

    .line 132
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    .line 134
    :cond_0
    if-nez p0, :cond_1

    .line 135
    const-string p0, ""

    .line 137
    :cond_1
    if-nez p1, :cond_2

    .line 138
    const-string p1, ""

    .line 140
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/AlphaTag;->mAlphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getPbrIndex()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/android/internal/telephony/AlphaTag;->mPbrIndex:I

    return v0
.end method

.method public getRecordIndex()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/internal/telephony/AlphaTag;->mRecordNumber:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/AlphaTag;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isEqual(Lcom/android/internal/telephony/AlphaTag;)Z
    .locals 2
    .parameter "uGas"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/AlphaTag;->mAlphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AlphaTag;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/AlphaTag;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAlphaTag(Ljava/lang/String;)V
    .locals 0
    .parameter "alphaString"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/internal/telephony/AlphaTag;->mAlphaTag:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setPbrIndex(I)V
    .locals 0
    .parameter "pbr"

    .prologue
    .line 118
    iput p1, p0, Lcom/android/internal/telephony/AlphaTag;->mPbrIndex:I

    .line 119
    return-void
.end method

.method public setRecordIndex(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 110
    iput p1, p0, Lcom/android/internal/telephony/AlphaTag;->mRecordNumber:I

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlphaTag: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/AlphaTag;->mRecordNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AlphaTag;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/AlphaTag;->mPbrIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 154
    iget v0, p0, Lcom/android/internal/telephony/AlphaTag;->mRecordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/AlphaTag;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget v0, p0, Lcom/android/internal/telephony/AlphaTag;->mPbrIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    return-void
.end method
