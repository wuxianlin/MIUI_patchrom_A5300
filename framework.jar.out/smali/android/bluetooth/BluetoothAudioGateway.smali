.class public final Landroid/bluetooth/BluetoothAudioGateway;
.super Ljava/lang/Object;
.source "BluetoothAudioGateway.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final DEFAULT_HF_AG_CHANNEL:I = 0xa

.field public static final DEFAULT_HS_AG_CHANNEL:I = 0xb

.field public static final DIRECTION_INCOMING:I = 0x1

.field public static final DIRECTION_OUTGOING:I = 0x2

.field public static final EVENT_HF_SHUTDOWN:I = 0x2

.field public static final EVENT_HF_STARTED:I = 0x1

.field public static final MSG_INCOMING_HANDSFREE_CONNECTION:I = 0x65

.field public static final MSG_INCOMING_HEADSET_CONNECTION:I = 0x64

.field public static final RFCOMM_CONNECTED:I = 0x1

.field public static final RFCOMM_DISCONNECTED:I = 0x3

.field public static final RFCOMM_ERROR:I = 0x2

.field public static final SCO_ACCEPTED:I = 0x4

.field public static final SCO_CLOSED:I = 0x6

.field public static final SCO_CONNECTED:I = 0x5

.field private static final SELECT_WAIT_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "BT Audio Gateway"

