.class public Landroid/telephony/gemini/GeminiCbSmsMessage;
.super Landroid/telephony/CbSmsMessage;
.source "GeminiCbSmsMessage.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMS"


# instance fields
.field private simId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/telephony/gemini/GeminiCbSmsMessage;-><init>(I)V

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "simId"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/telephony/CbSmsMessage;-><init>()V

    .line 56
    iput p1, p0, Landroid/telephony/gemini/GeminiCbSmsMessage;->simId:I

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/telephony/CbSmsMessage;I)V
    .locals 1
    .parameter "cbSms"
    .parameter "simId"

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/telephony/CbSmsMessage;-><init>()V

    .line 61
    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p1, Landroid/telephony/CbSmsMessage;->mWrappedMessage:Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;

    iput-object v0, p0, Landroid/telephony/CbSmsMessage;->mWrappedMessage:Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;

    .line 67
    :goto_0
    iput p2, p0, Landroid/telephony/gemini/GeminiCbSmsMessage;->simId:I

    .line 68
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/CbSmsMessage;->mWrappedMessage:Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;

    goto :goto_0
.end method

.method public static createFromPdu([BI)Landroid/telephony/gemini/GeminiCbSmsMessage;
    .locals 2
    .parameter "pdu"
    .parameter "simId"

    .prologue
    .line 78
    invoke-static {p0}, Landroid/telephony/gemini/GeminiCbSmsMessage;->createFromPdu([B)Landroid/telephony/CbSmsMessage;

    move-result-object v0

    .line 80
    .local v0, cbsms:Landroid/telephony/CbSmsMessage;
    new-instance v1, Landroid/telephony/gemini/GeminiCbSmsMessage;

    invoke-direct {v1, v0, p1}, Landroid/telephony/gemini/GeminiCbSmsMessage;-><init>(Landroid/telephony/CbSmsMessage;I)V

    return-object v1
.end method


# virtual methods
.method public getMessageSimId()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Landroid/telephony/gemini/GeminiCbSmsMessage;->simId:I

    return v0
.end method
