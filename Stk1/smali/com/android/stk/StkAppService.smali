.class public Lcom/android/stk/StkAppService;
.super Landroid/app/Service;
.source "StkAppService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkAppService$8;,
        Lcom/android/stk/StkAppService$ServiceHandler;,
        Lcom/android/stk/StkAppService$DelayedCmd;,
        Lcom/android/stk/StkAppService$InitiatedByUserAction;,
        Lcom/android/stk/StkAppService$StkContext;
    }
.end annotation


# static fields
.field static BROWSER_PACKAGE_NAME:Ljava/lang/String; = null

.field static final CMD_MSG:Ljava/lang/String; = "cmd message"

.field static final CMD_SIM_ID:Ljava/lang/String; = "sim id"

.field static final CONFIRMATION:Ljava/lang/String; = "confirm"

.field static final DEV_ID_DISPLAY:I = 0x2

.field static final DEV_ID_EARPIECE:I = 0x3

.field static final DEV_ID_KEYPAD:I = 0x1

.field static final DEV_ID_NETWORK:I = 0x83

.field static final DEV_ID_TERMINAL:I = 0x82

.field static final DEV_ID_UICC:I = 0x81

.field static final EVDL_ID:Ljava/lang/String; = "downLoad event id"

.field static final EVDL_ID_BROWSER_TERMINATION:I = 0x8

.field static final EVDL_ID_IDLE_SCREEN_AVAILABLE:I = 0x5

.field static final EVDL_ID_LANGUAGE_SELECT:I = 0x7

.field static final EVDL_ID_USER_ACTIVITY:I = 0x4

.field static final HELP:Ljava/lang/String; = "help"

.field static final INPUT:Ljava/lang/String; = "input"

.field private static final LOGTAG:Ljava/lang/String; = "Stk-SAS "

.field static final MENU_SELECTION:Ljava/lang/String; = "menu selection"

.field static final OPCODE:Ljava/lang/String; = "op"

.field static final OP_BOOT_COMPLETED:I = 0x5

.field static final OP_CMD:I = 0x1

.field private static final OP_DELAYED_MSG:I = 0x7

.field static final OP_END_SESSION:I = 0x4

.field static final OP_EVENT_DOWNLOAD:I = 0x6

.field static final OP_LAUNCH_APP:I = 0x3

.field static final OP_REMOVE_STM:I = 0x9

.field static final OP_RESPONSE:I = 0x2

.field private static final OP_RESPONSE_IDLE_TEXT:I = 0x8

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.android.stk"

.field private static final PHONE_STATE_CHANGED:I = 0x65

.field static final RES_ID:Ljava/lang/String; = "response id"

.field static final RES_ID_BACKWARD:I = 0x15

.field static final RES_ID_CONFIRM:I = 0xd

.field static final RES_ID_DONE:I = 0xe

.field static final RES_ID_END_SESSION:I = 0x16

.field static final RES_ID_EXIT:I = 0x17

.field static final RES_ID_INPUT:I = 0xc

.field static final RES_ID_MENU_SELECTION:I = 0xb

.field static final RES_ID_TIMEOUT:I = 0x14

.field static final SETUP_CALL_END_CALL_1:I = 0x4

.field static final SETUP_CALL_END_CALL_2:I = 0x5

.field static final SETUP_CALL_HOLD_CALL_1:I = 0x2

.field static final SETUP_CALL_HOLD_CALL_2:I = 0x3

.field static final SETUP_CALL_NO_CALL_1:I = 0x0

.field static final SETUP_CALL_NO_CALL_2:I = 0x1

.field private static final STK1_INPUT_ACTIVITY_NAME:Ljava/lang/String; = "com.android.stk.StkInputActivity"

.field private static final STK1_MENU_ACTIVITY_NAME:Ljava/lang/String; = "com.android.stk.StkMenuActivity"

.field private static final STK1_NOTIFICATION_ID:I = 0x14d

.field private static final STK2_INPUT_ACTIVITY_NAME:Ljava/lang/String; = "com.android.stk.StkInputActivityII"

.field private static final STK2_MENU_ACTIVITY_NAME:Ljava/lang/String; = "com.android.stk.StkMenuActivityII"

.field private static final STK2_NOTIFICATION_ID:I = 0x14e

.field public static final STK_AVAIL_AVAILABLE:I = 0x1

.field public static final STK_AVAIL_INIT:I = -0x1

.field public static final STK_AVAIL_NOT_AVAILABLE:I = 0x0

.field static STK_GEMINI_BROADCAST_ALL:I = 0x0

.field static STK_GEMINI_SIM_NUM:I = 0x0

.field static final STK_TITLE_KEY:Ljava/lang/String; = "gsm.setupmenu.title"

.field static final STK_TITLE_KEY2:Ljava/lang/String; = "gsm.setupmenu.title2"

.field private static final SUPP_SERVICE_FAILED:I = 0x66

.field private static mPhoneStateChangeReg:Z

.field private static final miSIMid:I

.field static sInstance:Lcom/android/stk/StkAppService;


# instance fields
.field private mCallHandler:Landroid/os/Handler;

.field private mCallHandler2:Landroid/os/Handler;

.field private mCmdInProgress:Z

.field private mCmdsQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/stk/StkAppService$DelayedCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mIdleScreenAvailableFilter:Landroid/content/IntentFilter;

.field private final mLocaleChangedFilter:Landroid/content/IntentFilter;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field public mPhone:Lcom/android/internal/telephony/Phone;

