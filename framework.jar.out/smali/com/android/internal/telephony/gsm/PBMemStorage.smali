.class public Lcom/android/internal/telephony/gsm/PBMemStorage;
.super Ljava/lang/Object;
.source "PBMemStorage.java"


# static fields
.field public static final INT_NOT_SET:I = -0x1

.field public static final STRING_NOT_SET:Ljava/lang/String; = ""


# instance fields
.field private mStorage:Ljava/lang/String;

.field private mTotal:I

.field private mUsed:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mStorage:Ljava/lang/String;

    .line 75
    iput v1, p0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mUsed:I

    .line 76
    iput v1, p0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mTotal:I

    .line 77
    return-void
.end method

.method public static createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/gsm/PBMemStorage;
    .locals 2
    .parameter "source"

    .prologue
    .line 80
    new-instance v0, Lcom/android/internal/telephony/gsm/PBMemStorage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/PBMemStorage;-><init>()V

    .line 82
    .local v0, p:Lcom/android/internal/telephony/gsm/PBMemStorage;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mStorage:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mUsed:I

    .line 84
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mTotal:I

    .line 85
    return-object v0
.end method


# virtual methods
.method public getStorage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mStorage:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mTotal:I

    return v0
.end method

.method public getUsed()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mUsed:I

    return v0
.end method

.method public setStorage(Ljava/lang/String;)V
    .locals 0
    .parameter "sStorage"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mStorage:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setTotal(I)V
    .locals 0
    .parameter "iTotal"

    .prologue
    .line 104
    iput p1, p0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mTotal:I

    .line 105
    return-void
.end method

.method public setUsed(I)V
    .locals 0
    .parameter "iUsed"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mUsed:I

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";storage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mStorage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",used: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mUsed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",total:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
