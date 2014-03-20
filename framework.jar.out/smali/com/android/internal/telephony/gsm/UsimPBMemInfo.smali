.class public Lcom/android/internal/telephony/gsm/UsimPBMemInfo;
.super Ljava/lang/Object;
.source "UsimPBMemInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPBMemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_NOT_SET:I = -0x1

.field public static final STRING_NOT_SET:Ljava/lang/String; = ""


# instance fields
.field private mAasLength:I

.field private mAasTotal:I

.field private mAasType:I

.field private mAasUsed:I

.field private mAdnLength:I

.field private mAdnTotal:I

.field private mAdnType:I

.field private mAdnUsed:I

.field private mAnrLength:I

.field private mAnrTotal:I

.field private mAnrType:I

.field private mAnrUsed:I

.field private mCcpLength:I

.field private mCcpTotal:I

.field private mCcpType:I

.field private mCcpUsed:I

.field private mEmailLength:I

.field private mEmailTotal:I

.field private mEmailType:I

.field private mEmailUsed:I

.field private mExt1Length:I

.field private mExt1Total:I

.field private mExt1Type:I

.field private mExt1Used:I

.field private mGasLength:I

.field private mGasTotal:I

.field private mGasType:I

.field private mGasUsed:I

.field private mSliceIndex:I

.field private mSneLength:I

.field private mSneTotal:I

.field private mSneType:I

.field private mSneUsed:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/UsimPBMemInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSliceIndex:I

    .line 106
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnLength:I

    .line 107
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnUsed:I

    .line 108
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnTotal:I

    .line 109
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnType:I

    .line 110
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Length:I

    .line 111
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Used:I

    .line 112
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Total:I

    .line 113
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Type:I

    .line 114
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasLength:I

    .line 115
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasUsed:I

    .line 116
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasTotal:I

    .line 117
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasType:I

    .line 118
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrLength:I

    .line 119
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrUsed:I

    .line 120
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrTotal:I

    .line 121
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrType:I

    .line 122
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasLength:I

    .line 123
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasUsed:I

    .line 124
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasTotal:I

    .line 125
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasType:I

    .line 126
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneLength:I

    .line 127
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneUsed:I

    .line 128
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneTotal:I

    .line 129
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneType:I

    .line 130
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailLength:I

    .line 131
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailUsed:I

    .line 132
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailTotal:I

    .line 133
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailType:I

    .line 134
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpLength:I

    .line 135
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpUsed:I

    .line 136
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpTotal:I

    .line 137
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpType:I

    .line 138
    return-void
.end method

.method public static createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/gsm/UsimPBMemInfo;
    .locals 2
    .parameter "source"

    .prologue
    .line 151
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;-><init>()V

    .line 152
    .local v0, p:Lcom/android/internal/telephony/gsm/UsimPBMemInfo;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSliceIndex:I

    .line 153
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnLength:I

    .line 154
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnUsed:I

    .line 155
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnTotal:I

    .line 156
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnType:I

    .line 157
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Length:I

    .line 158
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Used:I

    .line 159
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Total:I

    .line 160
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Type:I

    .line 161
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasLength:I

    .line 162
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasUsed:I

    .line 163
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasTotal:I

    .line 164
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasType:I

    .line 165
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrLength:I

    .line 166
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrUsed:I

    .line 167
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrTotal:I

    .line 168
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrType:I

    .line 169
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasLength:I

    .line 170
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasUsed:I

    .line 171
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasTotal:I

    .line 172
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasType:I

    .line 173
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneLength:I

    .line 174
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneUsed:I

    .line 175
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneTotal:I

    .line 176
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneType:I

    .line 177
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailLength:I

    .line 178
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailUsed:I

    .line 179
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailTotal:I

    .line 180
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailType:I

    .line 181
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpLength:I

    .line 182
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpUsed:I

    .line 183
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpTotal:I

    .line 184
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpType:I

    .line 186
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public getAasFree()I
    .locals 2

    .prologue
    .line 418
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasTotal:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getAasLength()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasLength:I

    return v0
.end method

.method public getAasTotal()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasTotal:I

    return v0
.end method

.method public getAasType()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasType:I

    return v0
.end method

.method public getAasUsed()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasUsed:I

    return v0
.end method

.method public getAdnFree()I
    .locals 2

    .prologue
    .line 282
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnTotal:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getAdnLength()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnLength:I

    return v0
.end method

.method public getAdnTotal()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnTotal:I

    return v0
.end method

.method public getAdnType()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnType:I

    return v0
.end method

.method public getAdnUsed()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnUsed:I

    return v0
.end method

.method public getAnrFree()I
    .locals 2

    .prologue
    .line 338
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrTotal:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getAnrLength()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrLength:I

    return v0
.end method

.method public getAnrTotal()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrTotal:I

    return v0
.end method

.method public getAnrType()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrType:I

    return v0
.end method

.method public getAnrUsed()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrUsed:I

    return v0
.end method

.method public getCcpFree()I
    .locals 2

    .prologue
    .line 410
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpTotal:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCcpLength()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpLength:I

    return v0
.end method

.method public getCcpTotal()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpTotal:I

    return v0
.end method

.method public getCcpType()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpType:I

    return v0
.end method

