.class abstract Lcom/android/stk/StkApp;
.super Landroid/app/Application;
.source "StkApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkApp$1;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field static final DIALOG_DEFAULT_TIMEOUT:I = 0x9c40

.field static final MENU_ID_BACK:I = 0x2

.field static final MENU_ID_DEFAULT_ITEM:I = 0x4

.field static final MENU_ID_END_SESSION:I = 0x1

.field static final MENU_ID_HELP:I = 0x3

.field public static final TAG:Ljava/lang/String; = "STK App"

.field static final TONE_DFEAULT_TIMEOUT:I = 0x7d0

.field static final UI_TIMEOUT:I = 0x1d4c0

.field public static mIdleMessage:[Ljava/lang/String;

.field public static mPLMN:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/stk/StkApp;->mPLMN:[Ljava/lang/String;

    .line 81
    sget v0, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/stk/StkApp;->mIdleMessage:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 102
    return-void
.end method

.method public static calculateDurationInMilis(Lcom/android/internal/telephony/cat/Duration;)I
    .locals 3
    .parameter "duration"

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, timeout:I
    if-eqz p0, :cond_0

    .line 92
    sget-object v1, Lcom/android/stk/StkApp$1;->$SwitchMap$com$android$internal$telephony$cat$Duration$TimeUnit:[I

    iget-object v2, p0, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 101
    const/16 v0, 0x3e8

    .line 104
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    mul-int/2addr v0, v1

    .line 106
    :cond_0
    return v0

    .line 94
    :pswitch_0
    const v0, 0xea60

    .line 95
    goto :goto_0

    .line 97
    :pswitch_1
    const/16 v0, 0x2710

    .line 98
    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