.field private final mSIM2StateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mStkContext:[Lcom/android/stk/StkAppService$StkContext;

.field private final mStkIdleScreenAvailableReceiver:Landroid/content/BroadcastReceiver;

.field private final mStkLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

.field serviceThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x2

    sput v0, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    .line 151
    const/16 v0, 0x63

    sput v0, Lcom/android/stk/StkAppService;->STK_GEMINI_BROADCAST_ALL:I

    .line 157
    const/4 v0, 0x0

    sput-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    .line 250
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/stk/StkAppService;->mPhoneStateChangeReg:Z

    .line 2106
    const-string v0, "com.android.browser"

    sput-object v0, Lcom/android/stk/StkAppService;->BROWSER_PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 148
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 152
    sget v0, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/cat/AppInterface;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    .line 153
    sget v0, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    new-array v0, v0, [Lcom/android/stk/StkAppService$StkContext;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    .line 154
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 155
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    .line 160
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 252
    iput-object v1, p0, Lcom/android/stk/StkAppService;->serviceThread:Ljava/lang/Thread;

    .line 1336
    new-instance v0, Lcom/android/stk/StkAppService$2;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$2;-><init>(Lcom/android/stk/StkAppService;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCallHandler:Landroid/os/Handler;

    .line 1349
    new-instance v0, Lcom/android/stk/StkAppService$3;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$3;-><init>(Lcom/android/stk/StkAppService;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCallHandler2:Landroid/os/Handler;

    .line 2481
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mLocaleChangedFilter:Landroid/content/IntentFilter;

    .line 2484
    new-instance v0, Lcom/android/stk/StkAppService$4;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$4;-><init>(Lcom/android/stk/StkAppService;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mStkLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 2507
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.stk.IDLE_SCREEN_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mIdleScreenAvailableFilter:Landroid/content/IntentFilter;

    .line 2510
    new-instance v0, Lcom/android/stk/StkAppService$5;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$5;-><init>(Lcom/android/stk/StkAppService;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mStkIdleScreenAvailableReceiver:Landroid/content/BroadcastReceiver;

    .line 2558
    new-instance v0, Lcom/android/stk/StkAppService$6;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$6;-><init>(Lcom/android/stk/StkAppService;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 2588
    new-instance v0, Lcom/android/stk/StkAppService$7;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$7;-><init>(Lcom/android/stk/StkAppService;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mSIM2StateChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private SendEventDownloadMsg(II)V
    .locals 7
    .parameter "evdlId"
    .parameter "sim_id"

    .prologue
    const/4 v6, 0x6

    .line 2599
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SendEventDownloadMsg() - evdlId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], sim id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2600
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2601
    .local v0, args:Landroid/os/Bundle;
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 2602
    .local v2, op:[I
    const/4 v3, 0x0

    aput v6, v2, v3

    .line 2603
    const/4 v3, 0x1

    aput p2, v2, v3

    .line 2604
    const-string v3, "op"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2605
    const-string v3, "downLoad event id"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2607
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v3}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 2609
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->arg1:I

    .line 2610
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 2611
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2613
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v3, v1}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2614
    return-void
.end method

.method static synthetic access$000(Lcom/android/stk/StkAppService;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/stk/StkAppService;Landroid/os/Bundle;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->handleCmdResponse(Landroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->callDelayedMsg()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/stk/StkAppService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleSessionEnd(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/stk/StkAppService;Landroid/os/Bundle;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->handleEventDownload(Landroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->handleDelayedCmd()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/stk/StkAppService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleIdleTextResponse(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/stk/StkAppService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processPhoneStateChanged(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/stk/StkAppService;Landroid/os/AsyncResult;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->processSuppServiceFailed(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/stk/StkAppService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->SendEventDownloadMsg(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/stk/StkAppService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getNotificationId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/stk/StkAppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->isBusyOnCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/stk/StkAppService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/stk/StkAppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/stk/StkAppService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/Menu;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->isCmdInteractive(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/stk/StkAppService;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    return-object v0
.end method

.method private callDelayedMsg()V
    .locals 2

    .prologue
    .line 739
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 740
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 741
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 742
    return-void
.end method

.method private canShowTextDialog(Lcom/android/internal/telephony/cat/TextMessage;I)Z
    .locals 4
    .parameter "msg"
    .parameter "sim_id"

    .prologue
    const/4 v0, 0x1

    .line 2011
    if-nez p1, :cond_1

    .line 2029
    :cond_0
    :goto_0
    return v0

    .line 2015
    :cond_1
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canShowTextDialog? mMenuIsVisible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p2

    iget-boolean v3, v3, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mInputIsVisible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDialogIsVisible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p2

    iget-boolean v3, v3, Lcom/android/stk/StkAppService$StkContext;->mDialogIsVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    iget-boolean v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    if-eq v1, v0, :cond_0

    .line 2020
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/stk/StkAppService;->isIdleScreen(Landroid/content/Context;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 2025
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p2

    iget-boolean v1, v1, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p2

    iget-boolean v1, v1, Lcom/android/stk/StkAppService$StkContext;->mInputIsVisible:Z

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p2

    iget-boolean v1, v1, Lcom/android/stk/StkAppService$StkContext;->mDialogIsVisible:Z

    if-eq v1, v0, :cond_0

    .line 2029
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private changeMenuStateToMain(I)V
    .locals 2
    .parameter "sim_id"

    .prologue
    .line 2670
    const-string v0, "Stk-SAS "

    const-string v1, "call changeMenuStateToMain"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2671
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v0, :cond_0

    .line 2672
    const-string v0, "Stk-SAS "

    const-string v1, "changeMenuStateToMain: mMainCmd is null"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2675
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2676
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2677
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    .line 2678
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_1

    .line 2679
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v1

    iput-object v1, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 2681
    :cond_1
    return-void
.end method

.method private correctTextMessage(Lcom/android/internal/telephony/cat/TextMessage;I)V
    .locals 2
    .parameter "msg"
    .parameter "sim_id"

    .prologue
    .line 2436
    sget-object v0, Lcom/android/stk/StkAppService$8;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p2

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2443
    iget-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2444
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->getDefaultText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 2447
    :cond_1
    :goto_0
    return-void

    .line 2438
    :pswitch_0
    iget-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2439
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->getDefaultText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto :goto_0

    .line 2436
    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method private displayAlphaIcon(Lcom/android/internal/telephony/cat/TextMessage;I)V
    .locals 4
    .parameter "msg"
    .parameter "sim_id"

    .prologue
    .line 1035
    if-nez p1, :cond_0

    .line 1037
    const-string v1, "Stk-SAS "

    const-string v2, "[displayAlphaIcon] msg is null"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    :goto_0
    return-void

    .line 1041
    :cond_0
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchAlphaIcon - IconSelfExplanatory["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "icon["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "text["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    move-object v0, p1

    .line 1045
    .local v0, dispTxt:Lcom/android/internal/telephony/cat/TextMessage;
    invoke-direct {p0, v0, p2}, Lcom/android/stk/StkAppService;->correctTextMessage(Lcom/android/internal/telephony/cat/TextMessage;I)V

    .line 1046
    iget-boolean v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1048
    iget-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 1049
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->showIconToast(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto :goto_0

    .line 1052
    :cond_1
    const-string v1, "Stk-SAS "

    const-string v2, "launchAlphaIcon - null icon!"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1057
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 1058
    iget-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 1060
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->showIconToast(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto :goto_0

    .line 1063
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->showIconAndTextToast(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto :goto_0

    .line 1066
    :cond_5
    iget-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    .line 1068
    :cond_6
    const-string v1, "Stk-SAS "

    const-string v2, "launchAlphaIcon - null txt!"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1071
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->showTextToast(Lcom/android/internal/telephony/cat/TextMessage;I)V

    goto/16 :goto_0
.end method

.method private finishMenuActivity(I)V
    .locals 6
    .parameter "sim_id"

    .prologue
    .line 1889
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1891
    .local v1, newIntent:Landroid/content/Intent;
    const-string v2, "com.android.stk.StkMenuActivity"

    .line 1892
    .local v2, targetActivity:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1903
    :goto_0
    :pswitch_0
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finishMenuActivity, target: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    const-string v3, "com.android.stk"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1905
    const/high16 v0, 0x1400

    .line 1908
    .local v0, intentFlags:I
    sget-object v3, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v3, p1}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result v3

    or-int/2addr v0, v3

    .line 1909
    const-string v3, "STATE"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1910
    const-string v3, "sim id"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1911
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1912
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1913
    return-void

    .line 1897
    .end local v0           #intentFlags:I
    :pswitch_1
    const-string v2, "com.android.stk.StkMenuActivityII"

    .line 1898
    goto :goto_0

    .line 1892
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getBackgroundCallState(I)Lcom/android/internal/telephony/Call$State;
    .locals 4
    .parameter "sim_id"

    .prologue
    .line 1381
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackgroundCallState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getBackgroundCallGemini(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1389
    .local v0, bg:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 1390
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BackgroundCall State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1393
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0
.end method

.method private getCallState(I)Lcom/android/internal/telephony/Call$State;
    .locals 4
    .parameter "sim_id"

    .prologue
    .line 1364
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getForegroundCallGemini(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1372
    .local v0, fg:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 1373
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ForegroundCall State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1376
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0
.end method

.method private getDefaultPlmn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultText(I)Ljava/lang/String;
    .locals 3
    .parameter "sim_id"

    .prologue
    .line 2451
    const-string v0, ""

    .line 2452
    .local v0, str:Ljava/lang/String;
    sget-object v1, Lcom/android/stk/StkAppService$8;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2463
    :goto_0
    :pswitch_0
    return-object v0

    .line 2454
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2455
    goto :goto_0

    .line 2457
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2458
    goto :goto_0

    .line 2460
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2452
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I
    .locals 3
    .parameter "userAction"
    .parameter "sim_id"

    .prologue
    const/4 v1, 0x0

    .line 1884
    sget-object v0, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p2

    iget-boolean v2, v2, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    or-int/2addr v0, v2

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x4

    goto :goto_1
.end method

.method static getInstance()Lcom/android/stk/StkAppService;
    .locals 1

    .prologue
    .line 528
    sget-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    return-object v0
.end method

.method private getItemName(II)Ljava/lang/String;
    .locals 5
    .parameter "itemId"
    .parameter "sim_id"

    .prologue
    const/4 v3, 0x0

    .line 2410
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    .line 2411
    .local v2, menu:Lcom/android/internal/telephony/cat/Menu;
    if-nez v2, :cond_1

    .line 2419
    :cond_0
    :goto_0
    return-object v3

    .line 2414
    :cond_1
    iget-object v4, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/Item;

    .line 2415
    .local v1, item:Lcom/android/internal/telephony/cat/Item;
    iget v4, v1, Lcom/android/internal/telephony/cat/Item;->id:I

    if-ne v4, p1, :cond_2

    .line 2416
    iget-object v3, v1, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method private getNotificationId(I)I
    .locals 4
    .parameter "sim_id"

    .prologue
    .line 2548
    const/16 v0, 0x14d

    .line 2549
    .local v0, notify_id:I
    packed-switch p1, :pswitch_data_0

    .line 2555
    :goto_0
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNotificationId, sim_id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", notify_id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2556
    return v0

    .line 2552
    :pswitch_0
    const/16 v0, 0x14e

    goto :goto_0

    .line 2549
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .parameter "intent"

    .prologue
    .line 329
    const-string v1, "showPlmn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    const-string v1, "plmn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, plmn:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 335
    .end local v0           #plmn:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->getDefaultPlmn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;I)V
    .locals 20
    .parameter "cmdMsg"
    .parameter "sim_id"

    .prologue
    .line 778
    invoke-static {}, Lcom/android/stk/StkAppInstaller;->getInstance()Lcom/android/stk/StkAppInstaller;

    move-result-object v4

    .line 779
    .local v4, appInstaller:Lcom/android/stk/StkAppInstaller;
    if-nez p1, :cond_1

    .line 1031
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 784
    const/16 v16, 0x1

    .line 785
    .local v16, waitForUsersResponse:Z
    const/4 v3, 0x0

    .line 787
    .local v3, additionalInfo:[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 788
    const-string v17, "Stk-SAS "

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleCmd cmdName["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]  mCurrentCmd=cmdMsg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    :cond_2
    sget-object v17, Lcom/android/stk/StkAppService$8;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 1024
    :cond_3
    :goto_1
    :pswitch_0
    if-nez v16, :cond_0

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v17

    if-eqz v17, :cond_10

    .line 1026
    invoke-direct/range {p0 .. p0}, Lcom/android/stk/StkAppService;->callDelayedMsg()V

    goto :goto_0

    .line 793
    :pswitch_1
    const-string v17, "Stk-SAS "

    const-string v18, "[handleCmd][DISPLAY_TEXT] +"

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    invoke-direct/range {p0 .. p0}, Lcom/android/stk/StkAppService;->isBusyOnCall()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 796
    const-string v17, "Stk-SAS "

    const-string v18, "[Handle Command][DISPLAY_TEXT][Can not handle currently]"

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    new-instance v11, Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 798
    .local v11, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v17, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 799
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v3, v0, [B

    .line 800
    const/16 v17, 0x0

    const/16 v18, 0x2

    aput-byte v18, v3, v17

    .line 801
    invoke-virtual {v11, v3}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_0

    .line 806
    .end local v11           #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v8

    .line 807
    .local v8, msg:Lcom/android/internal/telephony/cat/TextMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    iget-boolean v0, v8, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/stk/StkAppService$StkContext;->responseNeeded:Z

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/stk/StkAppService$StkContext;->responseNeeded:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 809
    const/16 v16, 0x0

    .line 811
    const-string v17, "Stk-SAS "

    const-string v18, "[Handle Command][DISPLAY_TEXT][Should immediatly response]"

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    new-instance v11, Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 813
    .restart local v11       #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v17, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 818
    .end local v11           #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 829
    :goto_2
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v15, v0, [B

    fill-array-data v15, :array_0

    .line 830
    .local v15, target:[B
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v15}, Ljava/lang/String;-><init>([B)V

    .line 831
    .local v13, strTarget:Ljava/lang/String;
    const-string v17, "line.separator"

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 833
    .local v12, strLine:Ljava/lang/String;
    iget-object v0, v8, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 834
    .local v14, strText:Ljava/lang/String;
    iput-object v14, v8, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 835
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/stk/StkAppService;->launchTextDialog(I)V

    goto/16 :goto_1

    .line 820
    .end local v12           #strLine:Ljava/lang/String;
    .end local v13           #strTarget:Ljava/lang/String;
    .end local v14           #strText:Ljava/lang/String;
    .end local v15           #target:[B
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    goto :goto_2

    .line 826
    :cond_7
    const-string v17, ""

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    goto :goto_2

    .line 838
    .end local v8           #msg:Lcom/android/internal/telephony/cat/TextMessage;
    :pswitch_2
    const-string v17, "Stk-SAS "

    const-string v18, "[handleCmd][Select_Item] +"

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v18, v0

    aget-object v18, v18, p2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 841
    invoke-direct/range {p0 .. p0}, Lcom/android/stk/StkAppService;->isBusyOnCall()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 842
    const-string v17, "Stk-SAS "

    const-string v18, "[Handle Command][SELECT_ITEM][Can not handle currently]"

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    new-instance v11, Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 844
    .restart local v11       #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v17, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 845
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v3, v0, [B

    .line 846
    const/16 v17, 0x0

    const/16 v18, 0x2

    aput-byte v18, v3, v17

    .line 847
    invoke-virtual {v11, v3}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_0

    .line 853
    .end local v11           #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    :cond_8
    const-string v17, "phone"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 854
    .local v7, iTel:Lcom/android/internal/telephony/ITelephony;
    if-eqz v7, :cond_3

    .line 857
    :try_start_0
    move/from16 v0, p2

    invoke-interface {v7, v0}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/stk/StkAppService$StkContext;->isUserAccessed:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 860
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 869
    :catch_0
    move-exception v6

    .line 870
    .local v6, ex:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    goto/16 :goto_1

    .line 862
    .end local v6           #ex:Landroid/os/RemoteException;
    :cond_a
    :try_start_1
    const-string v17, "Stk-SAS "

    const-string v18, "can not show select_item now"

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    new-instance v11, Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 864
    .restart local v11       #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v17, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 866
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/stk/StkAppService;->changeMenuStateToMain(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 888
    .end local v7           #iTel:Lcom/android/internal/telephony/ITelephony;
    .end local v11           #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    :pswitch_3
    const-string v17, "Stk-SAS "

    const-string v18, "[handleCmd][SET_UP_MENU] +"

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/stk/StkAppService$StkContext;->mSetupMenuCalled:Z

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v18, v0

    aget-object v18, v18, p2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v18, v0

    aget-object v18, v18, p2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 893
    const-string v17, "Stk-SAS "

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "StkAppService - SET_UP_MENU ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/stk/StkAppService;->removeMenu(I)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const/4 v10, 0x1

    .line 899
    .local v10, radio_on:Z
    :try_start_2
    const-string v17, "phone"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v9

    .line 900
    .local v9, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v9, :cond_b

    .line 901
    move/from16 v0, p2

    invoke-interface {v9, v0}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z

    move-result v10

    .line 902
    const-string v17, "Stk-SAS "

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "StkAppService - SET_UP_MENU radio_on["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 910
    .end local v9           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/stk/StkAppService;->removeMenu(I)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 911
    const-string v17, "Stk-SAS "

    const-string v18, "StkAppService - SET_UP_MENU - removeMenu() - Uninstall App"

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/stk/StkAppService$StkContext;->mSetupMenuCalled:Z

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    .line 915
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/stk/StkAppService;->StkAvailable(II)V

    .line 926
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 927
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;I)V

    goto/16 :goto_1

    .line 904
    :catch_1
    move-exception v5

    .line 905
    .local v5, e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 906
    const-string v17, "Stk-SAS "

    const-string v18, "StkAppService - SET_UP_MENU Exception happen ===="

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 916
    .end local v5           #e:Landroid/os/RemoteException;
    :cond_c
    if-nez v10, :cond_d

    .line 917
    const-string v17, "Stk-SAS "

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "StkAppService - SET_UP_MENU - install App - radio_on["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    .line 919
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/stk/StkAppService;->StkAvailable(II)V

    goto :goto_4

    .line 921
    :cond_d
    const-string v17, "Stk-SAS "

    const-string v18, "StkAppService - SET_UP_MENU - install App"

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/android/stk/StkAppInstaller;->install(Landroid/content/Context;I)V

    .line 923
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/stk/StkAppService;->StkAvailable(II)V

    goto/16 :goto_4

    .line 955
    .end local v10           #radio_on:Z
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/stk/StkAppService;->isBusyOnCall()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 956
    const-string v17, "Stk-SAS "

    const-string v18, "[Handle Command][GET_INPUT][Can not handle currently]"

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    new-instance v11, Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 958
    .restart local v11       #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v17, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 959
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v3, v0, [B

    .line 960
    const/16 v17, 0x0

    const/16 v18, 0x2

    aput-byte v18, v3, v17

    .line 961
    invoke-virtual {v11, v3}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_0

    .line 965
    .end local v11           #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/stk/StkAppService;->launchInputActivity(I)V

    goto/16 :goto_1

    .line 968
    :pswitch_5
    const/16 v16, 0x0

    .line 969
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/stk/StkAppService;->launchIdleText(I)V

    goto/16 :goto_1

    .line 975
    :pswitch_6
    const/16 v16, 0x0

    .line 976
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/stk/StkAppService;->launchEventMessage(I)V

    goto/16 :goto_1

    .line 979
    :pswitch_7
    const-string v17, "Stk-SAS "

    const-string v18, "[Handle Command][LAUNCH_BROWSER]"

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v18, v0

    aget-object v18, v18, p2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/stk/StkAppService$StkContext;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/stk/StkAppService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->isBrowserLaunched(Landroid/content/Context;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 983
    sget-object v17, Lcom/android/stk/StkAppService$8;->$SwitchMap$com$android$internal$telephony$cat$LaunchBrowserMode:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v18, v0

    aget-object v18, v18, p2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_1

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V

    goto/16 :goto_1

    .line 985
    :pswitch_8
    const-string v17, "Stk-SAS "

    const-string v18, "[Handle Command][LAUNCH_BROWSER][Should not launch browser]"

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    new-instance v11, Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 987
    .restart local v11       #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/stk/StkAppService$StkContext;->launchBrowser:Z

    .line 988
    sget-object v17, Lcom/android/internal/telephony/cat/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_1

    .line 997
    .end local v11           #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v17, v0

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V

    goto/16 :goto_1

    .line 1001
    :pswitch_9
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/stk/StkAppService;->processSetupCall(I)V

    goto/16 :goto_1

    .line 1004
    :pswitch_a
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/stk/StkAppService;->launchToneDialog(I)V

    goto/16 :goto_1

    .line 1012
    :pswitch_b
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/stk/StkAppService;->processOpenChannel(I)V

    goto/16 :goto_1

    .line 1019
    :pswitch_c
    const/16 v16, 0x0

    .line 1020
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/stk/StkAppService;->launchEventMessage(I)V

    goto/16 :goto_1

    .line 1028
    :cond_10
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    goto/16 :goto_0

    .line 791
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    .line 829
    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    .line 983
    nop

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method private handleCmdResponse(Landroid/os/Bundle;I)V
    .locals 13
    .parameter "args"
    .parameter "sim_id"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1702
    const-string v8, "Stk-SAS "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleCmdResponse, sim id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v8, :cond_0

    .line 1870
    :goto_0
    return-void

    .line 1707
    :cond_0
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v8, v8, p2

    if-nez v8, :cond_1

    .line 1708
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/cat/CatService;->getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v9

    aput-object v9, v8, p2

    .line 1709
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v8, v8, p2

    if-nez v8, :cond_1

    .line 1712
    const-string v8, "Stk-SAS "

    const-string v9, "handleCmdResponse exception! mStkService is null when we need to send response."

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "mStkService is null when we need to send response"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1717
    :cond_1
    const/4 v5, 0x0

    .line 1718
    .local v5, skip_timeout:Z
    new-instance v4, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1719
    .local v4, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1720
    const-string v8, "Stk-SAS "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleCmdResponse+ cmdName["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v10, v10, p2

    iget-object v10, v10, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v8, v9, :cond_3

    .line 1725
    :cond_2
    const/4 v5, 0x1

    .line 1730
    :cond_3
    const-string v8, "help"

    invoke-virtual {p1, v8, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1732
    .local v1, helpRequired:Z
    const-string v8, "response id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1862
    :pswitch_0
    const-string v8, "Stk-SAS "

    const-string v9, "Unknown result id"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1734
    :pswitch_1
    const-string v8, "Stk-SAS "

    const-string v9, "RES_ID_MENU_SELECTION"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, v8}, Lcom/android/stk/StkAppService;->isBipCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1736
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f06003d

    invoke-static {v8, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 1737
    .local v6, toast:Landroid/widget/Toast;
    const/16 v8, 0x50

    invoke-virtual {v6, v8, v11, v11}, Landroid/widget/Toast;->setGravity(III)V

    .line 1738
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1742
    .end local v6           #toast:Landroid/widget/Toast;
    :cond_4
    const-string v8, "menu selection"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1743
    .local v3, menuSelection:I
    sget-object v8, Lcom/android/stk/StkAppService$8;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v9, v9, p2

    iget-object v9, v9, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    .line 1866
    .end local v3           #menuSelection:I
    :cond_5
    :goto_1
    :pswitch_2
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 1867
    const-string v8, "Stk-SAS "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleCmdResponse- cmdName["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v10, v10, p2

    iget-object v10, v10, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    :cond_6
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v8, v8, p2

    invoke-interface {v8, v4}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_0

    .line 1746
    .restart local v3       #menuSelection:I
    :pswitch_3
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iput-boolean v12, v8, Lcom/android/stk/StkAppService$StkContext;->mSetUpMenuHandled:Z

    .line 1748
    :pswitch_4
    new-instance v4, Lcom/android/internal/telephony/cat/CatResponseMessage;

    .end local v4           #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1749
    .restart local v4       #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    invoke-direct {p0, v3, p2}, Lcom/android/stk/StkAppService;->getItemName(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    .line 1750
    if-eqz v1, :cond_7

    .line 1751
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1755
    :goto_2
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setMenuSelection(I)V

    goto :goto_1

    .line 1753
    :cond_7
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_2

    .line 1760
    .end local v3           #menuSelection:I
    :pswitch_5
    const-string v8, "Stk-SAS "

    const-string v9, "RES_ID_INPUT"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    const-string v8, "input"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1762
    .local v2, input:Ljava/lang/String;
    if-eqz v2, :cond_8

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-eqz v8, :cond_8

    .line 1763
    const-string v8, "YES"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1765
    .local v7, yesNoSelection:Z
    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setYesNo(Z)V

    goto/16 :goto_1

    .line 1767
    .end local v7           #yesNoSelection:Z
    :cond_8
    if-eqz v1, :cond_9

    .line 1768
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 1770
    :cond_9
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1771
    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setInput(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1776
    .end local v2           #input:Ljava/lang/String;
    :pswitch_6
    const-string v8, "Stk-SAS "

    const-string v9, "RES_ID_CONFIRM"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    const-string v8, "confirm"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1778
    .local v0, confirmed:Z
    sget-object v8, Lcom/android/stk/StkAppService$8;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v9, v9, p2

    iget-object v9, v9, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_2

    :pswitch_7
    goto/16 :goto_1

    .line 1781
    :pswitch_8
    const-string v8, "Stk-SAS "

    const-string v9, "RES_ID_CONFIRM SET_UP_MENU"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1784
    :pswitch_9
    if-eqz v0, :cond_a

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_3
    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    :cond_a
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_3

    .line 1788
    :pswitch_a
    if-eqz v0, :cond_b

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_4
    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1790
    if-eqz v0, :cond_5

    .line 1791
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iput-boolean v12, v8, Lcom/android/stk/StkAppService$StkContext;->launchBrowser:Z

    .line 1792
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v9, v9, p2

    iget-object v9, v9, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-result-object v9

    iput-object v9, v8, Lcom/android/stk/StkAppService$StkContext;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    goto/16 :goto_1

    .line 1788
    :cond_b
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_4

    .line 1796
    :pswitch_b
    if-eqz v0, :cond_c

    .line 1797
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->processSetupCallResponse(I)V

    goto/16 :goto_0

    .line 1801
    :cond_c
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iput-boolean v11, v8, Lcom/android/stk/StkAppService$StkContext;->mSetupCallInProcess:Z

    .line 1802
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1803
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    goto/16 :goto_1

    .line 1807
    :pswitch_c
    if-eqz v0, :cond_d

    .line 1808
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->processOpenChannelResponse(I)V

    goto/16 :goto_0

    .line 1813
    :cond_d
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1814
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    goto/16 :goto_1

    .line 1819
    .end local v0           #confirmed:Z
    :pswitch_d
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 1822
    :pswitch_e
    const-string v8, "Stk-SAS "

    const-string v9, "RES_ID_BACKWARD"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    sget-object v8, Lcom/android/stk/StkAppService$8;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v9, v9, p2

    iget-object v9, v9, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_3

    .line 1830
    const-string v8, "Stk-SAS "

    const-string v9, "RES_ID_BACKWARD - not OPEN_CHANNEL"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 1825
    :pswitch_f
    const-string v8, "Stk-SAS "

    const-string v9, "RES_ID_BACKWARD - OPEN_CHANNEL"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 1836
    :pswitch_10
    const-string v8, "Stk-SAS "

    const-string v9, "RES_ID_END_SESSION"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 1840
    :pswitch_11
    const-string v8, "Stk-SAS "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RES_ID_TIMEOUT, skip timout: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    if-nez v5, :cond_e

    .line 1843
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1848
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v8

    sget-object v9, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v9

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-ne v8, v12, :cond_5

    .line 1851
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    if-nez v8, :cond_5

    .line 1852
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 1858
    :cond_e
    const-string v8, "Stk-SAS "

    const-string v9, "Skip timeout because the command is SEND_DATA"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1732
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_e
        :pswitch_10
    .end packed-switch

    .line 1743
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 1778
    :pswitch_data_2
    .packed-switch 0x6
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_7
        :pswitch_c
    .end packed-switch

    .line 1823
    :pswitch_data_3
    .packed-switch 0xf
        :pswitch_f
    .end packed-switch
.end method

.method private handleDelayedCmd()V
    .locals 4

    .prologue
    .line 721
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stk/StkAppService$DelayedCmd;

    .line 723
    .local v0, cmd:Lcom/android/stk/StkAppService$DelayedCmd;
    if-eqz v0, :cond_0

    .line 725
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDelayedCmd - queue size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/stk/StkAppService$DelayedCmd;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/stk/StkAppService$DelayedCmd;->sim_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    iget v1, v0, Lcom/android/stk/StkAppService$DelayedCmd;->id:I

    packed-switch v1, :pswitch_data_0

    .line 736
    .end local v0           #cmd:Lcom/android/stk/StkAppService$DelayedCmd;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 728
    .restart local v0       #cmd:Lcom/android/stk/StkAppService$DelayedCmd;
    :pswitch_1
    iget-object v1, v0, Lcom/android/stk/StkAppService$DelayedCmd;->msg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v2, v0, Lcom/android/stk/StkAppService$DelayedCmd;->sim_id:I

    invoke-direct {p0, v1, v2}, Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;I)V

    goto :goto_0

    .line 731
    :pswitch_2
    iget v1, v0, Lcom/android/stk/StkAppService$DelayedCmd;->sim_id:I

    invoke-direct {p0, v1}, Lcom/android/stk/StkAppService;->handleSessionEnd(I)V

    goto :goto_0

    .line 726
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleEventDownload(Landroid/os/Bundle;I)V
    .locals 12
    .parameter "args"
    .parameter "sim_id"

    .prologue
    .line 1636
    const-string v9, "downLoad event id"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1637
    .local v2, eventId:I
    const/4 v8, 0x0

    .line 1638
    .local v8, sourceId:I
    const/4 v1, 0x0

    .line 1639
    .local v1, destinationId:I
    const/4 v0, 0x0

    .line 1641
    .local v0, additionalInfo:[B
    const/4 v6, 0x0

    .line 1644
    .local v6, oneShot:Z
    new-instance v7, Lcom/android/internal/telephony/cat/CatResponseMessage;

    invoke-direct {v7, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(I)V

    .line 1645
    .local v7, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    packed-switch v2, :pswitch_data_0

    .line 1684
    :goto_0
    :pswitch_0
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setSourceId(I)V

    .line 1685
    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setDestinationId(I)V

    .line 1686
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 1687
    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setOneShot(Z)V

    .line 1688
    const-string v9, "Stk-SAS "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onEventDownload - eventId["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], sim id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    if-ltz p2, :cond_1

    sget v9, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge p2, v9, :cond_1

    .line 1690
    iget-object v9, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v9, v9, p2

    invoke-interface {v9, v7}, Lcom/android/internal/telephony/cat/AppInterface;->onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 1700
    :cond_0
    return-void

    .line 1647
    :pswitch_1
    const/16 v8, 0x82

    .line 1648
    const/16 v1, 0x81

    .line 1649
    const/4 v6, 0x1

    .line 1650
    goto :goto_0

    .line 1652
    :pswitch_2
    const/4 v8, 0x2

    .line 1653
    const/16 v1, 0x81

    .line 1654
    const/4 v6, 0x1

    .line 1655
    goto :goto_0

    .line 1657
    :pswitch_3
    const/16 v8, 0x82

    .line 1658
    const/16 v1, 0x81

    .line 1659
    const/4 v9, 0x4

    new-array v0, v9, [B

    .line 1661
    const/4 v9, 0x0

    const/16 v10, -0x53

    aput-byte v10, v0, v9

    .line 1663
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 1664
    .local v5, languageInfo:Ljava/lang/String;
    const/4 v9, 0x1

    const/4 v10, 0x2

    aput-byte v10, v0, v9

    .line 1665
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1666
    .local v4, language:[B
    const/4 v9, 0x2

    const/4 v10, 0x0

    aget-byte v10, v4, v10

    aput-byte v10, v0, v9

    .line 1667
    const/4 v9, 0x3

    const/4 v10, 0x1

    aget-byte v10, v4, v10

    aput-byte v10, v0, v9

    .line 1669
    const/4 v6, 0x0

    .line 1670
    goto :goto_0

    .line 1672
    .end local v4           #language:[B
    .end local v5           #languageInfo:Ljava/lang/String;
    :pswitch_4
    const/16 v8, 0x82

    .line 1673
    const/16 v1, 0x81

    .line 1675
    const/4 v9, 0x3

    new-array v0, v9, [B

    .line 1676
    const/4 v9, 0x0

    const/16 v10, -0x4c

    aput-byte v10, v0, v9

    .line 1677
    const/4 v9, 0x1

    const/4 v10, 0x1

    aput-byte v10, v0, v9

    .line 1678
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-byte v10, v0, v9

    .line 1679
    const/4 v6, 0x0

    .line 1680
    goto/16 :goto_0

    .line 1691
    :cond_1
    sget v9, Lcom/android/stk/StkAppService;->STK_GEMINI_BROADCAST_ALL:I

    if-ne p2, v9, :cond_0

    .line 1693
    const/4 v3, 0x0

    .line 1694
    .local v3, i:I
    const/4 v3, 0x0

    :goto_1
    sget v9, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge v3, v9, :cond_0

    .line 1696
    iget-object v9, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v9, v9, v3

    if-eqz v9, :cond_2

    .line 1697
    iget-object v9, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v9, v9, v3

    invoke-interface {v9, v7}, Lcom/android/internal/telephony/cat/AppInterface;->onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 1694
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1645
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleIdleTextResponse(I)V
    .locals 5
    .parameter "sim_id"

    .prologue
    const/4 v3, 0x1

    .line 2130
    new-instance v1, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 2131
    .local v1, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 2132
    new-array v0, v3, [B

    .line 2133
    .local v0, additionalInfo:[B
    const/4 v2, 0x0

    aput-byte v3, v0, v2

    .line 2134
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 2135
    const-string v2, "Stk-SAS "

    const-string v3, "handleResponseOk "

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2137
    const-string v2, "Stk-SAS "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIdleTextResponse cmdName["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    :cond_0
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v2, v2, p1

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 2139
    return-void
.end method

.method private handleSessionEnd(I)V
    .locals 4
    .parameter "sim_id"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 745
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 746
    const-string v0, "Stk-SAS "

    const-string v1, "handleSessionEnd - mCurrentCmd changed to mMainCmd!"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 748
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v0, :cond_0

    .line 749
    const-string v0, "Stk-SAS "

    const-string v1, "[handleSessionEnd][mCurrentCmd is null!]"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iput-object v3, v0, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    .line 754
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_1

    .line 755
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v1

    iput-object v1, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    if-eqz v0, :cond_2

    .line 758
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/android/stk/StkAppService$StkContext;->mSetupMenuCalled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 759
    invoke-direct {p0, v3, p1}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;I)V

    .line 765
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 766
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->callDelayedMsg()V

    .line 771
    :goto_1
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/android/stk/StkAppService$StkContext;->launchBrowser:Z

    if-eqz v0, :cond_3

    .line 772
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iput-boolean v2, v0, Lcom/android/stk/StkAppService$StkContext;->launchBrowser:Z

    .line 773
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->launchBrowser(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)V

    .line 775
    :cond_3
    return-void

    .line 761
    :cond_4
    const-string v0, "Stk-SAS "

    const-string v1, "[handleSessionEnd][To finish menu activity]"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->finishMenuActivity(I)V

    goto :goto_0

    .line 768
    :cond_5
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    goto :goto_1
.end method

.method private init()V
    .locals 9

    .prologue
    const/16 v8, 0x66

    const/16 v7, 0x65

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2689
    const-string v2, "Stk-SAS "

    const-string v3, "init()+ "

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2690
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    .line 2691
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "Stk App Service"

    invoke-direct {v2, v4, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/stk/StkAppService;->serviceThread:Ljava/lang/Thread;

    .line 2692
    iget-object v2, p0, Lcom/android/stk/StkAppService;->serviceThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 2693
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 2694
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 2696
    sput-object p0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    .line 2698
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2702
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mCallHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v7, v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForPreciseCallStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 2704
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mCallHandler2:Landroid/os/Handler;

    invoke-virtual {v2, v3, v7, v4, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForPreciseCallStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 2706
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mCallHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v8, v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForSuppServiceFailedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 2707
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mCallHandler2:Landroid/os/Handler;

    invoke-virtual {v2, v3, v8, v4, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForSuppServiceFailedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 2715
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->initNotify()V

    .line 2717
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2718
    .local v1, mSIMStateChangeFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2719
    const-string v2, "android.intent.aciton.stk.REMOVE_IDLE_TEXT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2720
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/stk/StkAppService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2721
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.aciton.stk.REMOVE_IDLE_TEXT_2"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2722
    .local v0, SIMS2RemoveIdleTextFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mSIM2StateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/stk/StkAppService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2723
    return-void
.end method

.method private is1A1H(I)Z
    .locals 4
    .parameter "sim_id"

    .prologue
    .line 1397
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1398
    .local v1, fgState:Lcom/android/internal/telephony/Call$State;
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getBackgroundCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1399
    .local v0, bgState:Lcom/android/internal/telephony/Call$State;
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_0

    .line 1400
    const-string v2, "Stk-SAS "

    const-string v3, "1A1H"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    const/4 v2, 0x1

    .line 1403
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isBipCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 2
    .parameter "cmd"

    .prologue
    .line 2617
    sget-object v0, Lcom/android/stk/StkAppService$8;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2627
    const-string v0, "non-BIP command"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2628
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2623
    :pswitch_0
    const-string v0, "BIP command"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2624
    const/4 v0, 0x1

    goto :goto_0

    .line 2617
    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isBusyOnCall()Z
    .locals 3

    .prologue
    .line 2635
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 2641
    .local v0, s:Lcom/android/internal/telephony/PhoneConstants$State;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBusyOnCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2642
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCmdInteractive(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 2
    .parameter "cmd"

    .prologue
    .line 707
    sget-object v0, Lcom/android/stk/StkAppService$8;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 717
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 714
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 707
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isOrangeSupport()Z
    .locals 2

    .prologue
    .line 2647
    const-string v1, "ro.operator.optr"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2648
    .local v0, optr:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "OP03"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2649
    const-string v1, "isOrangeSupport is true"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2650
    const/4 v1, 0x1

    .line 2653
    :goto_0
    return v1

    .line 2652
    :cond_0
    const-string v1, "isOrangeSupport is false"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2653
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPhoneIdle(I)Lcom/android/internal/telephony/Call$State;
    .locals 6
    .parameter "SIMid"

    .prologue
    .line 1408
    const/4 v1, 0x0

    .line 1410
    .local v1, fg:Lcom/android/internal/telephony/Call;
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getForegroundCallGemini(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1414
    if-eqz v1, :cond_0

    .line 1415
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPhoneIdle() Phone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ForegroundCall State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-eq v3, v4, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 1417
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 1448
    :goto_0
    return-object v3

    .line 1421
    :cond_0
    const/4 v0, 0x0

    .line 1423
    .local v0, bg:Lcom/android/internal/telephony/Call;
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getBackgroundCallGemini(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1427
    if-eqz v0, :cond_1

    .line 1428
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPhoneIdle() Phone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " BackgroundCall State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-eq v3, v4, :cond_1

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 1430
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    goto :goto_0

    .line 1434
    :cond_1
    const/4 v2, 0x0

    .line 1436
    .local v2, ring:Lcom/android/internal/telephony/Call;
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getRingingCallGemini(I)Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1440
    if-eqz v0, :cond_2

    .line 1441
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPhoneIdle() Phone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " RingCall State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-eq v3, v4, :cond_2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 1443
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    goto/16 :goto_0

    .line 1447
    :cond_2
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPhoneIdle() Phone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto/16 :goto_0
.end method

.method static isSetupMenuCalled(I)Z
    .locals 4
    .parameter "SIMID"

    .prologue
    const/4 v0, 0x0

    .line 269
    const-string v1, "StkAppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSetupMenuCalled, sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    sget-object v1, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    if-eqz v1, :cond_0

    if-ltz p0, :cond_0

    sget v1, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge p0, v1, :cond_0

    .line 272
    const-string v1, "StkAppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSetupMenuCalled, Stk context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    iget-object v3, v3, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object v1, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    iget-object v1, v1, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p0

    if-eqz v1, :cond_0

    .line 274
    sget-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p0

    iget-boolean v0, v0, Lcom/android/stk/StkAppService$StkContext;->mSetupMenuCalled:Z

    .line 279
    :cond_0
    return v0
.end method

.method private launchBrowser(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)V
    .locals 5
    .parameter "settings"

    .prologue
    const/high16 v4, 0x400

    .line 2241
    if-nez p1, :cond_0

    .line 2278
    :goto_0
    return-void

    .line 2245
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2246
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2250
    const/4 v0, 0x0

    .line 2251
    .local v0, data:Landroid/net/Uri;
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2252
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2254
    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2255
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2256
    sget-object v2, Lcom/android/stk/StkAppService$8;->$SwitchMap$com$android$internal$telephony$cat$LaunchBrowserMode:[I

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2271
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 2276
    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2277
    :catch_0
    move-exception v2

    goto :goto_0

    .line 2258
    :pswitch_0
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2259
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 2262
    :pswitch_1
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2263
    const/high16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 2266
    :pswitch_2
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2267
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 2256
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private launchCallMsg(I)V
    .locals 3
    .parameter "sim_id"

    .prologue
    .line 2309
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v1

    iget-object v0, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 2310
    .local v0, msg:Lcom/android/internal/telephony/cat/TextMessage;
    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2313
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 2314
    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->showIconToast(Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 2339
    :cond_0
    :goto_0
    return-void

    .line 2321
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 2322
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 2324
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->showIconToast(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto :goto_0

    .line 2327
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->showIconAndTextToast(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto :goto_0

    .line 2330
    :cond_4
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2334
    invoke-direct {p0, v0, p1}, Lcom/android/stk/StkAppService;->showTextToast(Lcom/android/internal/telephony/cat/TextMessage;I)V

    goto :goto_0
.end method

.method private launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V
    .locals 3
    .parameter "msg"
    .parameter "sim_id"

    .prologue
    .line 2212
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p2

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 2213
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->correctTextMessage(Lcom/android/internal/telephony/cat/TextMessage;I)V

    .line 2215
    const/4 v0, 0x0

    .line 2216
    .local v0, newIntent:Landroid/content/Intent;
    packed-switch p2, :pswitch_data_0

    .line 2228
    :goto_0
    if-eqz v0, :cond_0

    .line 2230
    const/high16 v1, 0x5080

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2, p2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2234
    const-string v1, "TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2235
    const-string v1, "sim id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2236
    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 2238
    :cond_0
    return-void

    .line 2219
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #newIntent:Landroid/content/Intent;
    const-class v1, Lcom/android/stk/StkDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2220
    .restart local v0       #newIntent:Landroid/content/Intent;
    goto :goto_0

    .line 2222
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #newIntent:Landroid/content/Intent;
    const-class v1, Lcom/android/stk/StkDialogActivityII;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2223
    .restart local v0       #newIntent:Landroid/content/Intent;
    goto :goto_0

    .line 2216
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private launchEventMessage(I)V
    .locals 9
    .parameter "sim_id"

    .prologue
    const/4 v8, 0x0

    .line 2149
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v6, v6, p1

    iget-object v6, v6, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    .line 2150
    .local v2, msg:Lcom/android/internal/telephony/cat/TextMessage;
    if-eqz v2, :cond_0

    iget-object v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 2151
    :cond_0
    const-string v6, "Stk-SAS "

    const-string v7, "aaaaa [return] "

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    :goto_0
    return-void

    .line 2155
    :cond_1
    new-instance v3, Landroid/widget/Toast;

    iget-object v6, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 2156
    .local v3, toast:Landroid/widget/Toast;
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2158
    .local v0, inflate:Landroid/view/LayoutInflater;
    const/high16 v6, 0x7f03

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2159
    .local v5, v:Landroid/view/View;
    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2161
    .local v4, tv:Landroid/widget/TextView;
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2163
    .local v1, iv:Landroid/widget/ImageView;
    iget-object v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    .line 2164
    iget-object v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2168
    :goto_1
    iget-boolean v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v6, :cond_2

    .line 2169
    const-string v6, "Stk-SAS "

    const-string v7, "aaaaa [msg.iconSelfExplanatory = null] "

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2170
    iget-object v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 2171
    const-string v6, "Stk-SAS "

    const-string v7, "aaaaa [msg.text == null] "

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2172
    sget-object v6, Lcom/android/stk/StkAppService$8;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v7, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2205
    :cond_2
    :goto_2
    :pswitch_0
    invoke-virtual {v3, v5}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2206
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/Toast;->setDuration(I)V

    .line 2207
    const/16 v6, 0x50

    invoke-virtual {v3, v6, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 2208
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2166
    :cond_3
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 2174
    :pswitch_1
    const v6, 0x7f06001d

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 2177
    :pswitch_2
    const-string v6, "Stk-SAS "

    const-string v7, "aaaaa [SEND_SMS] "

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    const v6, 0x7f06001c

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 2181
    :pswitch_3
    const v6, 0x7f06001a

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 2184
    :pswitch_4
    const v6, 0x7f06001b

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 2187
    :pswitch_5
    const v6, 0x7f06002e

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 2190
    :pswitch_6
    const v6, 0x7f06002f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 2193
    :pswitch_7
    const v6, 0x7f060030

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 2196
    :pswitch_8
    const v6, 0x7f060031

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 2201
    :cond_4
    iget-object v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private launchIdleText(I)V
    .locals 10
    .parameter "sim_id"

    .prologue
    const v9, 0x108051d

    const v8, 0x1020006

    const/4 v7, 0x0

    .line 2342
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v1

    .line 2344
    .local v1, msg:Lcom/android/internal/telephony/cat/TextMessage;
    const-string v4, "Stk-SAS "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launchIdleText - text["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] iconSelfExplanatory["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v1, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] icon["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], sim id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2347
    iget-object v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 2348
    const-string v4, "Stk-SAS "

    const-string v5, "cancel IdleMode text"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getNotificationId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2395
    :goto_0
    return-void

    .line 2351
    :cond_0
    const-string v4, "Stk-SAS "

    const-string v5, "Add IdleMode text"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getNotificationId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2354
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 2355
    .local v2, notification:Landroid/app/Notification;
    new-instance v0, Landroid/widget/RemoteViews;

    const-string v4, "com.android.stk"

    const v5, 0x10900cc

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2359
    .local v0, contentView:Landroid/widget/RemoteViews;
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 2360
    iput v9, v2, Landroid/app/Notification;->icon:I

    .line 2362
    iget-boolean v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v4, :cond_1

    .line 2363
    iget-object v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    iput-object v4, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2364
    const v4, 0x1020046

    iget-object v5, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2367
    :cond_1
    iget-object v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 2368
    const-string v4, "Stk-SAS "

    const-string v5, "Idle Mode Text with icon"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2369
    iget-object v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2378
    :goto_1
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/stk/NotificationAlertActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2382
    .local v3, notificationIntent:Landroid/content/Intent;
    sget-object v4, Lcom/android/stk/StkApp;->mIdleMessage:[Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    aput-object v5, v4, p1

    .line 2389
    const-string v4, "sim id"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2390
    const v4, 0x1020016

    sget-object v5, Lcom/android/stk/StkApp;->mPLMN:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2391
    iput-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2392
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2393
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getNotificationId(I)I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 2372
    .end local v3           #notificationIntent:Landroid/content/Intent;
    :cond_2
    const-string v4, "Stk-SAS "

    const-string v5, "Idle Mode Text without icon"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2373
    invoke-virtual {v0, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method private launchInputActivity(I)V
    .locals 5
    .parameter "sim_id"

    .prologue
    .line 1951
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1953
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "com.android.stk.StkInputActivity"

    .line 1954
    .local v1, targetActivity:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1965
    :goto_0
    :pswitch_0
    const-string v2, "Stk-SAS "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchInputActivity, target: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    const/high16 v2, 0x1000

    sget-object v3, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v3, p1}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1968
    const-string v2, "com.android.stk"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1969
    const-string v2, "INPUT"

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1970
    const-string v2, "sim id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1971
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1972
    return-void

    .line 1959
    :pswitch_1
    const-string v1, "com.android.stk.StkInputActivityII"

    .line 1960
    goto :goto_0

    .line 1954
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;I)V
    .locals 6
    .parameter "menu"
    .parameter "sim_id"

    .prologue
    .line 1916
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1918
    .local v1, newIntent:Landroid/content/Intent;
    const-string v2, "com.android.stk.StkMenuActivity"

    .line 1919
    .local v2, targetActivity:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 1930
    :goto_0
    :pswitch_0
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "launchMenuActivity, target: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    const-string v3, "com.android.stk"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1932
    const/high16 v0, 0x1400

    .line 1934
    .local v0, intentFlags:I
    if-nez p1, :cond_0

    .line 1936
    sget-object v3, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v3, p2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result v3

    or-int/2addr v0, v3

    .line 1938
    const-string v3, "STATE"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1945
    :goto_1
    const-string v3, "sim id"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1946
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1947
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1948
    return-void

    .line 1924
    .end local v0           #intentFlags:I
    :pswitch_1
    const-string v2, "com.android.stk.StkMenuActivityII"

    .line 1925
    goto :goto_0

    .line 1941
    .restart local v0       #intentFlags:I
    :cond_0
    sget-object v3, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v3, p2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result v3

    or-int/2addr v0, v3

    .line 1943
    const-string v3, "STATE"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1919
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private launchTextDialog(I)V
    .locals 5
    .parameter "sim_id"

    .prologue
    .line 1975
    const-string v2, "Stk-SAS "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchTextDialog, sim id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/stk/StkAppService;->canShowTextDialog(Lcom/android/internal/telephony/cat/TextMessage;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1977
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->sendOkMessage(I)V

    .line 2007
    :cond_0
    :goto_0
    return-void

    .line 1982
    :cond_1
    const/4 v1, 0x0

    .line 1983
    .local v1, newIntent:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 1995
    :goto_1
    if-eqz v1, :cond_0

    .line 1997
    const/high16 v2, 0x5880

    sget-object v3, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v3, p1}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2002
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    .line 2003
    .local v0, msg:Lcom/android/internal/telephony/cat/TextMessage;
    const-string v2, "TEXT"

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2004
    const-string v2, "sim id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2005
    invoke-virtual {p0, v1}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1986
    .end local v0           #msg:Lcom/android/internal/telephony/cat/TextMessage;
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    .end local v1           #newIntent:Landroid/content/Intent;
    const-class v2, Lcom/android/stk/StkDialogActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1987
    .restart local v1       #newIntent:Landroid/content/Intent;
    goto :goto_1

    .line 1989
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    .end local v1           #newIntent:Landroid/content/Intent;
    const-class v2, Lcom/android/stk/StkDialogActivityII;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1990
    .restart local v1       #newIntent:Landroid/content/Intent;
    goto :goto_1

    .line 1983
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private launchToneDialog(I)V
    .locals 3
    .parameter "sim_id"

    .prologue
    .line 2398
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/stk/ToneDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2399
    .local v0, newIntent:Landroid/content/Intent;
    const/high16 v1, 0x5080

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2, p1}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2403
    const-string v1, "TEXT"

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2404
    const-string v1, "TONE"

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getToneSettings()Lcom/android/internal/telephony/cat/ToneSettings;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2405
    const-string v1, "sim id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2406
    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 2407
    return-void
.end method

.method private opCodeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "opCode"

    .prologue
    .line 2735
    packed-switch p1, :pswitch_data_0

    .line 2744
    const-string v0, "unknown op code"

    :goto_0
    return-object v0

    .line 2736
    :pswitch_0
    const-string v0, "OP_CMD"

    goto :goto_0

    .line 2737
    :pswitch_1
    const-string v0, "OP_RESPONSE"

    goto :goto_0

    .line 2738
    :pswitch_2
    const-string v0, "OP_LAUNCH_APP"

    goto :goto_0

    .line 2739
    :pswitch_3
    const-string v0, "OP_END_SESSION"

    goto :goto_0

    .line 2740
    :pswitch_4
    const-string v0, "OP_BOOT_COMPLETED"

    goto :goto_0

    .line 2741
    :pswitch_5
    const-string v0, "OP_EVENT_DOWNLOAD"

    goto :goto_0

    .line 2742
    :pswitch_6
    const-string v0, "OP_DELAYED_MSG"

    goto :goto_0

    .line 2743
    :pswitch_7
    const-string v0, "OP_RESPONSE_IDLE_TEXT"

    goto :goto_0

    .line 2735
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private processAbnormalEndCallResponse(I)V
    .locals 2
    .parameter "sim_id"

    .prologue
    .line 1265
    const-string v0, "Stk-SAS "

    const-string v1, "End Abnormal CALL PROCESS"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processAbnormalResponse(I)V

    .line 1267
    return-void
.end method

.method private processAbnormalHoldCallResponse(I)V
    .locals 2
    .parameter "sim_id"

    .prologue
    .line 1270
    const-string v0, "Stk-SAS "

    const-string v1, "HOLD Abnormal CALL PROCESS"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processAbnormalResponse(I)V

    .line 1272
    return-void
.end method

.method private processAbnormalNoCallResponse(I)V
    .locals 4
    .parameter "sim_id"

    .prologue
    const/4 v2, 0x0

    .line 1203
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    .line 1204
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-boolean v1, v1, Lcom/android/stk/StkAppService$StkContext;->mSetupCallInProcess:Z

    if-nez v1, :cond_1

    .line 1218
    :cond_0
    :goto_0
    return-void

    .line 1207
    :cond_1
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iput-boolean v2, v1, Lcom/android/stk/StkAppService$StkContext;->mSetupCallInProcess:Z

    .line 1208
    const-string v1, "Stk-SAS "

    const-string v2, "Abnormal No Call Response PROCESS"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_0

    .line 1212
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1213
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abnormal No Call Response PROCESS end! cmdName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1216
    .local v0, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1217
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v1, v1, p1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0
.end method

.method private processAbnormalOpenChannelResponse(I)V
    .locals 4
    .parameter "sim_id"

    .prologue
    .line 1241
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    .line 1242
    const-string v1, "Stk-SAS "

    const-string v2, "Abnormal OpenChannel Response PROCESS"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_0

    .line 1252
    :goto_0
    return-void

    .line 1246
    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1247
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abnormal OpenChannel Response PROCESS end! cmdName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1250
    .local v0, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1251
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v1, v1, p1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0
.end method

.method private processAbnormalPhone2BusyResponse(I)V
    .locals 5
    .parameter "sim_id"

    .prologue
    const/4 v4, 0x0

    .line 1185
    iput-boolean v4, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    .line 1186
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iput-boolean v4, v1, Lcom/android/stk/StkAppService$StkContext;->mSetupCallInProcess:Z

    .line 1187
    const-string v1, "Stk-SAS "

    const-string v2, "Abnormal No Call Response PROCESS - SIM 2 Call Busy"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_0

    .line 1200
    :goto_0
    return-void

    .line 1191
    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1192
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abnormal No Call Response PROCESS end - SIM 2 Call Busy! cmdName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1197
    .local v0, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1198
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    .line 1199
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v1, v1, p1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0
.end method

.method private processAbnormalResponse(I)V
    .locals 4
    .parameter "sim_id"

    .prologue
    const/4 v3, 0x0

    .line 1166
    iput-boolean v3, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    .line 1167
    const-string v1, "Stk-SAS "

    const-string v2, "Abnormal Response PROCESS Start"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-boolean v1, v1, Lcom/android/stk/StkAppService$StkContext;->mSetupCallInProcess:Z

    if-nez v1, :cond_1

    .line 1182
    :cond_0
    :goto_0
    return-void

    .line 1171
    :cond_1
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iput-boolean v3, v1, Lcom/android/stk/StkAppService$StkContext;->mSetupCallInProcess:Z

    .line 1172
    const-string v1, "Stk-SAS "

    const-string v2, "Abnormal Response PROCESS"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_0

    .line 1176
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1177
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abnormal Response PROCESS end! cmdName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1180
    .local v0, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1181
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v1, v1, p1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0
.end method

.method private processEndCall(I)V
    .locals 1
    .parameter "sim_id"

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {p0, v0, p1}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V

    .line 1479
    return-void
.end method

.method private processEndCallResponse(I)V
    .locals 6
    .parameter "sim_id"

    .prologue
    .line 1563
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1564
    .local v0, callState:Lcom/android/internal/telephony/Call$State;
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call State  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,sim id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    sget-object v3, Lcom/android/stk/StkAppService$8;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1572
    const-string v3, "Stk-SAS "

    const-string v4, "End call"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->is1A1H(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1579
    :try_start_0
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->hangupAllGemini(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1607
    :cond_0
    :goto_0
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call Not IDLE  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    :goto_1
    return-void

    .line 1567
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalResponse(I)V

    goto :goto_1

    .line 1583
    :catch_0
    move-exception v1

    .line 1584
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Error: Call hangup: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processAbnormalResponse(I)V

    goto :goto_0

    .line 1590
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    .line 1592
    .local v2, fg:Lcom/android/internal/telephony/Call;
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getForegroundCallGemini(I)Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1596
    if-eqz v2, :cond_0

    .line 1598
    :try_start_1
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End call  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1600
    :catch_1
    move-exception v1

    .line 1601
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Error: Call hangup: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processAbnormalResponse(I)V

    goto :goto_0

    .line 1565
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private processHoldCall(I)V
    .locals 2
    .parameter "sim_id"

    .prologue
    .line 1468
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->is1A1H(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1469
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {p0, v0, p1}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V

    .line 1474
    :goto_0
    return-void

    .line 1471
    :cond_0
    const-string v0, "Stk-SAS "

    const-string v1, "Call Abnormal Hold Call Response(has 1A1H calls)"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processAbnormalNoCallResponse(I)V

    goto :goto_0
.end method

.method private processHoldCallResponse(I)V
    .locals 5
    .parameter "sim_id"

    .prologue
    .line 1528
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1529
    .local v0, callState:Lcom/android/internal/telephony/Call$State;
    const-string v2, "Stk-SAS "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processHoldCallResponse callState["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], sim id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    sget-object v2, Lcom/android/stk/StkAppService$8;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1554
    :pswitch_0
    const-string v2, "Stk-SAS "

    const-string v3, "processHoldCallResponse in other state"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processAbnormalResponse(I)V

    .line 1558
    :goto_0
    return-void

    .line 1534
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalResponse(I)V

    .line 1535
    const-string v2, "Stk-SAS "

    const-string v3, "processHoldCallResponse in Idle or HOLDING"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1538
    :pswitch_2
    const-string v2, "Stk-SAS "

    const-string v3, "processHoldCallResponse in Active "

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    :try_start_0
    const-string v2, "Stk-SAS "

    const-string v3, "switchHoldingAndActive"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->switchHoldingAndActiveGemini(I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1548
    :catch_0
    move-exception v1

    .line 1549
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v2, "Stk-SAS "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Error: switchHoldingAndActive: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processAbnormalResponse(I)V

    goto :goto_0

    .line 1531
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processNoCall(I)V
    .locals 3
    .parameter "sim_id"

    .prologue
    .line 1453
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1454
    .local v0, callState:Lcom/android/internal/telephony/Call$State;
    sget-object v1, Lcom/android/stk/StkAppService$8;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1460
    const-string v1, "Stk-SAS "

    const-string v2, "Call Abnormal No Call Response"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processAbnormalNoCallResponse(I)V

    .line 1464
    :goto_0
    return-void

    .line 1457
    :pswitch_0
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {p0, v1, p1}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V

    goto :goto_0

    .line 1454
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private processNormalEndCallResponse(I)V
    .locals 2
    .parameter "sim_id"

    .prologue
    .line 1255
    const-string v0, "Stk-SAS "

    const-string v1, "END CALL PROCESS"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalResponse(I)V

    .line 1257
    return-void
.end method

.method private processNormalHoldCallResponse(I)V
    .locals 2
    .parameter "sim_id"

    .prologue
    .line 1260
    const-string v0, "Stk-SAS "

    const-string v1, "HOLD CALL PROCESS"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalResponse(I)V

    .line 1262
    return-void
.end method

.method private processNormalOpenChannelResponse(I)V
    .locals 5
    .parameter "sim_id"

    .prologue
    .line 1221
    const-string v2, "Stk-SAS "

    const-string v3, "Normal OpenChannel Response PROCESS Start"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    .line 1224
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v2, :cond_0

    .line 1225
    const-string v2, "Stk-SAS "

    const-string v3, "Normal OpenChannel Response PROCESS mCurrentCmd changed to null!"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    :goto_0
    return-void

    .line 1229
    :cond_0
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v1

    .line 1230
    .local v1, txtMsg:Lcom/android/internal/telephony/cat/TextMessage;
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1231
    const-string v2, "Stk-SAS "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Normal OpenChannel Response PROCESS end! cmdName["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1234
    .local v0, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1235
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    .line 1236
    invoke-direct {p0, v1, p1}, Lcom/android/stk/StkAppService;->displayAlphaIcon(Lcom/android/internal/telephony/cat/TextMessage;I)V

    .line 1237
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v2, v2, p1

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0
.end method

.method private processNormalResponse(I)V
    .locals 5
    .parameter "sim_id"

    .prologue
    const/4 v4, 0x0

    .line 1145
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Normal Response PROCESS Start, sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    iput-boolean v4, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    .line 1147
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-boolean v1, v1, Lcom/android/stk/StkAppService$StkContext;->mSetupCallInProcess:Z

    if-nez v1, :cond_0

    .line 1163
    :goto_0
    return-void

    .line 1150
    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iput-boolean v4, v1, Lcom/android/stk/StkAppService$StkContext;->mSetupCallInProcess:Z

    .line 1151
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_1

    .line 1152
    const-string v1, "Stk-SAS "

    const-string v2, "Normal Response PROCESS mCurrentCmd changed to null!"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1155
    :cond_1
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1156
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Normal Response PROCESS end! cmdName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1159
    .local v0, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1160
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    .line 1161
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->launchCallMsg(I)V

    .line 1162
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v1, v1, p1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0
.end method

.method private processOpenChannel(I)V
    .locals 5
    .parameter "sim_id"

    .prologue
    .line 1078
    const-string v2, "Stk-SAS "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processOpenChannel()+ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1081
    .local v0, callState:Lcom/android/internal/telephony/Call$State;
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v1

    .line 1083
    .local v1, txtMsg:Lcom/android/internal/telephony/cat/TextMessage;
    sget-object v2, Lcom/android/stk/StkAppService$8;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1097
    const-string v2, "Stk-SAS "

    const-string v3, "processOpenChannel() Abnormal OpenChannel Response"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processAbnormalOpenChannelResponse(I)V

    .line 1102
    :goto_0
    const-string v2, "Stk-SAS "

    const-string v3, "processOpenChannel()-"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    return-void

    .line 1086
    :pswitch_0
    iget-object v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1088
    invoke-direct {p0, v1, p1}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V

    goto :goto_0

    .line 1092
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalOpenChannelResponse(I)V

    goto :goto_0

    .line 1083
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private processOpenChannelResponse(I)V
    .locals 4
    .parameter "sim_id"

    .prologue
    .line 1107
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processOpenChannelResponse()+ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    const/4 v0, 0x0

    .line 1109
    .local v0, iChannelType:I
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    if-nez v1, :cond_0

    .line 1110
    const/4 v0, 0x2

    .line 1114
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1136
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processOpenChannelResponse() Error channel type["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processAbnormalOpenChannelResponse(I)V

    .line 1140
    :goto_1
    const-string v1, "Stk-SAS "

    const-string v2, "processOpenChannelResponse()-"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    return-void

    .line 1112
    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v0, v1, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    goto :goto_0

    .line 1116
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalOpenChannelResponse(I)V

    goto :goto_1

    .line 1120
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalOpenChannelResponse(I)V

    goto :goto_1

    .line 1124
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalOpenChannelResponse(I)V

    goto :goto_1

    .line 1128
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalOpenChannelResponse(I)V

    goto :goto_1

    .line 1132
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalOpenChannelResponse(I)V

    goto :goto_1

    .line 1114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private processPhoneStateChanged(I)V
    .locals 8
    .parameter "sim_id"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 1275
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " PHONE_STATE_CHANGED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-boolean v3, v3, Lcom/android/stk/StkAppService$StkContext;->mSetupCallInProcess:Z

    if-nez v3, :cond_1

    .line 1277
    const-string v3, "Stk-SAS "

    const-string v4, " PHONE_STATE_CHANGED: setup in process is false"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    :cond_0
    :goto_0
    return-void

    .line 1280
    :cond_1
    const-string v3, "Stk-SAS "

    const-string v4, " PHONE_STATE_CHANGED: setup in process is true"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v3, :cond_0

    .line 1284
    sget-object v3, Lcom/android/stk/StkAppService$8;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1286
    :pswitch_0
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v0

    .line 1291
    .local v0, cmdQualifier:I
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getForegroundCallGemini(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1295
    .local v1, fg:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_0

    .line 1296
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1297
    .local v2, state:Lcom/android/internal/telephony/Call$State;
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " PHONE_STATE_CHANGED to : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    sget-object v3, Lcom/android/stk/StkAppService$8;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 1305
    :pswitch_2
    if-eq v0, v6, :cond_2

    if-ne v0, v7, :cond_4

    .line 1308
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalHoldCallResponse(I)V

    goto :goto_0

    .line 1300
    :pswitch_3
    if-eq v0, v6, :cond_3

    if-ne v0, v7, :cond_0

    .line 1301
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalHoldCallResponse(I)V

    goto :goto_0

    .line 1309
    :cond_4
    const/4 v3, 0x4

    if-eq v0, v3, :cond_5

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    .line 1311
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalEndCallResponse(I)V

    goto :goto_0

    .line 1284
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch

    .line 1298
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private processSetupCall(I)V
    .locals 7
    .parameter "sim_id"

    .prologue
    .line 1482
    const-string v4, "Stk-SAS "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processSetupCall, sim id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    const/4 v1, 0x0

    .line 1484
    .local v1, i:I
    const/4 v3, 0x1

    .line 1485
    .local v3, state_idle:Z
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    .line 1486
    .local v2, isDualTalkMode:Z
    const-string v4, "Stk-SAS "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDualTalkMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    if-nez v2, :cond_3

    .line 1489
    const/4 v1, 0x0

    :goto_0
    sget v4, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge v1, v4, :cond_0

    .line 1491
    if-eq v1, p1, :cond_2

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v1}, Lcom/android/stk/StkAppService;->isPhoneIdle(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    if-eq v4, v5, :cond_2

    .line 1493
    const/4 v3, 0x0

    .line 1494
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processAbnormalPhone2BusyResponse(I)V

    .line 1495
    const-string v4, "Stk-SAS "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The other sim is not idle, sim id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 1506
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p1

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/stk/StkAppService$StkContext;->mSetupCallInProcess:Z

    .line 1507
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v0

    .line 1508
    .local v0, cmdQualifier:I
    const-string v4, "Stk-SAS "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Qualifier code is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    packed-switch v0, :pswitch_data_0

    .line 1524
    .end local v0           #cmdQualifier:I
    :cond_1
    :goto_2
    return-void

    .line 1489
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1502
    :cond_3
    const-string v4, "Stk-SAS "

    const-string v5, "This is dual talk mode"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1512
    .restart local v0       #cmdQualifier:I
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNoCall(I)V

    goto :goto_2

    .line 1516
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processHoldCall(I)V

    goto :goto_2

    .line 1520
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processEndCall(I)V

    goto :goto_2

    .line 1509
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private processSetupCallResponse(I)V
    .locals 4
    .parameter "sim_id"

    .prologue
    .line 1613
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processSetupCallResponse(), sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v0

    .line 1615
    .local v0, cmdQualifier:I
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processSetupCallResponse() - cmdQualifier["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    packed-switch v0, :pswitch_data_0

    .line 1632
    :goto_0
    return-void

    .line 1621
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalResponse(I)V

    goto :goto_0

    .line 1625
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processHoldCallResponse(I)V

    goto :goto_0

    .line 1629
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processEndCallResponse(I)V

    goto :goto_0

    .line 1617
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private processSuppServiceFailed(Landroid/os/AsyncResult;I)V
    .locals 4
    .parameter "r"
    .parameter "sim_id"

    .prologue
    .line 1322
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone$SuppService;

    .line 1323
    .local v0, service:Lcom/android/internal/telephony/Phone$SuppService;
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSuppServiceFailed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    sget-object v1, Lcom/android/stk/StkAppService$8;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1334
    :goto_0
    return-void

    .line 1330
    :pswitch_0
    const-string v1, "Stk-SAS "

    const-string v2, "Switch failed"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->processAbnormalHoldCallResponse(I)V

    goto :goto_0

    .line 1326
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private registerStkReceiver()V
    .locals 2

    .prologue
    .line 2534
    const-string v0, "Stk-SAS "

    const-string v1, "registerStkReceiver()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2536
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkIdleScreenAvailableReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mIdleScreenAvailableFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/stk/StkAppService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2537
    return-void
.end method

.method private removeMenu(I)Z
    .locals 5
    .parameter "sim_id"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2424
    :try_start_0
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_0

    .line 2432
    :goto_0
    return v1

    .line 2428
    :catch_0
    move-exception v0

    .line 2429
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "Stk-SAS "

    const-string v3, "Unable to get Menu\'s items size"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    move v1, v2

    .line 2432
    goto :goto_0
.end method

.method private sendOkMessage(I)V
    .locals 2
    .parameter "sim_id"

    .prologue
    .line 2142
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2143
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2144
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 2145
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2146
    return-void
.end method

.method private showIconAndTextToast(Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 2300
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 2301
    .local v0, t:Landroid/widget/Toast;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2302
    .local v1, v:Landroid/widget/ImageView;
    iget-object v2, p1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2303
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2304
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 2305
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2306
    return-void
.end method

.method private showIconToast(Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 2281
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 2282
    .local v0, t:Landroid/widget/Toast;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2283
    .local v1, v:Landroid/widget/ImageView;
    iget-object v2, p1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2284
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2285
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 2286
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2287
    return-void
.end method

.method private showTextToast(Lcom/android/internal/telephony/cat/TextMessage;I)V
    .locals 5
    .parameter "msg"
    .parameter "sim_id"

    .prologue
    const/4 v4, 0x0

    .line 2290
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p2

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 2292
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2294
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x50

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 2295
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2296
    return-void
.end method

.method private unregisterStkReceiver()V
    .locals 2

    .prologue
    .line 2540
    const-string v0, "Stk-SAS "

    const-string v1, "unregisterStkReceiver()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2542
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkIdleScreenAvailableReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2543
    return-void
.end method

.method private updateAppName(Ljava/lang/String;)V
    .locals 2
    .parameter "appName"

    .prologue
    .line 2664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set menu title in SystemProperties to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2665
    const-string v0, "gsm.setupmenu.title"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    return-void
.end method

.method private waitForLooper()V
    .locals 2

    .prologue
    .line 532
    :goto_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    if-nez v0, :cond_2

    .line 533
    iget-object v0, p0, Lcom/android/stk/StkAppService;->serviceThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkAppService;->serviceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 534
    :cond_0
    const-string v0, "Stk-SAS "

    const-string v1, "do re-init"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->init()V

    .line 537
    :cond_1
    monitor-enter p0

    .line 539
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 540
    :catch_0
    move-exception v0

    goto :goto_1

    .line 544
    :cond_2
    return-void
.end method


# virtual methods
.method public StkAvailable(II)V
    .locals 3
    .parameter "sim_id"
    .parameter "available"

    .prologue
    .line 2750
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 2752
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iput p2, v0, Lcom/android/stk/StkAppService$StkContext;->mAvailable:I

    .line 2754
    :cond_0
    const-string v1, "Stk-SAS "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sim_id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", available: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", StkAvailable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/stk/StkAppService$StkContext;->mAvailable:I

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2755
    return-void

    .line 2754
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public StkQueryAvailable(I)I
    .locals 4
    .parameter "sim_id"

    .prologue
    .line 2759
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget v0, v1, Lcom/android/stk/StkAppService$StkContext;->mAvailable:I

    .line 2761
    .local v0, result:I
    :goto_0
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim_id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", StkQueryAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2762
    return v0

    .line 2759
    .end local v0           #result:I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getMenu(I)Lcom/android/internal/telephony/cat/Menu;
    .locals 3
    .parameter "sim_id"

    .prologue
    .line 499
    const-string v0, "Stk-SAS "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StkAppService, getMenu, sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    if-ltz p1, :cond_0

    sget v0, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge p1, v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 503
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveEndSession(I)Z
    .locals 5
    .parameter "sim_id"

    .prologue
    const/4 v2, 0x0

    .line 2467
    const-string v1, "Stk-SAS "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "haveEndSession, query by sim id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2468
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 2477
    :goto_0
    return v1

    .line 2470
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2472
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/stk/StkAppService$DelayedCmd;

    iget v1, v1, Lcom/android/stk/StkAppService$DelayedCmd;->id:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/stk/StkAppService$DelayedCmd;

    iget v1, v1, Lcom/android/stk/StkAppService$DelayedCmd;->sim_id:I

    if-ne v1, p1, :cond_1

    .line 2473
    const-string v1, "Stk-SAS "

    const-string v2, "end Session a delay Message"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2474
    const/4 v1, 0x1

    goto :goto_0

    .line 2470
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 2477
    goto :goto_0
.end method

.method indicateDialogVisibility(ZI)V
    .locals 1
    .parameter "visibility"
    .parameter "sim_id"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p2

    iput-boolean p1, v0, Lcom/android/stk/StkAppService$StkContext;->mDialogIsVisible:Z

    .line 493
    return-void
.end method

.method indicateInputVisibility(ZI)V
    .locals 1
    .parameter "visibility"
    .parameter "sim_id"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p2

    iput-boolean p1, v0, Lcom/android/stk/StkAppService$StkContext;->mInputIsVisible:Z

    .line 486
    return-void
.end method

.method indicateMenuVisibility(ZI)V
    .locals 1
    .parameter "visibility"
    .parameter "sim_id"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p2

    iput-boolean p1, v0, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    .line 479
    return-void
.end method

.method public initNotify()V
    .locals 4

    .prologue
    .line 347
    const/4 v1, 0x0

    .line 348
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge v1, v2, :cond_0

    .line 349
    sget-object v2, Lcom/android/stk/StkApp;->mPLMN:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->getDefaultPlmn()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 351
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    new-instance v2, Lcom/android/stk/StkAppService$1;

    invoke-direct {v2, p0}, Lcom/android/stk/StkAppService$1;-><init>(Lcom/android/stk/StkAppService;)V

    invoke-virtual {p0, v2, v0}, Lcom/android/stk/StkAppService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 362
    return-void
.end method

.method public isBrowserLaunched(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    .line 2108
    const-string v5, "Stk-SAS "

    const-string v6, "[isBrowserLaunched]+"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2109
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2111
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v4, 0x0

    .line 2112
    .local v4, top:Z
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 2113
    .local v3, runningAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_1

    .line 2114
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2115
    .local v1, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sget-object v6, Lcom/android/stk/StkAppService;->BROWSER_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_0

    .line 2116
    const/4 v4, 0x1

    .line 2122
    .end local v1           #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    const-string v5, "Stk-SAS "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[isBrowserLaunched][top] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    const-string v5, "Stk-SAS "

    const-string v6, "[isBrowserLaunched]-"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    return v4
.end method

.method isCurCmdSetupCall(I)Z
    .locals 4
    .parameter "sim_id"

    .prologue
    const/4 v0, 0x0

    .line 507
    if-ltz p1, :cond_0

    sget v1, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-lt p1, v1, :cond_2

    .line 508
    :cond_0
    const-string v1, "Stk-SAS "

    const-string v2, "[isCurCmdSetupCall] sim id is out of range"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_1
    :goto_0
    return v0

    .line 511
    :cond_2
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_3

    .line 512
    const-string v1, "Stk-SAS "

    const-string v2, "[isCurCmdSetupCall][mCurrentCmd]:null"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 514
    :cond_3
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    if-nez v1, :cond_4

    .line 515
    const-string v1, "Stk-SAS "

    const-string v2, "[isCurCmdSetupCall][mCurrentCmd.getCmdType()]:null"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :cond_4
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SET UP CALL Cmd Check["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v1

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isIdleScreen()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 2033
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2034
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v8, 0x10

    invoke-virtual {v0, v8, v10}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v7

    .line 2036
    .local v7, taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v2, 0x0

    .line 2037
    .local v2, home:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 2038
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 2039
    .local v6, task:Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v8, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    const-string v9, "android.intent.category.HOME"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v8

    if-ne v10, v8, :cond_0

    .line 2040
    iget-object v8, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2046
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #task:Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    const/4 v4, 0x0

    .line 2047
    .local v4, idle:Z
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 2048
    .local v5, runningAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v5, :cond_3

    .line 2049
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2050
    .local v1, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v9, 0x64

    if-ne v8, v9, :cond_2

    .line 2051
    const/4 v4, 0x1

    .line 2057
    .end local v1           #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    const-string v8, "Stk-SAS "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[isIdleScreen][idle] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    return v4
.end method

.method public isIdleScreen(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x1

    .line 2063
    const/4 v4, 0x0

    .line 2064
    .local v4, homePackage:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2065
    .local v5, homeProcess:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2067
    .local v7, idle:Z
    const-string v11, "activity"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2068
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v11, 0x10

    invoke-virtual {v0, v11, v13}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v10

    .line 2070
    .local v10, taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v10, :cond_1

    .line 2071
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 2072
    .local v9, task:Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v11, v9, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    const-string v12, "android.intent.category.HOME"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v11

    if-ne v13, v11, :cond_0

    .line 2073
    iget-object v11, v9, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2078
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #task:Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    const-string v11, "Stk-SAS "

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[isIdleScreen] homePackage is: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v4, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 2083
    .local v2, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2090
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    const-string v11, "Stk-SAS "

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "home package = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", home process = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    .line 2093
    .local v8, runningAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2094
    .local v1, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v12, 0x64

    if-ne v11, v12, :cond_2

    .line 2096
    const/4 v7, 0x1

    .line 2101
    .end local v1           #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    const-string v11, "Stk-SAS "

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[isIdleScreen][idle] : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2102
    return v7

    .line 2084
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #runningAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v3

    .line 2085
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "Stk-SAS "

    const-string v12, "[isIdleScreen] NameNotFoundException"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 462
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 284
    const-string v4, " StkAppService Oncreate"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    const-string v4, "Stk-SAS "

    const-string v5, " onCreate()+"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v1, 0x0

    .line 288
    .local v1, i:I
    const/4 v3, 0x0

    .line 289
    .local v3, sim_id:I
    const/4 v1, 0x0

    :goto_0
    sget v4, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge v1, v4, :cond_0

    .line 291
    packed-switch v1, :pswitch_data_0

    .line 299
    :goto_1
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v5

    aput-object v5, v4, v1

    .line 301
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    new-instance v5, Lcom/android/stk/StkAppService$StkContext;

    invoke-direct {v5, p0}, Lcom/android/stk/StkAppService$StkContext;-><init>(Lcom/android/stk/StkAppService;)V

    aput-object v5, v4, v1

    .line 302
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, v1

    const/4 v5, -0x1

    iput v5, v4, Lcom/android/stk/StkAppService$StkContext;->mAvailable:I

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :pswitch_0
    const/4 v3, 0x1

    .line 295
    goto :goto_1

    .line 304
    :cond_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    .line 305
    new-instance v4, Ljava/lang/Thread;

    const/4 v5, 0x0

    const-string v6, "Stk App Service"

    invoke-direct {v4, v5, p0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/stk/StkAppService;->serviceThread:Ljava/lang/Thread;

    .line 306
    iget-object v4, p0, Lcom/android/stk/StkAppService;->serviceThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 307
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 308
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 310
    sput-object p0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    .line 312
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->initNotify()V

    .line 314
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 315
    .local v2, mSIMStateChangeFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v4, "android.intent.aciton.stk.REMOVE_IDLE_TEXT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/android/stk/StkAppService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 319
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.aciton.stk.REMOVE_IDLE_TEXT_2"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, SIMS2RemoveIdleTextFilter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mSIM2StateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/android/stk/StkAppService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 321
    const-string v4, "Stk-SAS "

    const-string v5, " onCreate()-"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void

    .line 291
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 453
    const-string v0, "Stk-SAS "

    const-string v1, " onDestroy()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 455
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mSIM2StateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 456
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    .line 457
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 458
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 11
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/16 v10, 0x66

    const/16 v9, 0x65

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 367
    if-nez p1, :cond_0

    .line 368
    const-string v4, "StkAppService onStart intent is null so return"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    :goto_0
    return-void

    .line 372
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 373
    .local v0, args:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 374
    const-string v4, "StkAppService onStart args is null so return"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_1
    const-string v4, "op"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 379
    .local v2, op:[I
    if-nez v2, :cond_2

    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StkAppService onStart op is null  return. args: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_2
    aget v3, v2, v5

    .line 385
    .local v3, sim_id:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StkAppService onStart sim id: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", op: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v7, v2, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    if-ltz v3, :cond_3

    sget v4, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v4, v4, v3

    if-nez v4, :cond_3

    .line 388
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v7

    aput-object v7, v4, v3

    .line 389
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v4, v4, v3

    if-nez v4, :cond_3

    .line 390
    const-string v4, "StkAppService onStart mStkService is null  return, please check op code. Make sure it did not come from CatService"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    :cond_3
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v4, :cond_4

    .line 395
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 398
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StkAppService onStart mPhone: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_6

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", mPhoneStateChangeReg: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v7, Lcom/android/stk/StkAppService;->mPhoneStateChangeReg:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_5

    sget-boolean v4, Lcom/android/stk/StkAppService;->mPhoneStateChangeReg:Z

    if-nez v4, :cond_5

    .line 403
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v7, p0, Lcom/android/stk/StkAppService;->mCallHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7, v9, v8, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForPreciseCallStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 405
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v7, p0, Lcom/android/stk/StkAppService;->mCallHandler2:Landroid/os/Handler;

    invoke-virtual {v4, v7, v9, v8, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForPreciseCallStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 407
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v7, p0, Lcom/android/stk/StkAppService;->mCallHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7, v10, v8, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForSuppServiceFailedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 408
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v7, p0, Lcom/android/stk/StkAppService;->mCallHandler2:Landroid/os/Handler;

    invoke-virtual {v4, v7, v10, v8, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForSuppServiceFailedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 409
    sput-boolean v5, Lcom/android/stk/StkAppService;->mPhoneStateChangeReg:Z

    .line 422
    :cond_5
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    .line 426
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v4}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 428
    .local v1, msg:Landroid/os/Message;
    aget v4, v2, v6

    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 429
    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 430
    iget v4, v1, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 432
    :pswitch_1
    const-string v4, "cmd message"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 448
    :goto_2
    :pswitch_2
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v4, v1}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v1           #msg:Landroid/os/Message;
    :cond_6
    move v4, v6

    .line 398
    goto :goto_1

    .line 435
    .restart local v1       #msg:Landroid/os/Message;
    :pswitch_3
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_2

    .line 438
    :pswitch_4
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_2

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public run()V
    .locals 2

    .prologue
    .line 466
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 468
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mServiceLooper:Landroid/os/Looper;

    .line 469
    new-instance v0, Lcom/android/stk/StkAppService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/stk/StkAppService$ServiceHandler;-><init>(Lcom/android/stk/StkAppService;Lcom/android/stk/StkAppService$1;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    .line 471
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 472
    return-void
.end method

.method public sendMessageToServiceHandler(ILjava/lang/Object;I)V
    .locals 4
    .parameter "opCode"
    .parameter "obj"
    .parameter "sim_id"

    .prologue
    .line 2726
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call sendMessageToServiceHandler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->opCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2727
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    if-nez v1, :cond_0

    .line 2728
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    .line 2730
    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p3, p2}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2731
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2732
    return-void
.end method

.method public setUserAccessState(ZI)V
    .locals 3
    .parameter "state"
    .parameter "sim_id"

    .prologue
    .line 2684
    const-string v0, "Stk-SAS "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserAccessState: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sim id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2685
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p2

    iput-boolean p1, v0, Lcom/android/stk/StkAppService$StkContext;->isUserAccessed:Z

    .line 2686
    return-void
.end method