.field private static sAtInputCount:I


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAtBuf:[Ljava/lang/String;

.field protected mAtParser:Landroid/bluetooth/AtParser;

.field mAtWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBufCount:I

.field private mCallback:Landroid/os/Handler;

.field private mConnectThead:Ljava/lang/Thread;

.field private mConnectTimestamp:J

.field private mConnectingHandsfreeAddress:Ljava/lang/String;

.field private mConnectingHandsfreeRfcommChannel:I

.field private mConnectingHandsfreeSocketFd:I

.field private mConnectingHeadsetAddress:Ljava/lang/String;

.field private mConnectingHeadsetRfcommChannel:I

.field private mConnectingHeadsetSocketFd:I

.field private mDirection:I

.field private mHandsfreeAgRfcommChannel:I

.field private mHeadsetAgRfcommChannel:I

.field private mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private volatile mInterrupted:Z

.field private mIsConnected:Z

.field private mIsStartEvent:Z

.field private mNativeData:I

.field private mOutgoingSCO:Z

.field private mSCOConnected:Z

.field private mTimeoutRemainingMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Landroid/bluetooth/BluetoothAudioGateway;->classInitNative()V

    .line 121
    const/4 v0, 0x0

    sput v0, Landroid/bluetooth/BluetoothAudioGateway;->sAtInputCount:I

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 155
    const/4 v0, 0x0

    const/16 v1, 0xa

    const/16 v2, 0xb

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAudioGateway;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;II)V

    .line 156
    const-string v0, "BluetoothAudioGateway(1)"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 2
    .parameter "pm"
    .parameter "adapter"

    .prologue
    .line 160
    const/16 v0, 0xa

    const/16 v1, 0xb

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;II)V

    .line 161
    const-string v0, "BluetoothAudioGateway(1)"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;II)V
    .locals 3
    .parameter "pm"
    .parameter "adapter"
    .parameter "handsfreeAgRfcommChannel"
    .parameter "headsetAgRfcommChannel"

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 165
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHandsfreeAgRfcommChannel:I

    .line 104
    iput v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetAgRfcommChannel:I

    .line 135
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtBuf:[Ljava/lang/String;

    .line 166
    const-string v0, "BluetoothAudioGateway(2)"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 167
    iput-object p2, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 168
    iput p3, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHandsfreeAgRfcommChannel:I

    .line 169
    iput p4, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetAgRfcommChannel:I

    .line 171
    new-instance v0, Landroid/bluetooth/AtParser;

    invoke-direct {v0}, Landroid/bluetooth/AtParser;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtParser:Landroid/bluetooth/AtParser;

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 175
    iput v2, p0, Landroid/bluetooth/BluetoothAudioGateway;->mDirection:I

    .line 176
    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsConnected:Z

    .line 177
    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsStartEvent:Z

    .line 178
    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mOutgoingSCO:Z

    .line 179
    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mSCOConnected:Z

    .line 180
    iput v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    .line 182
    if-eqz p1, :cond_0

    .line 183
    const-string v0, "AudioGateway"

    invoke-virtual {p1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 184
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 186
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->initializeNativeDataNative()V

    .line 187
    return-void
.end method

.method private native acceptConnectionNative()I
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-static {p0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothAudioGateway;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mInterrupted:Z

    return v0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothAudioGateway;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mInterrupted:Z

    return p1
.end method

.method static synthetic access$202(Landroid/bluetooth/BluetoothAudioGateway;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHeadsetRfcommChannel:I

    return p1
.end method

.method static synthetic access$302(Landroid/bluetooth/BluetoothAudioGateway;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHandsfreeRfcommChannel:I

    return p1
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothAudioGateway;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->waitForHandsfreeIndicationNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-static {p0}, Landroid/bluetooth/BluetoothAudioGateway;->logInfo(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized acquireWakeLock(Landroid/os/PowerManager$WakeLock;)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] acquireWakeLock"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    :cond_0
    monitor-exit p0

    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native closeNative()V
.end method

.method private native connectNative()Z
.end method

.method private native disconnectNative()V
.end method

.method public static getAtInputCount()I
    .locals 2

    .prologue
    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] getAtInputCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/bluetooth/BluetoothAudioGateway;->sAtInputCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 387
    sget v0, Landroid/bluetooth/BluetoothAudioGateway;->sAtInputCount:I

    return v0
.end method

.method private native initializeNativeDataNative()V
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 605
    const-string v0, "BT Audio Gateway"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][HFG]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    return-void
.end method

.method private static logErr(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 614
    const-string v0, "BT Audio Gateway"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][HFG]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return-void
.end method

.method private static logInfo(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 608
    const-string v0, "BT Audio Gateway"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][HFG]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    return-void
.end method

.method private static logWarn(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 611
    const-string v0, "BT Audio Gateway"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][HFG]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    return-void
.end method

.method private declared-synchronized onConnectRequest(Ljava/lang/String;I)V
    .locals 7
    .parameter "address"
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    .line 450
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] onConnectRequest("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 451
    const/4 v0, 0x1

    iput v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mDirection:I

    .line 452
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 453
    if-ne p2, v2, :cond_0

    const/16 v0, 0x64

    move v6, v0

    :goto_0
    new-instance v0, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;-><init>(Landroid/bluetooth/BluetoothAudioGateway;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;II)V

    invoke-direct {p0, v6, v0}, Landroid/bluetooth/BluetoothAudioGateway;->sendMsg(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    monitor-exit p0

    return-void

    .line 453
    :cond_0
    const/16 v0, 0x65

    move v6, v0

    goto :goto_0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onConnected(Ljava/lang/String;I)V
    .locals 2
    .parameter "address"
    .parameter "type"

    .prologue
    .line 466
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] onConnected("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectTimestamp:J

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsConnected:Z

    .line 471
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->sendMsg(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    monitor-exit p0

    return-void

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onDisconnected(Ljava/lang/String;I)V
    .locals 4
    .parameter "address"
    .parameter "type"

    .prologue
    const/4 v3, 0x2

    .line 476
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mDirection:I

    .line 477
    .local v0, dir:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] onDisconnected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 479
    const/4 v1, 0x1

    iput v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mDirection:I

    .line 480
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsStartEvent:Z

    .line 481
    const/4 v1, 0x0

    iput v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    .line 482
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 483
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsConnected:Z

    if-eqz v1, :cond_1

    .line 485
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsConnected:Z

    .line 486
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/bluetooth/BluetoothAudioGateway;->sendMsg(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 488
    :cond_1
    if-ne v0, v3, :cond_0

    .line 491
    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, v1, v2}, Landroid/bluetooth/BluetoothAudioGateway;->sendMsg(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 476
    .end local v0           #dir:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private onEvent(I)V
    .locals 2
    .parameter "event"

    .prologue
    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] onEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 546
    packed-switch p1, :pswitch_data_0

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ERR] unknown event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 566
    :cond_0
    :pswitch_0
    return-void

    .line 550
    :pswitch_1
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    if-lez v0, :cond_0

    .line 552
    :goto_0
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    if-lez v0, :cond_0

    .line 554
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtBuf:[Ljava/lang/String;

    iget v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothAudioGateway;->handleInput(Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onPacketReceived(Ljava/lang/String;)V
    .locals 3
    .parameter "atCmd"

    .prologue
    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] onPacketReceived("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") : mIsStartEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsStartEvent:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBufCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 526
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsStartEvent:Z

    if-nez v0, :cond_1

    .line 528
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtBuf:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 530
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtBuf:[Ljava/lang/String;

    iget v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    aput-object p1, v0, v1

    .line 541
    :goto_0
    return-void

    .line 534
    :cond_0
    const-string v0, "[ERR] Run out of AtBuf capacity"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :cond_1
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAudioGateway;->handleInput(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized onSCOConnected()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 501
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] onSCOConnected"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mSCOConnected:Z

    .line 503
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mOutgoingSCO:Z

    if-ne v0, v1, :cond_0

    .line 505
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mOutgoingSCO:Z

    .line 506
    const/4 v0, 0x5

    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->sendMsg(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    :goto_0
    monitor-exit p0

    return-void

    .line 510
    :cond_0
    const/4 v0, 0x4

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->sendMsg(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onSCODisconnected()V
    .locals 2

    .prologue
    .line 516
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] onSCODisconnected"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 517
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mOutgoingSCO:Z

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mSCOConnected:Z

    .line 519
    const/4 v0, 0x6

    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->sendMsg(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    monitor-exit p0

    return-void

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native rejectConnectionNative()V
.end method

.method private declared-synchronized releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] releaseWakeLock"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :cond_0
    monitor-exit p0

    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendMsg(ILjava/lang/Object;)V
    .locals 3
    .parameter "msgID"
    .parameter "obj"

    .prologue
    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] sendMsg : msg_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mCallback:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 439
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_0

    .line 441
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 443
    :cond_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 444
    return-void
.end method

.method private native sendURCNative(Ljava/lang/String;)Z
.end method

.method private native setEventNative(I)V
.end method

.method private native setUpListeningSocketsNative()Z
.end method

.method private native tearDownListeningSocketsNative()V
.end method

.method private native waitForAsyncConnectNative(Ljava/lang/String;II)I
.end method

.method private native waitForHandsfreeIndicationNative()Z
.end method


# virtual methods
.method public declared-synchronized accept()Z
    .locals 1

    .prologue
    .line 398
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] accept"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized acceptConnection()I
    .locals 1

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] acceptConnection"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 424
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->acceptConnectionNative()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 414
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] close"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 415
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->closeNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    monitor-exit p0

    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 404
    monitor-enter p0

    :try_start_0
    const-string v1, "[API] connect"

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 405
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->connectNative()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 407
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mOutgoingSCO:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect()V
    .locals 1

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] disconnect"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 327
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->disconnectNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    monitor-exit p0

    return-void

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 280
    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->cleanupNativeDataNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 284
    return-void

    .line 282
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAtParser()Landroid/bluetooth/AtParser;
    .locals 1

    .prologue
    .line 358
    const-string v0, "[API] getAtParser"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtParser:Landroid/bluetooth/AtParser;

    return-object v0
.end method

.method public getConnectTimestamp()J
    .locals 2

    .prologue
    .line 381
    const-string v0, "[API] getConnectTimestamp"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 382
    iget-wide v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectTimestamp:J

    return-wide v0
.end method

.method public getDirection()I
    .locals 2

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] getDirection : dir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mDirection:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 364
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mDirection:I

    return v0
