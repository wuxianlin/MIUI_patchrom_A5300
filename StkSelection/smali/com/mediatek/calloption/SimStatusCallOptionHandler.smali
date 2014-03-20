.class public abstract Lcom/mediatek/calloption/SimStatusCallOptionHandler;
.super Lcom/mediatek/calloption/CallOptionBaseHandler;
.source "SimStatusCallOptionHandler.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final IS_OP07:Z = false

.field private static final MESSAGE_CHECK_SIM_STATUS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SimStatusCallOptionHandler"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mRequest:Lcom/mediatek/calloption/Request;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "OP07"

    const-string v1, "ro.operator.optr"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->IS_OP07:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/mediatek/calloption/CallOptionBaseHandler;-><init>()V

    .line 63
    new-instance v0, Lcom/mediatek/calloption/SimStatusCallOptionHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/SimStatusCallOptionHandler$1;-><init>(Lcom/mediatek/calloption/SimStatusCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/mediatek/calloption/SimStatusCallOptionHandler$2;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/SimStatusCallOptionHandler$2;-><init>(Lcom/mediatek/calloption/SimStatusCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/calloption/SimStatusCallOptionHandler;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/calloption/SimStatusCallOptionHandler;)Lcom/mediatek/calloption/Request;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/calloption/SimStatusCallOptionHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method private isRoamingNeeded(I)Z
    .locals 3
    .parameter "slot"

    .prologue
    const/4 v2, 0x0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRoamingNeeded slot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->log(Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRoamingNeeded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gsm.roaming.indicator.needed.2"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->log(Ljava/lang/String;)V

    .line 193
    const-string v0, "gsm.roaming.indicator.needed.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 196
    :goto_0
    return v0

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRoamingNeeded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gsm.roaming.indicator.needed"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->log(Ljava/lang/String;)V

    .line 196
    const-string v0, "gsm.roaming.indicator.needed"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 201
    const-string v0, "SimStatusCallOptionHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method

.method private needToCheckSIMStatus(I)Z
    .locals 4
    .parameter "slot"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 133
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-static {v3, p1}, Lcom/mediatek/calloption/CallOptionUtils;->isSimInsert(Lcom/mediatek/calloption/Request;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 134
    :cond_0
    const-string v2, "the sim not insert, bail out!"

    invoke-direct {p0, v2}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->log(Ljava/lang/String;)V

    .line 145
    :cond_1
    :goto_0
    return v1

    .line 137
    :cond_2
    iget-object v3, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-static {v3, p1}, Lcom/mediatek/calloption/CallOptionUtils;->isRadioOn(Lcom/mediatek/calloption/Request;I)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 138
    goto :goto_0

    .line 143
    :cond_3
    iget-object v3, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v3}, Lcom/mediatek/calloption/Request;->isMultipleSim()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v0

    .line 145
    .local v0, simState:I
    :goto_1
    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    invoke-direct {p0, p1}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->roamingRequest(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_4
    move v1, v2

    goto :goto_0

    .line 143
    .end local v0           #simState:I
    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    goto :goto_1
.end method

.method private roamingRequest(I)Z
    .locals 6
    .parameter "slot"

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x1

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "roamingRequest slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->log(Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, bRoaming:Z
    iget-object v3, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v3}, Lcom/mediatek/calloption/Request;->isMultipleSim()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->isNetworkRoaming(I)Z

    move-result v0

    .line 167
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "roamingRequest slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isRoam = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->log(Ljava/lang/String;)V

    .line 168
    if-nez v0, :cond_1

    .line 186
    :goto_1
    return v1

    .line 164
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    goto :goto_0

    .line 172
    :cond_1
    iget-object v3, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v3}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_reminder_mode_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, p1}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->isRoamingNeeded(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    const-string v1, "roamingRequest reminder once and need to indicate"

    invoke-direct {p0, v1}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->log(Ljava/lang/String;)V

    move v1, v2

    .line 176
    goto :goto_1

    .line 179
    :cond_2
    iget-object v3, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v3}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_reminder_mode_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 181
    const-string v1, "roamingRequest reminder always"

    invoke-direct {p0, v1}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->log(Ljava/lang/String;)V

    move v1, v2

    .line 182
    goto :goto_1

    .line 185
    :cond_3
    const-string v2, "roamingRequest result = false"

    invoke-direct {p0, v2}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->log(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected abstract dismissProgressIndication()V
.end method

.method public handleRequest(Lcom/mediatek/calloption/Request;)V
    .locals 5
    .parameter "request"

    .prologue
    const/4 v3, -0x1

    .line 106
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.phone.extra.slot"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 107
    .local v0, slot:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRequest(), slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->log(Ljava/lang/String;)V

    .line 108
    if-eq v3, v0, :cond_0

    sget-boolean v1, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->IS_OP07:Z

    if-eqz v1, :cond_2

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    invoke-virtual {v1, p1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    iput-object p1, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    .line 114
    invoke-direct {p0, v0}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->needToCheckSIMStatus(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    iget-object v1, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 125
    :cond_3
    iget-object v1, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    invoke-virtual {v1, p1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto :goto_0
.end method

.method protected abstract showProgressIndication(Lcom/mediatek/calloption/Request;)V
.end method
