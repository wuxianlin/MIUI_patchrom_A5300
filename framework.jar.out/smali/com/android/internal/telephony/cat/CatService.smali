.class public Lcom/android/internal/telephony/cat/CatService;
.super Landroid/os/Handler;
.source "CatService.java"

# interfaces
.implements Lcom/android/internal/telephony/cat/AppInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CatService$4;
    }
.end annotation


# static fields
.field public static final ACTION_CAT_INIT_DONE:Ljava/lang/String; = "android.intent.action.ACTION_CAT_INIT_DONE"

.field static final ACTION_PREBOOT_IPO:Ljava/lang/String; = "android.intent.action.ACTION_PREBOOT_IPO"

.field static final ACTION_SHUTDOWN_IPO:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field static final ADDITIONAL_INFO_FOR_BIP_CHANNEL_CLOSED:I = 0x2

.field static final ADDITIONAL_INFO_FOR_BIP_CHANNEL_ID_NOT_AVAILABLE:I = 0x3

.field static final ADDITIONAL_INFO_FOR_BIP_NO_CHANNEL_AVAILABLE:I = 0x1

.field static final ADDITIONAL_INFO_FOR_BIP_NO_SPECIFIC_CAUSE:I = 0x0

.field static final ADDITIONAL_INFO_FOR_BIP_REQUESTED_BUFFER_SIZE_NOT_AVAILABLE:I = 0x4

.field static final ADDITIONAL_INFO_FOR_BIP_REQUESTED_INTERFACE_TRANSPORT_LEVEL_NOT_AVAILABLE:I = 0x6

.field static final ADDITIONAL_INFO_FOR_BIP_SECURITY_ERROR:I = 0x5

.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_EARPIECE:I = 0x3

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field static final EVENT_LIST_ELEMENT_BROWSER_TERMINATION:I = 0x8

.field static final EVENT_LIST_ELEMENT_CALL_CONNECTED:I = 0x1

.field static final EVENT_LIST_ELEMENT_CALL_DISCONNECTED:I = 0x2

.field static final EVENT_LIST_ELEMENT_CARD_READER_STATUS:I = 0x6

.field static final EVENT_LIST_ELEMENT_CHANNEL_STATUS:I = 0xa

.field static final EVENT_LIST_ELEMENT_DATA_AVAILABLE:I = 0x9

.field static final EVENT_LIST_ELEMENT_IDLE_SCREEN_AVAILABLE:I = 0x5

.field static final EVENT_LIST_ELEMENT_LANGUAGE_SELECTION:I = 0x7

.field static final EVENT_LIST_ELEMENT_LOCATION_STATUS:I = 0x3

.field static final EVENT_LIST_ELEMENT_MT_CALL:I = 0x0

.field static final EVENT_LIST_ELEMENT_USER_ACTIVITY:I = 0x4

.field public static final GEMINI_SIM_1:I = 0x0

.field public static final GEMINI_SIM_2:I = 0x1

.field static final IDLE_SCREEN_ENABLE_KEY:Ljava/lang/String; = "_enable"

.field static final IDLE_SCREEN_INTENT_NAME:Ljava/lang/String; = "android.intent.action.IDLE_SCREEN_NEEDED"

.field static final MSG_ID_CALL_SETUP:I = 0x4

.field static final MSG_ID_CLOSE_CHANNEL_DONE:I = 0x21

.field static final MSG_ID_CONN_MGR_TIMEOUT:I = 0x23

.field static final MSG_ID_DB_HANDLER:I = 0xb

.field static final MSG_ID_EVENT_DOWNLOAD:I = 0x8

.field static final MSG_ID_EVENT_NOTIFY:I = 0x3

.field static final MSG_ID_GET_CHANNEL_STATUS_DONE:I = 0x22

.field private static final MSG_ID_ICC_RECORDS_LOADED:I = 0x14

.field private static final MSG_ID_IVSR_DELAYED:I = 0xe

.field static final MSG_ID_OPEN_CHANNEL_DONE:I = 0x1e

.field static final MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field static final MSG_ID_RECEIVE_DATA_DONE:I = 0x20

.field static final MSG_ID_REFRESH:I = 0x5

.field static final MSG_ID_RESPONSE:I = 0x6

.field static final MSG_ID_RIL_MSG_DECODED:I = 0xa

.field static final MSG_ID_SEND_DATA_DONE:I = 0x1f

.field static final MSG_ID_SESSION_END:I = 0x1

.field static final MSG_ID_SIM_READY:I = 0x7

.field static final STK_DEFAULT:Ljava/lang/String; = "Defualt Message"

.field static final USER_ACTIVITY_ENABLE_KEY:Ljava/lang/String; = "state"

.field static final USER_ACTIVITY_INTENT_NAME:Ljava/lang/String; = "android.intent.action.stk.USER_ACTIVITY.enable"

.field private static db:Lcom/android/internal/telephony/cat/DBHelper;

.field private static mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field private static mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

.field private static sInst1:Ljava/lang/String;

.field private static sInst2:Ljava/lang/String;

.field private static final sInstanceLock:Ljava/lang/Object;

.field private static sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

.field private static sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;


# instance fields
.field private CatServiceReceiver:Landroid/content/BroadcastReceiver;

.field private final IVSR_DELAYED_TIME:I

.field private ResultCodeFlag:I

.field private default_send_setupmenu_tr:Z

.field private isIvsrBootUp:Z

.field mBipMgr:Lcom/android/internal/telephony/cat/BipManager;

