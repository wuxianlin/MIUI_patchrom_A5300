.class abstract Lcom/android/internal/telephony/cat/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;,
        Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;
    }
.end annotation


# static fields
.field protected static final SOCKET_TIMEOUT:I = 0xbb8


# instance fields
.field protected isChannelOpened:Z

.field protected mAddress:Ljava/net/InetAddress;

.field protected mBufferSize:I

.field protected mChannelId:I

.field protected mChannelStatus:I

.field private mHandler:Lcom/android/internal/telephony/cat/CatService;

.field protected mLinkMode:I

.field protected mLock:Ljava/lang/Object;

.field protected mPort:I

.field protected mProtocolType:I

.field protected mRecvDataRet:Lcom/android/internal/telephony/cat/ReceiveDataResult;

.field protected mRxBuffer:[B

.field protected mRxBufferCount:I

.field protected mRxBufferOffset:I

.field private volatile mStop:Z

.field protected mTxBuffer:[B

.field protected mTxBufferCount:I

.field protected needCopy:I


# direct methods
.method constructor <init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;)V
    .locals 3
    .parameter "cid"
    .parameter "linkMode"
    .parameter "protocolType"
    .parameter "address"
    .parameter "port"
    .parameter "bufferSize"
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelId:I

    .line 65
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    .line 66
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mLinkMode:I

    .line 67
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    .line 69
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mAddress:Ljava/net/InetAddress;

    .line 70
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mPort:I

    .line 71
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    .line 73
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    .line 74
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 75
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    .line 76
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 77
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 78
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    .line 80
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mRecvDataRet:Lcom/android/internal/telephony/cat/ReceiveDataResult;

    .line 81
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->needCopy:I

    .line 83
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Channel;->isChannelOpened:Z

    .line 183
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Channel;->mStop:Z

    .line 89
    iput p1, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelId:I

    .line 90
    iput p2, p0, Lcom/android/internal/telephony/cat/Channel;->mLinkMode:I

    .line 91
    iput p3, p0, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    .line 92
    iput-object p4, p0, Lcom/android/internal/telephony/cat/Channel;->mAddress:Ljava/net/InetAddress;

    .line 93
    iput p5, p0, Lcom/android/internal/telephony/cat/Channel;->mPort:I

    .line 94
    iput p6, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    .line 96
    iput-object p7, p0, Lcom/android/internal/telephony/cat/Channel;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cat/Channel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/Channel;->mStop:Z

    return v0
.end method


# virtual methods
.method protected checkBufferSize()I
    .locals 7

    .prologue
    const/16 v6, 0xd2

    .line 146
    const/4 v2, 0x0

    .line 147
    .local v2, minBufferSize:I
    const/4 v1, 0x0

    .line 148
    .local v1, maxBufferSize:I
    const/4 v0, 0x0

    .line 150
    .local v0, defaultBufferSize:I
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 151
    :cond_0
    const/16 v2, 0xff

    .line 152
    const/16 v1, 0x578

    .line 153
    const/16 v0, 0x400

    .line 160
    :cond_1
    :goto_0
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBufferSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " minBufferSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " maxBufferSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    if-lt v3, v2, :cond_4

    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    if-gt v3, v1, :cond_4

    .line 163
    const-string v3, "[BIP]"

    const-string v4, "buffer size is normal"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v3, 0x0

    .line 180
    :goto_1
    return v3

    .line 154
    :cond_2
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 155
    :cond_3
    const/16 v2, 0xff

    .line 156
    const/16 v1, 0x578

    .line 157
    const/16 v0, 0x400

    goto :goto_0

    .line 166
    :cond_4
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    if-le v3, v1, :cond_6

    .line 167
    const-string v3, "[BIP]"

    const-string v4, "buffer size is too large, change it to maximum value"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    .line 175
    :goto_2
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    if-ge v3, v6, :cond_5

    .line 176
    const-string v3, "[BIP]"

    const-string v4, "buffer size is smaller than 255, change it to MAX_APDU_SIZE"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iput v6, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    .line 180
    :cond_5
    const/4 v3, 0x3

    goto :goto_1

    .line 170
    :cond_6
    const-string v3, "[BIP]"

    const-string v4, "buffer size is too small, change it to default value"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iput v0, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    goto :goto_2
.end method

.method public abstract closeChannel()I
.end method

.method public dataAvailable(I)V
    .locals 7
    .parameter "bufferSize"

    .prologue
    const/4 v6, 0x6

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    new-instance v1, Lcom/android/internal/telephony/cat/CatResponseMessage;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(I)V

    .line 114
    .local v1, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    const/4 v2, 0x7

    new-array v0, v2, [B

    .line 115
    .local v0, additionalInfo:[B
    const/16 v2, -0x48

    aput-byte v2, v0, v4

    .line 116
    aput-byte v3, v0, v5

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/Channel;->getChannelId()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 118
    const/4 v2, 0x3

    aput-byte v4, v0, v2

    .line 120
    const/4 v2, 0x4

    const/16 v3, -0x49

    aput-byte v3, v0, v2

    .line 121
    const/4 v2, 0x5

    aput-byte v5, v0, v2

    .line 123
    const/16 v2, 0xff

    if-le p1, v2, :cond_0

    .line 124
    const/4 v2, -0x1

    aput-byte v2, v0, v6

    .line 129
    :goto_0
    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setSourceId(I)V

    .line 130
    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setDestinationId(I)V

    .line 131
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 132
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setOneShot(Z)V

    .line 133
    const-string/jumbo v2, "onEventDownload for dataAvailable"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/cat/CatService;->onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 135
    return-void

    .line 126
    :cond_0
    int-to-byte v2, p1

    aput-byte v2, v0, v6

    goto :goto_0
.end method

.method public getChannelId()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelId:I

    return v0
.end method

.method public getChannelStatus()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    return v0
.end method

.method public abstract getTxAvailBufferSize()I
.end method

.method public abstract openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I
.end method

.method public abstract receiveData(ILcom/android/internal/telephony/cat/ReceiveDataResult;)I
.end method

.method public abstract receiveData(I)Lcom/android/internal/telephony/cat/ReceiveDataResult;
.end method

.method protected declared-synchronized requestStop()V
    .locals 3

    .prologue
    .line 187
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Channel;->mStop:Z

    .line 188
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/Channel;->mStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract sendData([BI)I
.end method