.end method

.method public getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 353
    const-string v0, "[API] getRemoteDevice"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method protected handleInput(Ljava/lang/String;)V
    .locals 3
    .parameter "input"

    .prologue
    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] handleInput("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->acquireWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 309
    :cond_0
    sget v1, Landroid/bluetooth/BluetoothAudioGateway;->sAtInputCount:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    .line 310
    const/4 v1, 0x0

    sput v1, Landroid/bluetooth/BluetoothAudioGateway;->sAtInputCount:I

    .line 316
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtParser:Landroid/bluetooth/AtParser;

    invoke-virtual {v1, p1}, Landroid/bluetooth/AtParser;->process(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    .line 317
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->sendURC(Ljava/lang/String;)Z

    .line 318
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 319
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 321
    :cond_1
    return-void

    .line 312
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    :cond_2
    sget v1, Landroid/bluetooth/BluetoothAudioGateway;->sAtInputCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/bluetooth/BluetoothAudioGateway;->sAtInputCount:I

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] isConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsConnected:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 369
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsConnected:Z

    return v0
.end method

.method public declared-synchronized isSCOConnected()Z
    .locals 1

    .prologue
    .line 394
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mSCOConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized rejectConnection()V
    .locals 1

    .prologue
    .line 428
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] rejectConnection"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 429
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->rejectConnectionNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    monitor-exit p0

    return-void

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendURC(Ljava/lang/String;)Z
    .locals 2
    .parameter "urc"

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] sendURC("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 375
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothAudioGateway;->sendURCNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 377
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(Landroid/os/Handler;)Z
    .locals 3
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 223
    monitor-enter p0

    :try_start_0
    const-string v1, "[API] start"

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 225
    iput-object p1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mCallback:Landroid/os/Handler;

    .line 226
    new-instance v1, Landroid/bluetooth/BluetoothAudioGateway$1;

    const-string v2, "BT Audio Gateway"

    invoke-direct {v1, p0, v2}, Landroid/bluetooth/BluetoothAudioGateway$1;-><init>(Landroid/bluetooth/BluetoothAudioGateway;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    .line 241
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->setUpListeningSocketsNative()Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    const-string v1, "Could not set up listening socket, exiting"

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->logErr(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :goto_0
    monitor-exit p0

    return v0

    .line 246
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mInterrupted:Z

    .line 247
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startEventThread()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 347
    const-string v0, "[API] startEventThread"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 348
    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsStartEvent:Z

    .line 349
    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->setEventNative(I)V

    .line 350
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 254
    monitor-enter p0

    .line 255
    :try_start_0
    const-string v1, "[API] stop"

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 257
    const-string/jumbo v1, "mConnectThead == null"

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 258
    monitor-exit p0

    .line 276
    :goto_0
    return-void

    .line 260
    :cond_0
    const-string/jumbo v1, "stopping Connect Thread"

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 261
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mInterrupted:Z

    .line 262
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->setEventNative(I)V

    .line 263
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 264
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 265
    const-string/jumbo v1, "waiting for thread to terminate"

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 267
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 271
    :goto_1
    monitor-enter p0

    .line 272
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    .line 273
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mCallback:Landroid/os/Handler;

    .line 274
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->tearDownListeningSocketsNative()V

    .line 275
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 264
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Interrupted waiting for Connect Thread to join"

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->logWarn(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public declared-synchronized waitForAsyncConnect(Landroid/bluetooth/BluetoothDevice;II)I
    .locals 4
    .parameter "device"
    .parameter "timeout_ms"
    .parameter "type"

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, address:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[API] waitForAsyncConnect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 335
    invoke-direct {p0, v0, p2, p3}, Landroid/bluetooth/BluetoothAudioGateway;->waitForAsyncConnectNative(Ljava/lang/String;II)I

    move-result v1

    .line 336
    .local v1, ret:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "waitForAsyncConnectNative returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 337
    if-lez v1, :cond_0

    .line 340
    iput-object p1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 341
    const/4 v2, 0x2

    iput v2, p0, Landroid/bluetooth/BluetoothAudioGateway;->mDirection:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :cond_0
    monitor-exit p0

    return v1

    .line 333
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #ret:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