.method public getCcpUsed()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpUsed:I

    return v0
.end method

.method public getEmailFree()I
    .locals 2

    .prologue
    .line 390
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailTotal:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getEmailLength()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailLength:I

    return v0
.end method

.method public getEmailTotal()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailTotal:I

    return v0
.end method

.method public getEmailType()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailType:I

    return v0
.end method

.method public getEmailUsed()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailUsed:I

    return v0
.end method

.method public getExt1Free()I
    .locals 2

    .prologue
    .line 302
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Total:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Used:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getExt1Length()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Length:I

    return v0
.end method

.method public getExt1Total()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Total:I

    return v0
.end method

.method public getExt1Type()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Type:I

    return v0
.end method

.method public getExt1Used()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Used:I

    return v0
.end method

.method public getGasFree()I
    .locals 2

    .prologue
    .line 414
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasTotal:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getGasLength()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasLength:I

    return v0
.end method

.method public getGasTotal()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasTotal:I

    return v0
.end method

.method public getGasType()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasType:I

    return v0
.end method

.method public getGasUsed()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasUsed:I

    return v0
.end method

.method public getSliceIndex()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSliceIndex:I

    return v0
.end method

.method public getSneFree()I
    .locals 2

    .prologue
    .line 422
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneTotal:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSneLength()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneLength:I

    return v0
.end method

.method public getSneTotal()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneTotal:I

    return v0
.end method

.method public getSneType()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneType:I

    return v0
.end method

.method public getSneUsed()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneUsed:I

    return v0
.end method

.method public setAasLength(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 494
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasLength:I

    .line 495
    return-void
.end method

.method public setAasTotal(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 502
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasTotal:I

    .line 503
    return-void
.end method

.method public setAasType(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 506
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasType:I

    .line 507
    return-void
.end method

.method public setAasUsed(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 498
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasUsed:I

    .line 499
    return-void
.end method

.method public setAdnLength(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 430
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnLength:I

    .line 431
    return-void
.end method

.method public setAdnTotal(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 438
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnTotal:I

    .line 439
    return-void
.end method

.method public setAdnType(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 442
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnType:I

    .line 443
    return-void
.end method

.method public setAdnUsed(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 434
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnUsed:I

    .line 435
    return-void
.end method

.method public setAnrLength(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 478
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrLength:I

    .line 479
    return-void
.end method

.method public setAnrTotal(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 486
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrTotal:I

    .line 487
    return-void
.end method

.method public setAnrType(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 490
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrType:I

    .line 491
    return-void
.end method

.method public setAnrUsed(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 482
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrUsed:I

    .line 483
    return-void
.end method

.method public setCcpLength(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 542
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpLength:I

    .line 543
    return-void
.end method

.method public setCcpTotal(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 550
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpTotal:I

    .line 551
    return-void
.end method

.method public setCcpType(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 554
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpType:I

    .line 555
    return-void
.end method

.method public setCcpUsed(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 546
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpUsed:I

    .line 547
    return-void
.end method

.method public setEmailLength(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 526
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailLength:I

    .line 527
    return-void
.end method

.method public setEmailTotal(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 534
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailTotal:I

    .line 535
    return-void
.end method

.method public setEmailType(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 538
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailType:I

    .line 539
    return-void
.end method

.method public setEmailUsed(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 530
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailUsed:I

    .line 531
    return-void
.end method

.method public setExt1Length(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 446
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Length:I

    .line 447
    return-void
.end method

.method public setExt1Total(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 454
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Total:I

    .line 455
    return-void
.end method

.method public setExt1Type(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 458
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Type:I

    .line 459
    return-void
.end method

.method public setExt1Used(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 450
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Used:I

    .line 451
    return-void
.end method

.method public setGasLength(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 462
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasLength:I

    .line 463
    return-void
.end method

.method public setGasTotal(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 470
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasTotal:I

    .line 471
    return-void
.end method

.method public setGasType(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 474
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasType:I

    .line 475
    return-void
.end method

.method public setGasUsed(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 466
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasUsed:I

    .line 467
    return-void
.end method

.method public setSliceIndex(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 426
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSliceIndex:I

    .line 427
    return-void
.end method

.method public setSneLength(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 510
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneLength:I

    .line 511
    return-void
.end method

.method public setSneTotal(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 518
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneTotal:I

    .line 519
    return-void
.end method

.method public setSneType(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 522
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneType:I

    .line 523
    return-void
.end method

.method public setSneUsed(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 514
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneUsed:I

    .line 515
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSliceIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSliceIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAdnLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAdnUsed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnUsed:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAdnTotal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnTotal:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAdnType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mExt1Length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Length:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mExt1Used:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Used:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mExt1Total"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Total:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mExt1Type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Type:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mGasLength"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasLength:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mGasUsed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasUsed:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mGasTotal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasTotal:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mGasType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAnrLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrLength:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAnrUsed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrUsed:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAnrTotal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrTotal:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAnrType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEmailLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailLength:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEmailUsed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailUsed:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEmailTotal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailTotal:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEmailType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "dest"

    .prologue
    .line 190
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSliceIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Used:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Total:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->writeToParcel(Landroid/os/Parcel;)V

    .line 229
    return-void
.end method