.field private mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mEventList:[B

.field public mGotSetUpMenu:Z

.field private mHasCachedDTCmd:Z

.field private mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field mNeedRegisterAgain:Z

.field private mPowerOnSequenceObserver:Landroid/database/ContentObserver;

.field public mSaveNewSetUpMenu:Z

.field private mSetUpMenuFromMD:Z

.field private mSimId:I

.field private final mStkIdleScreenAvailableReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private simIdfromIntent:I

.field private simState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    .line 176
    const-string/jumbo v0, "sInstanceSim1"

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInst1:Ljava/lang/String;

    .line 177
    const-string/jumbo v0, "sInstanceSim2"

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInst2:Ljava/lang/String;

    .line 178
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->db:Lcom/android/internal/telephony/cat/DBHelper;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/UiccCardApplication;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/UiccCard;I)V
    .locals 7
    .parameter "phone"
    .parameter "ci"
    .parameter "ca"
    .parameter "ir"
    .parameter "context"
    .parameter "fh"
    .parameter "ic"
    .parameter "simId"

    .prologue
    .line 277
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 140
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 141
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 143
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 179
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->default_send_setupmenu_tr:Z

    .line 180
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mGotSetUpMenu:Z

    .line 181
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    .line 182
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    .line 186
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    .line 230
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/BipManager;

    .line 233
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->ResultCodeFlag:I

    .line 234
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    .line 235
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->simIdfromIntent:I

    .line 237
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 238
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    .line 241
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->isIvsrBootUp:Z

    .line 242
    const v4, 0xea60

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->IVSR_DELAYED_TIME:I

    .line 245
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 247
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mNeedRegisterAgain:Z

    .line 249
    new-instance v4, Lcom/android/internal/telephony/cat/CatService$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cat/CatService$1;-><init>(Lcom/android/internal/telephony/cat/CatService;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mStkIdleScreenAvailableReceiver:Landroid/content/BroadcastReceiver;

    .line 1742
    new-instance v4, Lcom/android/internal/telephony/cat/CatService$2;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cat/CatService$2;-><init>(Lcom/android/internal/telephony/cat/CatService;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->CatServiceReceiver:Landroid/content/BroadcastReceiver;

    .line 1871
    new-instance v4, Lcom/android/internal/telephony/cat/CatService$3;

    invoke-direct {v4, p0, p0}, Lcom/android/internal/telephony/cat/CatService$3;-><init>(Lcom/android/internal/telephony/cat/CatService;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mPowerOnSequenceObserver:Landroid/database/ContentObserver;

    .line 278
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-nez p7, :cond_1

    .line 280
    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Service: Input parameters must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 283
    :cond_1
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 284
    iput-object p5, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    .line 285
    iput p8, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "simId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    invoke-static {p0, p6, p8}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;I)Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 293
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 294
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 295
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 296
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 299
    sput-object p4, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 300
    sput-object p3, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 303
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 304
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForRUIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 305
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForNVReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 306
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 310
    const-string v4, "Get BipManager"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    invoke-static {p5, p1, p0, p8}, Lcom/android/internal/telephony/cat/BipManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cat/CatService;I)Lcom/android/internal/telephony/cat/BipManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/BipManager;

    .line 312
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.IVSR_NOTIFY"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 318
    .local v3, mSIMStateChangeFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->CatServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 320
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->CatServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 321
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.stk.IDLE_SCREEN_AVAILABLE"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 322
    .local v2, mIdleScreenAvailableFilter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mStkIdleScreenAvailableReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 323
    new-instance v4, Lcom/android/internal/telephony/cat/DBHelper;

    invoke-direct {v4, p5}, Lcom/android/internal/telephony/cat/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/internal/telephony/cat/CatService;->db:Lcom/android/internal/telephony/cat/DBHelper;

    .line 324
    const-string v4, "CatService: is running"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    const-string v4, "[CachedStk notify RIL to send cached command"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_CAT_INIT_DONE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v1, intentForCachedCommand:Landroid/content/Intent;
    const-string/jumbo v4, "simId"

    iget v5, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 334
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->registerPowerOnSequenceObserver()V

    .line 336
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_2

    .line 338
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mTelephonyManager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    :cond_2
    return-void

    .line 339
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/cat/CatService;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cat/CatService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/cat/CatService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->checkSetupWizardInstalled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->sendCatCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cat/CatService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->isIvsrBootUp:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/cat/CatService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatService;->isIvsrBootUp:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cat/CatService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cat/CatService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->simIdfromIntent:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/cat/CatService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput p1, p0, Lcom/android/internal/telephony/cat/CatService;->simIdfromIntent:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cat/CatService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cat/CatService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 128
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/cat/CatService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->unregisterPowerOnSequenceObserver()V

    return-void
.end method

.method private checkSetupWizardInstalled()Z
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1835
    const-string v3, "com.google.android.setupwizard"

    .line 1836
    .local v3, packageName:Ljava/lang/String;
    const-string v0, "com.google.android.setupwizard.SetupWizardActivity"

    .line 1838
    .local v0, activityName:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1839
    .local v5, pm:Landroid/content/pm/PackageManager;
    if-nez v5, :cond_0

    .line 1840
    const-string v7, "fail to get PM"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1868
    :goto_0
    return v6

    .line 1845
    :cond_0
    const/4 v2, 0x1

    .line 1847
    .local v2, isPkgInstalled:Z
    :try_start_0
    const-string v8, "com.google.android.setupwizard"

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1853
    :goto_1
    if-ne v2, v7, :cond_3

    .line 1854
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.google.android.setupwizard"

    const-string v10, "com.google.android.setupwizard.SetupWizardActivity"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    .line 1856
    .local v4, pkgEnabledState:I
    if-eq v4, v7, :cond_1

    if-nez v4, :cond_2

    .line 1858
    :cond_1
    const-string/jumbo v6, "should not show DISPLAY_TEXT immediately"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v6, v7

    .line 1859
    goto :goto_0

    .line 1848
    .end local v4           #pkgEnabledState:I
    :catch_0
    move-exception v1

    .line 1849
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v8, "fail to get SetupWizard package"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1850
    const/4 v2, 0x0

    goto :goto_1

    .line 1863
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v4       #pkgEnabledState:I
    :cond_2
    const-string v7, "Setup Wizard Activity is not activate"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1867
    .end local v4           #pkgEnabledState:I
    :cond_3
    const-string v7, "isPkgInstalled = false"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "cmdInput"
    .parameter "buf"

    .prologue
    .line 893
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    .line 894
    .local v0, cmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-eqz v0, :cond_1

    .line 895
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$4;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 913
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeOptionalTags() Unsupported Cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 901
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p3, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    if-eqz v1, :cond_0

    .line 903
    invoke-direct {p0, p4, p3}, Lcom/android/internal/telephony/cat/CatService;->getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V

    goto :goto_0

    .line 907
    :sswitch_1
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 909
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/cat/CatService;->getPliResponse(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_0

    .line 917
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeOptionalTags() bad Cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 895
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method private eventDownload(III[BZ)V
    .locals 14
    .parameter "event"
    .parameter "sourceId"
    .parameter "destinationId"
    .parameter "additionalInfo"
    .parameter "oneShot"

    .prologue
    .line 994
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 996
    .local v3, buf:Ljava/io/ByteArrayOutputStream;
    iget-object v12, p0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    array-length v12, v12

    if-nez v12, :cond_1

    .line 1075
    :cond_0
    :goto_0
    return-void

    .line 1001
    :cond_1
    const/4 v6, 0x0

    .local v6, index:I
    :cond_2
    iget-object v12, p0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    array-length v12, v12

    if-ge v6, v12, :cond_4

    .line 1002
    iget-object v12, p0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    aget-byte v12, v12, v6

    if-ne v12, p1, :cond_6

    .line 1004
    const/4 v12, 0x5

    if-ne p1, v12, :cond_5

    .line 1005
    const-string v12, "SS-eventDownload: event is IDLE_SCREEN_AVAILABLE"

    invoke-static {p0, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1006
    const-string v12, "SS-eventDownload: sent intent with idle = false"

    invoke-static {p0, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1007
    new-instance v7, Landroid/content/Intent;

    const-string v12, "android.intent.action.IDLE_SCREEN_NEEDED"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1008
    .local v7, intent:Landroid/content/Intent;
    const-string v12, "_enable"

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1009
    iget-object v12, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1026
    .end local v7           #intent:Landroid/content/Intent;
    :cond_3
    :goto_1
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v12, v0, :cond_4

    .line 1027
    iget-object v12, p0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    const/4 v13, 0x0

    aput-byte v13, v12, v6

    .line 1040
    :cond_4
    const/16 v11, 0xd6

    .line 1041
    .local v11, tag:I
    invoke-virtual {v3, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1044
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1047
    sget-object v12, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v12}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v12

    or-int/lit16 v11, v12, 0x80

    .line 1048
    invoke-virtual {v3, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1049
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1050
    invoke-virtual {v3, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1053
    sget-object v12, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v12}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v12

    or-int/lit16 v11, v12, 0x80

    .line 1054
    invoke-virtual {v3, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1055
    const/4 v12, 0x2

    invoke-virtual {v3, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1056
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1057
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1060
    if-eqz p4, :cond_7

    .line 1061
    move-object/from16 v1, p4

    .local v1, arr$:[B
    array-length v9, v1

    .local v9, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2
    if-ge v5, v9, :cond_7

    aget-byte v2, v1, v5

    .line 1062
    .local v2, b:B
    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1061
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1019
    .end local v1           #arr$:[B
    .end local v2           #b:B
    .end local v5           #i$:I
    .end local v9           #len$:I
    .end local v11           #tag:I
    :cond_5
    const/4 v12, 0x4

    if-ne p1, v12, :cond_3

    .line 1020
    const-string v12, "SS-eventDownload: event is USER_ACTIVITY"

    invoke-static {p0, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v7, Landroid/content/Intent;

    const-string v12, "android.intent.action.stk.USER_ACTIVITY.enable"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1022
    .restart local v7       #intent:Landroid/content/Intent;
    const-string/jumbo v12, "state"

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1023
    iget-object v12, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 1032
    .end local v7           #intent:Landroid/content/Intent;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 1033
    iget-object v12, p0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    array-length v12, v12

    if-ne v6, v12, :cond_2

    goto/16 :goto_0

    .line 1066
    .restart local v11       #tag:I
    :cond_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 1069
    .local v10, rawData:[B
    array-length v12, v10

    add-int/lit8 v8, v12, -0x2

    .line 1070
    .local v8, len:I
    const/4 v12, 0x1

    int-to-byte v13, v8

    aput-byte v13, v10, v12

    .line 1072
    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 1074
    .local v4, hexString:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v13, 0x0

    invoke-interface {v12, v4, v13}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method private getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V
    .locals 2
    .parameter "buf"
    .parameter "cmdInput"

    .prologue
    .line 922
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .line 924
    .local v0, tag:I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 925
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 926
    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    sget-object v1, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->value()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 928
    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 929
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/cat/AppInterface;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1231
    const-string v0, "CatService"

    const-string v1, "call getInstance 4"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    const/4 v0, 0x0

    invoke-static {v2, v2, v2, v2, v0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/UiccCard;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;
    .locals 3
    .parameter "simId"

    .prologue
    const/4 v2, 0x0

    .line 1221
    const-string v0, "CatService"

    const-string v1, "call getInstance 3"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    invoke-static {v2, v2, v2, v2, p0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/UiccCard;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/UiccCard;)Lcom/android/internal/telephony/cat/CatService;
    .locals 4
    .parameter "ci"
    .parameter "context"
    .parameter "ic"

    .prologue
    .line 1205
    const-string v1, "CatService"

    const-string v2, "call getInstance 2"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const/4 v0, 0x0

    .line 1207
    .local v0, sim_id:I
    if-eqz p2, :cond_0

    .line 1209
    invoke-virtual {p2}, Lcom/android/internal/telephony/UiccCard;->getMySimId()I

    move-result v0

    .line 1210
    const-string v1, "CatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get SIM id from UiccCard. sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, p0, p1, p2, v0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/UiccCard;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/UiccCard;I)Lcom/android/internal/telephony/cat/CatService;
    .locals 13
    .parameter "phone"
    .parameter "ci"
    .parameter "context"
    .parameter "ic"
    .parameter "simId"

    .prologue
    .line 1110
    const/4 v4, 0x0

    .line 1111
    .local v4, ca:Lcom/android/internal/telephony/UiccCardApplication;
    const/4 v7, 0x0

    .line 1112
    .local v7, fh:Lcom/android/internal/telephony/IccFileHandler;
    const/4 v5, 0x0

    .line 1113
    .local v5, ir:Lcom/android/internal/telephony/IccRecords;
    if-eqz p3, :cond_0

    .line 1117
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v4

    .line 1118
    if-eqz v4, :cond_0

    .line 1119
    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v7

    .line 1120
    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v5

    .line 1123
    :cond_0
    const-string v2, "CatService"

    const-string v3, "call getInstance 1"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    if-nez p0, :cond_1

    .line 1125
    const-string v2, "CatService"

    const-string v3, "GsmPhone is null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    :cond_1
    sget-object v12, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1129
    const/4 v10, 0x0

    .line 1130
    .local v10, cmd:Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v2, v0, :cond_2

    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v2, :cond_3

    :cond_2
    if-nez p4, :cond_d

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

    if-nez v2, :cond_d

    .line 1132
    :cond_3
    const/4 v1, 0x0

    .line 1133
    .local v1, tempInstance:Lcom/android/internal/telephony/cat/CatService;
    if-eqz p1, :cond_4

    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    if-eqz p2, :cond_4

    if-eqz v7, :cond_4

    if-nez p3, :cond_b

    .line 1135
    :cond_4
    const-string v3, "CatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ci: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", ca: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_6

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", ir: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v5, :cond_7

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", context: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_8

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", fh: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v7, :cond_9

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", ic: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p3, :cond_a

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    const/4 v2, 0x0

    monitor-exit v12

    .line 1196
    .end local v1           #tempInstance:Lcom/android/internal/telephony/cat/CatService;
    :goto_6
    return-object v2

    .line 1135
    .restart local v1       #tempInstance:Lcom/android/internal/telephony/cat/CatService;
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    .line 1139
    :cond_b
    new-instance v11, Landroid/os/HandlerThread;

    const-string v2, "Cat Telephony service"

    invoke-direct {v11, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1140
    .local v11, thread:Landroid/os/HandlerThread;
    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    .line 1141
    new-instance v1, Lcom/android/internal/telephony/cat/CatService;

    .end local v1           #tempInstance:Lcom/android/internal/telephony/cat/CatService;
    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/telephony/cat/CatService;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/UiccCardApplication;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/UiccCard;I)V

    .line 1142
    .restart local v1       #tempInstance:Lcom/android/internal/telephony/cat/CatService;
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v2, v0, :cond_c

    .line 1143
    const-string/jumbo v2, "read data from sInstSim2"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1144
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->db:Lcom/android/internal/telephony/cat/DBHelper;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInst2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/DBHelper;->readDataFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1145
    const-string v2, "NEW sInstanceSim2"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1146
    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;

    .line 1153
    :goto_7
    invoke-static {v1, v10}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCmdFromDB(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)V

    .line 1191
    .end local v1           #tempInstance:Lcom/android/internal/telephony/cat/CatService;
    .end local v11           #thread:Landroid/os/HandlerThread;
    :goto_8
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v2, v0, :cond_12

    .line 1192
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CatService;->registerSATcb()V

    .line 1193
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;

    monitor-exit v12

    goto :goto_6

    .line 1198
    :catchall_0
    move-exception v2

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1148
    .restart local v1       #tempInstance:Lcom/android/internal/telephony/cat/CatService;
    .restart local v11       #thread:Landroid/os/HandlerThread;
    :cond_c
    :try_start_1
    const-string/jumbo v2, "read data from sInstSim1"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1149
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->db:Lcom/android/internal/telephony/cat/DBHelper;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInst1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/DBHelper;->readDataFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1150
    const-string v2, "NEW sInstanceSim1"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1151
    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

    goto :goto_7

    .line 1154
    .end local v1           #tempInstance:Lcom/android/internal/telephony/cat/CatService;
    .end local v11           #thread:Landroid/os/HandlerThread;
    :cond_d
    if-eqz v5, :cond_11

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eq v2, v5, :cond_11

    .line 1155
    const-string v2, "CatService"

    const-string v3, "Reinitialize the Service with SIMRecords"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    sput-object v5, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 1162
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v2, v0, :cond_f

    .line 1163
    const-string v2, "CatService"

    const-string/jumbo v3, "read data from sInstSim2"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->db:Lcom/android/internal/telephony/cat/DBHelper;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInst2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/DBHelper;->readDataFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1166
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v2, :cond_e

    .line 1167
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 1169
    :cond_e
    sput-object v5, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 1170
    sput-object v4, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 1171
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;

    const/16 v6, 0x14

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v6, v8}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1172
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v2, v10}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCmdFromDB(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)V

    .line 1186
    :goto_9
    const-string v2, "CatService"

    const-string/jumbo v3, "sr changed reinitialize and return current sInstance"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1176
    :cond_f
    const-string v2, "CatService"

    const-string/jumbo v3, "read data from sInstSim1"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->db:Lcom/android/internal/telephony/cat/DBHelper;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInst1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/DBHelper;->readDataFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1178
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v2, :cond_10

    .line 1179
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 1181
    :cond_10
    sput-object v5, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 1182
    sput-object v4, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 1183
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

    const/16 v6, 0x14

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v6, v8}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1184
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v2, v10}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCmdFromDB(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)V

    goto :goto_9

    .line 1188
    :cond_11
    const-string v2, "CatService"

    const-string v3, "Return current sInstance"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1195
    :cond_12
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CatService;->registerSATcb()V

    .line 1196
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_6
.end method

.method private getPliResponse(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .parameter "buf"

    .prologue
    .line 934
    const-string/jumbo v2, "persist.sys.language"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 936
    .local v0, lang:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 938
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 939
    .local v1, tag:I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 940
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/internal/telephony/cat/ResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    .line 941
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 943
    .end local v1           #tag:I
    :cond_0
    return-void
.end method

.method public static getSaveNewSetUpMenuFlag(I)Z
    .locals 4
    .parameter "sim_id"

    .prologue
    .line 1291
    const/4 v0, 0x0

    .line 1292
    .local v0, result:Z
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v1, :cond_1

    if-nez p0, :cond_1

    .line 1294
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

    iget-boolean v0, v1, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    .line 1295
    const-string v1, "CatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1, mSaveNewSetUpMenu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    :cond_0
    :goto_0
    return v0

    .line 1297
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 1299
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;

    iget-boolean v0, v1, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    .line 1300
    const-string v1, "CatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2, mSaveNewSetUpMenu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;

    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 16
    .parameter "resMsg"

    .prologue
    .line 1571
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatService;->validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1736
    :goto_0
    return-void

    .line 1574
    :cond_0
    const/4 v6, 0x0

    .line 1575
    .local v6, resp:Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v13, 0x0

    .line 1576
    .local v13, helpRequired:Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v2

    .line 1578
    .local v2, cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$4;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1580
    :pswitch_0
    const/4 v13, 0x1

    .line 1592
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$4;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget v3, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_1

    .line 1734
    :cond_1
    :goto_1
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1735
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_0

    .line 1594
    :pswitch_3
    const-string v1, "CatService"

    const-string v3, "SET_UP_MENU"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v3, :cond_2

    const/4 v13, 0x1

    .line 1596
    :goto_2
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/cat/CatService;->sendMenuSelection(IZ)V

    goto :goto_0

    .line 1595
    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    .line 1599
    :pswitch_4
    const-string v1, "CatService"

    const-string v3, "SELECT_ITEM"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    new-instance v6, Lcom/android/internal/telephony/cat/SelectItemResponseData;

    .end local v6           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    invoke-direct {v6, v1}, Lcom/android/internal/telephony/cat/SelectItemResponseData;-><init>(I)V

    .line 1601
    .restart local v6       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .line 1604
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v14

    .line 1605
    .local v14, input:Lcom/android/internal/telephony/cat/Input;
    iget-boolean v1, v14, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-nez v1, :cond_3

    .line 1609
    if-nez v13, :cond_1

    .line 1610
    new-instance v6, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    .end local v6           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    iget-boolean v3, v14, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    iget-boolean v4, v14, Lcom/android/internal/telephony/cat/Input;->packed:Z

    invoke-direct {v6, v1, v3, v4}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    .restart local v6       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .line 1614
    :cond_3
    new-instance v6, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    .end local v6           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    invoke-direct {v6, v1}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Z)V

    .line 1617
    .restart local v6       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .line 1619
    .end local v14           #input:Lcom/android/internal/telephony/cat/Input;
    :pswitch_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    if-eqz v1, :cond_1

    .line 1620
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V

    goto :goto_1

    .line 1627
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZILandroid/os/Message;)V

    .line 1634
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_0

    .line 1637
    :pswitch_8
    const-string v1, "[BIP]"

    const-string v3, "SS-handleCmdResponse: user accept to open channel"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    const/16 v1, 0x1e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    .line 1639
    .local v15, response:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_4

    .line 1640
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/BipManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1, v3, v15}, Lcom/android/internal/telephony/cat/BipManager;->openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1642
    :cond_4
    const-string v1, "[BIP]"

    const-string v3, "SS-handleCmdResponse: invalid OPEN_CHANNEL"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1651
    .end local v15           #response:Landroid/os/Message;
    :pswitch_9
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$4;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget v3, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    sparse-switch v1, :sswitch_data_0

    .line 1665
    :cond_5
    :goto_3
    const/4 v6, 0x0

    .line 1666
    goto/16 :goto_1

    .line 1653
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SS-handleCmdResponse: [BACKWARD_MOVE_BY_USER] userConfirm["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] resultCode["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1656
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZILandroid/os/Message;)V

    goto :goto_3

    .line 1660
    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    if-eqz v1, :cond_5

    .line 1661
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V

    goto :goto_3

    .line 1669
    :pswitch_a
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$4;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget v3, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    sparse-switch v1, :sswitch_data_1

    goto/16 :goto_1

    .line 1681
    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    if-eqz v1, :cond_6

    .line 1682
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V

    .line 1685
    :cond_6
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->additionalInfo:[B

    if-eqz v1, :cond_1

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->additionalInfo:[B

    array-length v1, v1

    if-lez v1, :cond_1

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->additionalInfo:[B

    const/4 v3, 0x0

    aget-byte v1, v1, v3

    if-eqz v1, :cond_1

    .line 1687
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->additionalInfo:[B

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1689
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_0

    .line 1671
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZILandroid/os/Message;)V

    .line 1678
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_0

    .line 1698
    :pswitch_b
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$4;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget v3, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_1

    .line 1700
    :pswitch_c
    const-string v1, "[BIP]"

    const-string v3, "SS-handleCmdResponse: User don\'t accept open channel"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    if-lez v1, :cond_7

    .line 1709
    new-instance v6, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    .end local v6           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    invoke-direct {v6, v1, v3, v4}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/ChannelStatus;Lcom/android/internal/telephony/cat/BearerDesc;I)V

    .line 1711
    .restart local v6       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 1713
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_8

    .line 1714
    const-string v1, "[BIP]"

    const-string v3, "SS-handleCmdResponse: mCurrent is null"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1716
    :cond_8
    const-string v1, "[BIP]"

    const-string v3, "SS-handleCmdResponse: other params is invalid"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1725
    :pswitch_d
    iget v1, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 1726
    const-string/jumbo v1, "send TR for LAUNCH_BROWSER_ERROR"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1727
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 1578
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_d
    .end packed-switch

    .line 1592
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_7
        :pswitch_2
        :pswitch_8
    .end packed-switch

    .line 1651
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch

    .line 1669
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_2
        0xf -> :sswitch_3
    .end sparse-switch

    .line 1698
    :pswitch_data_2
    .packed-switch 0x11
        :pswitch_c
    .end packed-switch
.end method

.method private handleDBHandler(I)V
    .locals 4
    .parameter "sim_id"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDBHandler, sim_id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", db: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->db:Lcom/android/internal/telephony/cat/DBHelper;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1548
    if-nez p1, :cond_2

    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->db:Lcom/android/internal/telephony/cat/DBHelper;

    if-eqz v0, :cond_2

    .line 1550
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->db:Lcom/android/internal/telephony/cat/DBHelper;

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInst1:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/cat/DBHelper;->saveDataToDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    :cond_0
    :goto_1
    return-void

    .line 1547
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1552
    :cond_2
    if-ne p1, v1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->db:Lcom/android/internal/telephony/cat/DBHelper;

    if-eqz v0, :cond_0

    .line 1554
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->db:Lcom/android/internal/telephony/cat/DBHelper;

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInst2:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/cat/DBHelper;->saveDataToDB(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 6
    .parameter "resMsg"

    .prologue
    .line 1541
    iget v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->event:I

    iget v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->sourceId:I

    iget v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->destinationId:I

    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->additionalInfo:[B

    iget-boolean v5, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->oneShot:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    .line 1543
    return-void
.end method

.method private static handleProactiveCmdFromDB(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)V
    .locals 6
    .parameter "inst"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 1237
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 1238
    .local v0, currentRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    const-string v2, "CatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentRadioState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v0, v2, :cond_2

    .line 1241
    const-string v2, "CatService"

    const-string v3, "handleProactiveCmdFromDB: sim not ready, maybe bootup..."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

    if-ne p0, v2, :cond_1

    .line 1244
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->db:Lcom/android/internal/telephony/cat/DBHelper;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInst1:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lcom/android/internal/telephony/cat/DBHelper;->saveDataToDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    :cond_0
    :goto_0
    return-void

    .line 1245
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;

    if-ne p0, v2, :cond_0

    .line 1246
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->db:Lcom/android/internal/telephony/cat/DBHelper;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInst2:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lcom/android/internal/telephony/cat/DBHelper;->saveDataToDB(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1252
    :cond_2
    if-nez p1, :cond_3

    .line 1253
    const-string v2, "CatService"

    const-string v3, "handleProactiveCmdFromDB: cmd = null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1257
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->default_send_setupmenu_tr:Z

    .line 1259
    const-string v2, "CatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " handleProactiveCmdFromDB: cmd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    new-instance v1, Lcom/android/internal/telephony/cat/RilMessage;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    .line 1261
    .local v1, rilMsg:Lcom/android/internal/telephony/cat/RilMessage;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 1262
    const-string v2, "CatService"

    const-string v3, "handleProactiveCmdFromDB: over"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleProactiveCommand(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 27
    .parameter "cmdParams"

    .prologue
    .line 443
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    new-instance v12, Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 450
    .local v12, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    const/16 v24, 0x0

    .line 455
    .local v24, response:Landroid/os/Message;
    const/16 v18, 0x0

    .line 456
    .local v18, isAlarmState:Z
    const/16 v19, 0x0

    .line 457
    .local v19, isFlightMode:Z
    const/4 v15, 0x0

    .line 459
    .local v15, flightMode:I
    sget-object v2, Lcom/android/internal/telephony/cat/CatService$4;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 790
    const-string v2, "SS-handleProactiveCommand: Unsupported command"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 804
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 461
    .restart local p1
    :pswitch_0
    invoke-virtual {v12}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 462
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 473
    :goto_1
    const-string v2, "CAT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mSetUpMenuFromMD: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    if-nez v2, :cond_3

    .line 793
    .end local p1
    :cond_1
    :goto_2
    :pswitch_1
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 794
    const/16 v17, 0x0

    .line 795
    .local v17, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 796
    new-instance v17, Landroid/content/Intent;

    .end local v17           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.stk.command_2"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 797
    .restart local v17       #intent:Landroid/content/Intent;
    const-string v2, "SS-handleProactiveCommand: sending CAT_CMD_ACTION_2"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 802
    :goto_3
    const-string v2, "STK CMD"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 464
    .end local v17           #intent:Landroid/content/Intent;
    .restart local p1
    :cond_2
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_1

    .line 478
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    .line 479
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->ResultCodeFlag:I

    if-nez v2, :cond_4

    .line 480
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_2

    .line 481
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->ResultCodeFlag:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 482
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_2

    .line 488
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    if-eqz v2, :cond_7

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oobe_display"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 490
    .local v9, OOBE_Value:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle DISPLAY_TEXT, OOBE_Value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    if-nez v9, :cond_6

    .line 493
    const-string v2, "[CacheDT cache DISPLAY_TEXT"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dialog_sequence_settings"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    .line 499
    .local v25, seqValue:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "seqValue in CatService, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    const/4 v2, 0x2

    move/from16 v0, v25

    if-eq v0, v2, :cond_7

    .line 504
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 506
    if-nez v25, :cond_5

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dialog_sequence_settings"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 514
    :cond_5
    const-string v2, "[CacheDT set current cmd as DISPLAY_TEXT"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_0

    .line 523
    .end local v25           #seqValue:I
    :cond_6
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 524
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_0

    .line 537
    .end local v9           #OOBE_Value:I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->isAlarmBoot()Z

    move-result v18

    .line 539
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 545
    :goto_4
    if-eqz v15, :cond_8

    const/16 v19, 0x1

    .line 546
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAlarmState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isFlightMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flightMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    if-eqz v18, :cond_9

    if-eqz v19, :cond_9

    .line 550
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 541
    :catch_0
    move-exception v14

    .line 542
    .local v14, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "fail to get property from Settings"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    const/4 v15, 0x0

    goto :goto_4

    .line 545
    .end local v14           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_8
    const/16 v19, 0x0

    goto :goto_5

    .line 555
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->checkSetupWizardInstalled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 556
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 562
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->isIvsrBootUp:Z

    if-eqz v2, :cond_1

    .line 563
    const-string v2, "[IVSR send TR directly"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 574
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 575
    const-string/jumbo v2, "remove event list because of SIM Refresh"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    goto/16 :goto_2

    :pswitch_4
    move-object/from16 v2, p1

    .line 582
    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_b

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v2, :cond_b

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 585
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 590
    :cond_b
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_2

    .line 596
    :pswitch_5
    const/4 v1, 0x0

    .line 598
    .local v1, resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_c

    .line 600
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 601
    .local v10, cal:Ljava/util/Calendar;
    const/16 v26, 0x0

    .line 602
    .local v26, temp:I
    const/16 v16, 0x0

    .line 603
    .local v16, hibyte:I
    const/16 v21, 0x0

    .line 604
    .local v21, lobyte:I
    const/4 v2, 0x7

    new-array v13, v2, [B

    .line 606
    .local v13, datetime:[B
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit16 v0, v2, -0x7d0

    move/from16 v26, v0

    .line 607
    div-int/lit8 v16, v26, 0xa

    .line 608
    rem-int/lit8 v2, v26, 0xa

    shl-int/lit8 v21, v2, 0x4

    .line 609
    const/4 v2, 0x0

    or-int v3, v21, v16

    int-to-byte v3, v3

    aput-byte v3, v13, v2

    .line 611
    const/4 v2, 0x2

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v26, v2, 0x1

    .line 612
    div-int/lit8 v16, v26, 0xa

    .line 613
    rem-int/lit8 v2, v26, 0xa

    shl-int/lit8 v21, v2, 0x4

    .line 614
    const/4 v2, 0x1

    or-int v3, v21, v16

    int-to-byte v3, v3

    aput-byte v3, v13, v2

    .line 616
    const/4 v2, 0x5

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v26

    .line 617
    div-int/lit8 v16, v26, 0xa

    .line 618
    rem-int/lit8 v2, v26, 0xa

    shl-int/lit8 v21, v2, 0x4

    .line 619
    const/4 v2, 0x2

    or-int v3, v21, v16

    int-to-byte v3, v3

    aput-byte v3, v13, v2

    .line 621
    const/16 v2, 0xb

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v26

    .line 622
    div-int/lit8 v16, v26, 0xa

    .line 623
    rem-int/lit8 v2, v26, 0xa

    shl-int/lit8 v21, v2, 0x4

    .line 624
    const/4 v2, 0x3

    or-int v3, v21, v16

    int-to-byte v3, v3

    aput-byte v3, v13, v2

    .line 626
    const/16 v2, 0xc

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v26

    .line 627
    div-int/lit8 v16, v26, 0xa

    .line 628
    rem-int/lit8 v2, v26, 0xa

    shl-int/lit8 v21, v2, 0x4

    .line 629
    const/4 v2, 0x4

    or-int v3, v21, v16

    int-to-byte v3, v3

    aput-byte v3, v13, v2

    .line 631
    const/16 v2, 0xd

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v26

    .line 632
    div-int/lit8 v16, v26, 0xa

    .line 633
    rem-int/lit8 v2, v26, 0xa

    shl-int/lit8 v21, v2, 0x4

    .line 634
    const/4 v2, 0x5

    or-int v3, v21, v16

    int-to-byte v3, v3

    aput-byte v3, v13, v2

    .line 637
    const/16 v2, 0xf

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const v3, 0xdbba0

    div-int v26, v2, v3

    .line 638
    div-int/lit8 v16, v26, 0xa

    .line 639
    rem-int/lit8 v2, v26, 0xa

    shl-int/lit8 v21, v2, 0x4

    .line 640
    const/4 v2, 0x6

    or-int v3, v21, v16

    int-to-byte v3, v3

    aput-byte v3, v13, v2

    .line 642
    new-instance v1, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;

    .end local v1           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    const/4 v3, 0x1

    aget-byte v3, v13, v3

    const/4 v4, 0x2

    aget-byte v4, v13, v4

    const/4 v5, 0x3

    aget-byte v5, v13, v5

    const/4 v6, 0x4

    aget-byte v6, v13, v6

    const/4 v7, 0x5

    aget-byte v7, v13, v7

    const/4 v8, 0x6

    aget-byte v8, v13, v8

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;-><init>(IIIIIII)V

    .line 646
    .restart local v1       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 650
    .end local v10           #cal:Ljava/util/Calendar;
    .end local v13           #datetime:[B
    .end local v16           #hibyte:I
    .end local v21           #lobyte:I
    .end local v26           #temp:I
    :cond_c
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 652
    const/4 v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v20, v0

    .line 653
    .local v20, lang:[B
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v22

    .line 655
    .local v22, locale:Ljava/util/Locale;
    const/4 v2, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v20, v2

    .line 656
    const/4 v2, 0x1

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v20, v2

    .line 658
    new-instance v1, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;

    .end local v1           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v20

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;-><init>([B)V

    .line 660
    .restart local v1       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .end local v1           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .end local v20           #lang:[B
    .end local v22           #locale:Ljava/util/Locale;
    :pswitch_6
    move-object/from16 v2, p1

    .line 682
    check-cast v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "Defualt Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x104050b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    .line 685
    .local v23, message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    .end local p1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_2

    .line 691
    .end local v23           #message:Ljava/lang/CharSequence;
    .restart local p1
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->isAlarmBoot()Z

    move-result v18

    .line 693
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    .line 699
    :goto_6
    if-eqz v15, :cond_d

    const/16 v19, 0x1

    .line 700
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAlarmState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isFlightMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flightMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    if-eqz v18, :cond_1

    if-eqz v19, :cond_1

    .line 703
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 695
    :catch_1
    move-exception v14

    .line 696
    .restart local v14       #e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "fail to get property from Settings"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 697
    const/4 v15, 0x0

    goto :goto_6

    .line 699
    .end local v14           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_d
    const/16 v19, 0x0

    goto :goto_7

    .line 710
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "READY"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "IMSI"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "LOADED"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 714
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v2, p1

    .line 722
    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "Defualt Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x104050a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    .line 725
    .restart local v23       #message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_2

    .end local v23           #message:Ljava/lang/CharSequence;
    .restart local p1
    :pswitch_a
    move-object/from16 v2, p1

    .line 731
    check-cast v2, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "Defualt Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x104050c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    .line 734
    .restart local v23       #message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/CallSetupParams;

    .end local p1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_2

    .line 740
    .end local v23           #message:Ljava/lang/CharSequence;
    .restart local p1
    :pswitch_b
    check-cast p1, Lcom/android/internal/telephony/cat/SetupEventListParams;

    .end local p1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/SetupEventListParams;->eventList:[B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    goto/16 :goto_0

    .line 743
    .restart local p1
    :pswitch_c
    const-string v2, "SS-handleProactiveCommand: process OPEN_CHANNEL"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    const/4 v11, 0x0

    .line 747
    .local v11, call_state:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getCallStateGemini(I)I

    move-result v11

    .line 753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call_state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    if-eqz v11, :cond_1

    .line 755
    const-string v2, "[BIP]"

    const-string v3, "SS-handleProactiveCommand: ME is busy on call"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    new-instance v2, Lcom/android/internal/telephony/cat/ChannelStatus;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/BipManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/BipManager;->getChannelId()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/cat/ChannelStatus;-><init>(III)V

    iput-object v2, v12, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 759
    iget-object v2, v12, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/ChannelStatus;->isActivated:Z

    .line 761
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 762
    const/16 v2, 0x1e

    const/4 v3, 0x6

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v12}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    .line 764
    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 769
    .end local v11           #call_state:I
    :pswitch_d
    const-string v2, "SS-handleProactiveCommand: process CLOSE_CHANNEL"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 770
    const/16 v2, 0x21

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    .line 771
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/BipManager;

    move-object/from16 v0, v24

    invoke-virtual {v2, v12, v0}, Lcom/android/internal/telephony/cat/BipManager;->closeChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    goto/16 :goto_2

    .line 774
    :pswitch_e
    const-string v2, "SS-handleProactiveCommand: process RECEIVE_DATA"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    const/16 v2, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    .line 776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/BipManager;

    move-object/from16 v0, v24

    invoke-virtual {v2, v12, v0}, Lcom/android/internal/telephony/cat/BipManager;->receiveData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    goto/16 :goto_2

    .line 779
    :pswitch_f
    const-string v2, "SS-handleProactiveCommand: process SEND_DATA"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 780
    const/16 v2, 0x1f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    .line 781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/BipManager;

    move-object/from16 v0, v24

    invoke-virtual {v2, v12, v0}, Lcom/android/internal/telephony/cat/BipManager;->sendData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    goto/16 :goto_2

    .line 784
    :pswitch_10
    const-string v2, "SS-handleProactiveCommand: process GET_CHANNEL_STATUS"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 785
    const/16 v2, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/BipManager;

    move-object/from16 v0, v24

    invoke-virtual {v2, v12, v0}, Lcom/android/internal/telephony/cat/BipManager;->getChannelStatus(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    goto/16 :goto_2

    .line 799
    .end local p1
    .restart local v17       #intent:Landroid/content/Intent;
    :cond_e
    new-instance v17, Landroid/content/Intent;

    .end local v17           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.stk.command"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 800
    .restart local v17       #intent:Landroid/content/Intent;
    const-string v2, "SS-handleProactiveCommand: sending CAT_CMD_ACTION"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 459
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 9
    .parameter "rilMsg"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 361
    if-nez p1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    const/4 v7, 0x0

    .line 367
    .local v7, cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    iget v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 426
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->handleSessionEnd()V

    goto :goto_0

    .line 369
    :pswitch_2
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v2, :cond_2

    .line 370
    iget-object v7, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .end local v7           #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cat/CommandParams;

    .line 371
    .restart local v7       #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v7, :cond_0

    .line 372
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommand(Lcom/android/internal/telephony/cat/CommandParams;)V

    goto :goto_0

    .line 377
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event notify error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    iget-object v7, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .end local v7           #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cat/CommandParams;

    .line 379
    .restart local v7       #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v7, :cond_0

    iget-object v1, v7, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    .line 380
    const-string v1, "[BIP]"

    const-string v2, "Open Channel with ResultCode"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommand(Lcom/android/internal/telephony/cat/CommandParams;)V

    goto :goto_0

    .line 388
    :pswitch_3
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cat/CommandParams;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    if-eqz v7, :cond_0

    .line 400
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v2, :cond_3

    .line 401
    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->ResultCodeFlag:I

    .line 402
    iget-boolean v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mSetUpMenuFromMD:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    .line 403
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommand(Lcom/android/internal/telephony/cat/CommandParams;)V

    goto :goto_0

    .line 389
    :catch_0
    move-exception v8

    .line 391
    .local v8, e:Ljava/lang/ClassCastException;
    const-string v1, "Fail to parse proactive command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 404
    .end local v8           #e:Ljava/lang/ClassCastException;
    :cond_3
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v2, :cond_4

    .line 405
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cat/CatService;->ResultCodeFlag:I

    .line 406
    iget-boolean v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mSetUpMenuFromMD:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    .line 407
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommand(Lcom/android/internal/telephony/cat/CommandParams;)V

    goto/16 :goto_0

    .line 412
    :cond_4
    const-string v1, "CAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SS-handleMessage: invalid proactive command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v2, v7, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v3, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 420
    :pswitch_4
    iget-object v7, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .end local v7           #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cat/CommandParams;

    .line 421
    .restart local v7       #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v7, :cond_0

    .line 422
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommand(Lcom/android/internal/telephony/cat/CommandParams;)V

    goto/16 :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .locals 3

    .prologue
    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SS-handleSessionEnd: SESSION END, sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 811
    const/4 v0, 0x0

    .line 813
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 814
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 815
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.stk.session_end_2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 819
    .restart local v0       #intent:Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 820
    return-void

    .line 817
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.stk.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method private isSetUpMenuCmd(Ljava/lang/String;)Z
    .locals 5
    .parameter "cmd"

    .prologue
    const/16 v4, 0x35

    const/16 v3, 0x32

    .line 1270
    const/4 v0, 0x0

    .line 1272
    .local v0, validCmd:Z
    if-nez p1, :cond_0

    .line 1273
    const/4 v1, 0x0

    .line 1286
    :goto_0
    return v1

    .line 1276
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_2

    .line 1277
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1278
    const/4 v0, 0x1

    :cond_1
    :goto_1
    move v1, v0

    .line 1286
    goto :goto_0

    .line 1281
    :cond_2
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1282
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private registerPowerOnSequenceObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1977
    const-string v1, "call registerPowerOnSequenceObserver"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1978
    const-string v1, "dialog_sequence_settings"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1979
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mPowerOnSequenceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1981
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oobe_display"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mPowerOnSequenceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1983
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    .line 1984
    return-void
.end method

.method private registerSATcb()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1079
    const-string v1, "CatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerSATcb, mNeedRegisterAgain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->mNeedRegisterAgain:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mNeedRegisterAgain:Z

    if-eqz v1, :cond_0

    .line 1083
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1084
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1085
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1086
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x4

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1087
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mNeedRegisterAgain:Z

    .line 1089
    const-string v1, "CatService"

    const-string/jumbo v2, "notify RIL to send cached command again"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_CAT_INIT_DONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1091
    .local v0, intentForCachedCommand:Landroid/content/Intent;
    const-string/jumbo v1, "simId"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1092
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1094
    .end local v0           #intentForCachedCommand:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1530
    :try_start_0
    iget-object v3, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_0

    .line 1537
    :goto_0
    return v1

    .line 1533
    :catch_0
    move-exception v0

    .line 1534
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "Unable to get Menu\'s items size"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    move v1, v2

    .line 1537
    goto :goto_0
.end method

.method private resetPowerOnSequenceFlag()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1993
    const-string v0, "call resetPowerOnSequenceFlag"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1995
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dialog_sequence_settings"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2000
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    .line 2001
    return-void
.end method

.method private sendCatCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 3
    .parameter "cmdMsg"

    .prologue
    .line 1962
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call sendCatCmd, sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1963
    const/4 v0, 0x0

    .line 1965
    .local v0, intent:Landroid/content/Intent;
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1966
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.stk.command_2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1967
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "SS-sendCatCmd: sending CAT_CMD_ACTION_2"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1972
    :cond_0
    :goto_0
    const-string v1, "STK CMD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1973
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1974
    return-void

    .line 1968
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    if-nez v1, :cond_0

    .line 1969
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.stk.command"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1970
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "SS-sendCatCmd: sending CAT_CMD_ACTION"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendMenuSelection(IZ)V
    .locals 9
    .parameter "menuId"
    .parameter "helpRequired"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 947
    const-string v5, "CatService"

    const-string/jumbo v6, "sendMenuSelection SET_UP_MENU"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 952
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd3

    .line 953
    .local v4, tag:I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 956
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 959
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 960
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 961
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 962
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 963
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 966
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 967
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 968
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 969
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 972
    if-eqz p2, :cond_0

    .line 973
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    .line 974
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 975
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 978
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 981
    .local v3, rawData:[B
    array-length v5, v3

    add-int/lit8 v2, v5, -0x2

    .line 982
    .local v2, len:I
    int-to-byte v5, v2

    aput-byte v5, v3, v7

    .line 984
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 986
    .local v1, hexString:Ljava/lang/String;
    const-string v5, "CatService"

    const-string/jumbo v6, "sendMenuSelection before  mCmdIf.sendEnvelope(hexString, null);"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 988
    const-string v5, "CatService"

    const-string/jumbo v6, "sendMenuSelection before  mCmdIf.sendEnvelope(hexString, null);"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    return-void
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 8
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "includeAdditionalInfo"
    .parameter "additionalInfo"
    .parameter "resp"

    .prologue
    const/4 v3, 0x2

    .line 826
    if-nez p1, :cond_0

    .line 827
    const-string v6, "SS-sendTR: cmdDet is null"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 889
    :goto_0
    return-void

    .line 830
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SS-sendTR: command type is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 831
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 833
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 834
    .local v1, cmdInput:Lcom/android/internal/telephony/cat/Input;
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v6, :cond_1

    .line 835
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v1

    .line 839
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    .line 840
    .local v5, tag:I
    iget-boolean v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v6, :cond_2

    .line 841
    or-int/lit16 v5, v5, 0x80

    .line 843
    :cond_2
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 844
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 845
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 846
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 847
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 856
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    .line 857
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 858
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 859
    const/16 v6, 0x82

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 860
    const/16 v6, 0x81

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 863
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    .line 864
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 865
    if-eqz p3, :cond_4

    .line 866
    .local v3, length:I
    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 867
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 870
    if-eqz p3, :cond_3

    .line 871
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 875
    :cond_3
    if-eqz p5, :cond_5

    .line 876
    const-string v6, "SS-sendTR: write response data into TR"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 877
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cat/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    .line 882
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 883
    .local v4, rawData:[B
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 885
    .local v2, hexString:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TERMINAL RESPONSE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 888
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 865
    .end local v2           #hexString:Ljava/lang/String;
    .end local v3           #length:I
    .end local v4           #rawData:[B
    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    .line 879
    .restart local v3       #length:I
    :cond_5
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/cat/CatService;->encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V

    goto :goto_2
.end method

.method private unregisterPowerOnSequenceObserver()V
    .locals 2

    .prologue
    .line 1987
    const-string v0, "call unregisterPowerOnSequenceObserver"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1988
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mPowerOnSequenceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1990
    return-void
.end method

.method private validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z
    .locals 4
    .parameter "resMsg"

    .prologue
    const/4 v1, 0x0

    .line 1515
    const/4 v0, 0x0

    .line 1516
    .local v0, ret:Z
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v2, :cond_1

    .line 1518
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 1519
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SS-validateResponse: ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v0

    .line 1525
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 1518
    goto :goto_0

    .line 1524
    :cond_1
    const-string v2, "SS-validateResponse: mCurrentCmd is null"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 344
    const-string v0, "CatService: dispose"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatSessionEnd(Landroid/os/Handler;)V

    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatProactiveCmd(Landroid/os/Handler;)V

    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatEvent(Landroid/os/Handler;)V

    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCallSetUp(Landroid/os/Handler;)V

    .line 351
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mNeedRegisterAgain:Z

    .line 354
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 357
    const-string v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getMenuTitleFromEf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1820
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getMenuTitleFromEf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .parameter "msg"

    .prologue
    .line 1308
    const/16 v18, 0x0

    .line 1309
    .local v18, cmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    const/4 v8, 0x0

    .line 1310
    .local v8, resp:Lcom/android/internal/telephony/cat/ResponseData;
    const/16 v24, 0x0

    .line 1312
    .local v24, ret:I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1485
    :pswitch_0
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized CAT command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1317
    :pswitch_1
    const-string/jumbo v3, "ril message arrived"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1318
    const/16 v19, 0x0

    .line 1319
    .local v19, data:Ljava/lang/String;
    const/16 v21, 0x0

    .line 1320
    .local v21, flag:Z
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 1321
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/os/AsyncResult;

    .line 1322
    .local v15, ar:Landroid/os/AsyncResult;
    if-eqz v15, :cond_0

    iget-object v3, v15, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 1324
    :try_start_0
    iget-object v3, v15, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object/from16 v19, v0

    .line 1327
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->isSetUpMenuCmd(Ljava/lang/String;)Z

    move-result v22

    .line 1328
    .local v22, isValid:Z
    if-eqz v22, :cond_2

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p0

    if-ne v0, v3, :cond_2

    .line 1329
    const-string/jumbo v3, "ril message arrived : save data to db 1"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1330
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->db:Lcom/android/internal/telephony/cat/DBHelper;

    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->sInst1:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/telephony/cat/DBHelper;->saveDataToDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1332
    const/16 v21, 0x1

    .line 1345
    .end local v15           #ar:Landroid/os/AsyncResult;
    .end local v22           #isValid:Z
    :cond_0
    :goto_0
    new-instance v25, Lcom/android/internal/telephony/cat/RilMessage;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    .line 1346
    .local v25, rilMsg:Lcom/android/internal/telephony/cat/RilMessage;
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/RilMessage;->setSetUpMenuFromMD(Z)V

    .line 1347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 1487
    .end local v19           #data:Ljava/lang/String;
    .end local v21           #flag:Z
    .end local v25           #rilMsg:Lcom/android/internal/telephony/cat/RilMessage;
    :cond_1
    :goto_1
    :pswitch_2
    return-void

    .line 1333
    .restart local v15       #ar:Landroid/os/AsyncResult;
    .restart local v19       #data:Ljava/lang/String;
    .restart local v21       #flag:Z
    .restart local v22       #isValid:Z
    :cond_2
    if-eqz v22, :cond_0

    :try_start_1
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p0

    if-ne v0, v3, :cond_0

    .line 1334
    const-string/jumbo v3, "ril message arrived : save data to db 2"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1335
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->db:Lcom/android/internal/telephony/cat/DBHelper;

    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->sInst2:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/telephony/cat/DBHelper;->saveDataToDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1337
    const/16 v21, 0x1

    goto :goto_0

    .line 1340
    .end local v22           #isValid:Z
    :catch_0
    move-exception v20

    .line 1341
    .local v20, e:Ljava/lang/ClassCastException;
    goto :goto_1

    .line 1350
    .end local v15           #ar:Landroid/os/AsyncResult;
    .end local v19           #data:Ljava/lang/String;
    .end local v20           #e:Ljava/lang/ClassCastException;
    .end local v21           #flag:Z
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    new-instance v4, Lcom/android/internal/telephony/cat/RilMessage;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_1

    .line 1355
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cat/RilMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cat/CatService;->handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_1

    .line 1358
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cat/CatService;->handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_1

    .line 1361
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cat/CatService;->handleEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_1

    .line 1364
    :pswitch_7
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cat/CatService;->handleDBHandler(I)V

    goto :goto_1

    .line 1367
    :pswitch_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .line 1368
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    .end local v18           #cmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    check-cast v18, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1371
    .restart local v18       #cmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v3, :cond_3

    .line 1373
    const-string v3, "[BIP]"

    const-string v4, "SS-handleMessage: skip open channel response because current cmd is null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1376
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v3, :cond_4

    .line 1378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v4, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 1380
    const-string v3, "[BIP]"

    const-string v4, "SS-handleMessage: skip open channel response because current cmd type is not OPEN_CHANNEL"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1384
    :cond_4
    if-nez v24, :cond_5

    .line 1385
    new-instance v8, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    invoke-direct {v8, v3, v4, v5}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/ChannelStatus;Lcom/android/internal/telephony/cat/BearerDesc;I)V

    .line 1387
    .restart local v8       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    const-string v3, "[BIP]"

    const-string v4, "SS-handleMessage: open channel successfully"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v4, v3, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1389
    :cond_5
    const/4 v3, 0x3

    move/from16 v0, v24

    if-ne v0, v3, :cond_6

    .line 1390
    new-instance v8, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    invoke-direct {v8, v3, v4, v5}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/ChannelStatus;Lcom/android/internal/telephony/cat/BearerDesc;I)V

    .line 1392
    .restart local v8       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    const-string v3, "[BIP]"

    const-string v4, "SS-handleMessage: open channel with modified parameters"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v4, v3, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1395
    :cond_6
    const/4 v3, 0x6

    move/from16 v0, v24

    if-ne v0, v3, :cond_7

    .line 1396
    new-instance v8, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    invoke-direct {v8, v3, v4, v5}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/ChannelStatus;Lcom/android/internal/telephony/cat/BearerDesc;I)V

    .line 1397
    .restart local v8       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    const-string v3, "[BIP]"

    const-string v4, "SS-handleMessage: ME is busy on call"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v4, v3, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x1

    const/4 v7, 0x2

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1402
    :cond_7
    new-instance v8, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    invoke-direct {v8, v3, v4, v5}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/ChannelStatus;Lcom/android/internal/telephony/cat/BearerDesc;I)V

    .line 1404
    .restart local v8       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    const-string v3, "[BIP]"

    const-string v4, "SS-handleMessage: open channel failed"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1409
    :pswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .line 1410
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    .line 1411
    .local v26, size:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    .end local v18           #cmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    check-cast v18, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1412
    .restart local v18       #cmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    new-instance v8, Lcom/android/internal/telephony/cat/SendDataResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    move/from16 v0, v26

    invoke-direct {v8, v0}, Lcom/android/internal/telephony/cat/SendDataResponseData;-><init>(I)V

    .line 1413
    .restart local v8       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    if-nez v24, :cond_8

    .line 1414
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1415
    :cond_8
    const/4 v3, 0x7

    move/from16 v0, v24

    if-ne v0, v3, :cond_9

    .line 1416
    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v11, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v12, 0x1

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1419
    :cond_9
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1423
    .end local v26           #size:I
    :pswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .line 1424
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    .end local v18           #cmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    check-cast v18, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1425
    .restart local v18       #cmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelData:[B

    move-object/from16 v16, v0

    .line 1426
    .local v16, buffer:[B
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mRemainingDataLength:I

    move/from16 v23, v0

    .line 1428
    .local v23, remainingCount:I
    new-instance v8, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-direct {v8, v0, v1}, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;-><init>([BI)V

    .line 1429
    .restart local v8       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    if-nez v24, :cond_a

    .line 1430
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1431
    :cond_a
    const/16 v3, 0x9

    move/from16 v0, v24

    if-ne v0, v3, :cond_b

    .line 1432
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1435
    :cond_b
    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v11, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1439
    .end local v16           #buffer:[B
    .end local v23           #remainingCount:I
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    .end local v18           #cmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    check-cast v18, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1440
    .restart local v18       #cmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_c

    .line 1441
    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v11, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1442
    :cond_c
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_d

    .line 1443
    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v11, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v12, 0x1

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1445
    :cond_d
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 1446
    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v11, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1451
    :pswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .line 1452
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    .end local v18           #cmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    check-cast v18, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1453
    .restart local v18       #cmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v0, v3, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelId:I

    move/from16 v17, v0

    .line 1454
    .local v17, cid:I
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v0, v3, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    move/from16 v27, v0

    .line 1455
    .local v27, status:I
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v0, v3, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatusInfo:I

    move/from16 v28, v0

    .line 1457
    .local v28, statusInfo:I
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SS-handleCmdResponse: MSG_ID_GET_CHANNEL_STATUS_DONE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    new-instance v8, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    move/from16 v0, v17

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v8, v0, v1, v2}, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;-><init>(III)V

    .line 1460
    .restart local v8       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1463
    .end local v17           #cid:I
    .end local v27           #status:I
    .end local v28           #statusInfo:I
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    .end local v18           #cmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    check-cast v18, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1464
    .restart local v18       #cmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    new-instance v8, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    invoke-direct {v8, v3, v4, v5}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/ChannelStatus;Lcom/android/internal/telephony/cat/BearerDesc;I)V

    .line 1466
    .restart local v8       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SS-handleMessage: timeout for ConnMgr intent. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v5, v5, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/BipManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/BipManager;->setConnMgrTimeoutFlag(Z)V

    goto/16 :goto_1

    .line 1473
    :pswitch_e
    const-string v3, "SIM ready. Reporting STK service running now..."

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1479
    :pswitch_f
    const-string v3, "[IVSR cancel IVSR flag"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1480
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->isIvsrBootUp:Z

    goto/16 :goto_1

    .line 1312
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_e
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public isAlarmBoot()Z
    .locals 2

    .prologue
    .line 1830
    const-string/jumbo v1, "sys.boot.reason"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1831
    .local v0, bootReason:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 2
    .parameter "resMsg"

    .prologue
    .line 1490
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1496
    :goto_0
    monitor-exit p0

    return-void

    .line 1494
    :cond_0
    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1495
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1490
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onDBHandler(I)V
    .locals 3
    .parameter "sim_id"

    .prologue
    .line 1510
    monitor-enter p0

    const/16 v1, 0xb

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1511
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1512
    monitor-exit p0

    return-void

    .line 1510
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 2
    .parameter "resMsg"

    .prologue
    .line 1499
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1505
    :goto_0
    monitor-exit p0

    return-void

    .line 1503
    :cond_0
    const/16 v1, 0x8

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1504
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1499
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
