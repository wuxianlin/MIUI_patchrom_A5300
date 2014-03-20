.class public Lcom/android/internal/telephony/gsm/PBEntry;
.super Ljava/lang/Object;
.source "PBEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/PBEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_NOT_SET:I = -0x1

.field public static final STRING_NOT_SET:Ljava/lang/String; = ""


# instance fields
.field private mAdnumber:Ljava/lang/String;

.field private mAdtype:I

.field private mEmail:Ljava/lang/String;

.field private mGroup:Ljava/lang/String;

.field private mHidden:I

.field private mIndex1:I

.field private mNumber:Ljava/lang/String;

.field private mSecondtext:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/android/internal/telephony/gsm/PBEntry$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/PBEntry$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/PBEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mIndex1:I

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mNumber:Ljava/lang/String;

    .line 84
    iput v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mType:I

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mText:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mHidden:I

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mGroup:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mAdnumber:Ljava/lang/String;

    .line 90
    iput v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mAdtype:I

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mSecondtext:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mEmail:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public static reateFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/gsm/PBEntry;
    .locals 2
    .parameter "source"

    .prologue
    .line 106
    new-instance v0, Lcom/android/internal/telephony/gsm/PBEntry;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/PBEntry;-><init>()V

    .line 107
    .local v0, p:Lcom/android/internal/telephony/gsm/PBEntry;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/PBEntry;->mIndex1:I

    .line 108
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/PBEntry;->mNumber:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/PBEntry;->mType:I

    .line 110
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/PBEntry;->mText:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/PBEntry;->mHidden:I

    .line 112
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/PBEntry;->mGroup:Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/PBEntry;->mAdnumber:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/PBEntry;->mAdtype:I

    .line 115
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/PBEntry;->mSecondtext:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/PBEntry;->mEmail:Ljava/lang/String;

    .line 117
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public getAdnumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mAdnumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAdtype()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mAdtype:I

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getHidden()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mHidden:I

    return v0
.end method

.method public getIndex1()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mIndex1:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondtext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mSecondtext:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mType:I

    return v0
.end method

.method public setAdnumber(Ljava/lang/String;)V
    .locals 0
    .parameter "sAdnumber"

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 183
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mAdnumber:Ljava/lang/String;

    .line 185
    :cond_0
    return-void
.end method

.method public setAdtype(I)V
    .locals 0
    .parameter "iAdtype"

    .prologue
    .line 188
    iput p1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mAdtype:I

    .line 189
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "sEmail"

    .prologue
    .line 196
    if-eqz p1, :cond_0

    .line 197
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mEmail:Ljava/lang/String;

    .line 199
    :cond_0
    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0
    .parameter "sGroup"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mGroup:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setHidden(I)V
    .locals 0
    .parameter "iHidden"

    .prologue
    .line 174
    iput p1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mHidden:I

    .line 175
    return-void
.end method

.method public setIndex1(I)V
    .locals 0
    .parameter "iIndex1"

    .prologue
    .line 156
    iput p1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mIndex1:I

    .line 157
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "sNumber"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mNumber:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setSecondtext(Ljava/lang/String;)V
    .locals 0
    .parameter "sSecondtext"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mSecondtext:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "sText"

    .prologue
    .line 168
    if-eqz p1, :cond_0

    .line 169
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mText:Ljava/lang/String;

    .line 171
    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "iType"

    .prologue
    .line 164
    iput p1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mType:I

    .line 165
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mIndex1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hidden:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", group:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adnumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mAdnumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adtype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mAdtype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondtext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mSecondtext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mEmail:Ljava/lang/String;

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
    .line 121
    iget v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mIndex1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mGroup:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mAdnumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mAdtype:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mSecondtext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/PBEntry;->writeToParcel(Landroid/os/Parcel;)V

    .line 135
    return-void
.end method
