.class public Lcom/android/stk/StkDigitsKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "StkDigitsKeyListener.java"


# static fields
.field public static final CHARACTERS:[C

.field private static sInstance:Lcom/android/stk/StkDigitsKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/stk/StkDigitsKeyListener;->CHARACTERS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2at 0x0t
        0x23t 0x0t
        0x2bt 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/stk/StkDigitsKeyListener;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/stk/StkDigitsKeyListener;->sInstance:Lcom/android/stk/StkDigitsKeyListener;

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/android/stk/StkDigitsKeyListener;->sInstance:Lcom/android/stk/StkDigitsKeyListener;

    .line 76
    :goto_0
    return-object v0

    .line 75
    :cond_0
    new-instance v0, Lcom/android/stk/StkDigitsKeyListener;

    invoke-direct {v0}, Lcom/android/stk/StkDigitsKeyListener;-><init>()V

    sput-object v0, Lcom/android/stk/StkDigitsKeyListener;->sInstance:Lcom/android/stk/StkDigitsKeyListener;

    .line 76
    sget-object v0, Lcom/android/stk/StkDigitsKeyListener;->sInstance:Lcom/android/stk/StkDigitsKeyListener;

    goto :goto_0
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/stk/StkDigitsKeyListener;->CHARACTERS:[C

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x3

    return v0
.end method
