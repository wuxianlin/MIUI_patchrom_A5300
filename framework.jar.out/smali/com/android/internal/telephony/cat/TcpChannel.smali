.class Lcom/android/internal/telephony/cat/TcpChannel;
.super Lcom/android/internal/telephony/cat/Channel;
.source "Channel.java"


# instance fields
.field mInput:Ljava/io/DataInputStream;

.field mOutput:Ljava/io/BufferedOutputStream;

.field mSocket:Ljava/net/Socket;

.field rt:Ljava/lang/Thread;


# direct methods
.method constructor <init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;)V
    .locals 1
    .parameter "cid"
    .parameter "linkMode"
    .parameter "protocolType"
    .parameter "address"
    .parameter "port"
    .parameter "bufferSize"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    .line 312
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/cat/Channel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;)V

    .line 306
    iput-object v0, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 307
    iput-object v0, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    .line 308
    iput-object v0, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    .line 313
    return-void
.end method


# virtual methods
.method public closeChannel()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 363
    const/4 v0, 0x0

    .line 366
    .local v0, ret:I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 367
    iget-object v1, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 368
    iget-object v1, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    iput-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 372
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 373
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    .line 374
    iput v3, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    .line 377
    :goto_0
    return v0

    .line 369
    :catch_0
    move-exception v1

    .line 371
    iput-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 372
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 373
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    .line 374
    iput v3, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    goto :goto_0

    .line 371
    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 372
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 373
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    .line 374
    iput v3, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    throw v1
.end method

.method public getTxAvailBufferSize()I
    .locals 4

    .prologue
    .line 475
    iget-object v1, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    sub-int v0, v1, v2

    .line 476
    .local v0, txRemaining:I
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "available tx buffer size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return v0
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I
    .locals 8
    .parameter "cmdMsg"

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x5

    .line 316
    const/4 v2, 0x0

    .line 318
    .local v2, ret:I
    iget v4, p0, Lcom/android/internal/telephony/cat/Channel;->mLinkMode:I

    if-nez v4, :cond_1

    .line 320
    :try_start_0
    new-instance v4, Ljava/net/Socket;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/Channel;->mAddress:Ljava/net/InetAddress;

    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mPort:I

    invoke-direct {v4, v5, v6}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 321
    iget-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 322
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 334
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    if-ne v4, v7, :cond_3

    .line 336
    :try_start_1
    const-string v4, "[BIP]"

    const-string v5, "TCP stream is open"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v4, Ljava/io/DataInputStream;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    .line 338
    new-instance v4, Ljava/io/BufferedOutputStream;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    .line 339
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;-><init>(Lcom/android/internal/telephony/cat/Channel;Ljava/io/DataInputStream;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->rt:Ljava/lang/Thread;

    .line 340
    iget-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->rt:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 350
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/TcpChannel;->checkBufferSize()I

    move-result v2

    .line 351
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 352
    const-string v3, "[BIP]"

    const-string v4, "TcpChannel-openChannel: buffer size is modified"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    iput v3, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    .line 355
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 356
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    :cond_1
    move v3, v2

    .line 359
    :goto_1
    return v3

    .line 324
    :cond_2
    const/4 v4, 0x7

    :try_start_2
    iput v4, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, e:Ljava/io/IOException;
    const-string v4, "[BIP]"

    const-string v5, "Fail to create tcp socket"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 329
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 330
    .local v1, e2:Ljava/lang/Exception;
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to create tcp socket "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 341
    .end local v1           #e2:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 342
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "[BIP]"

    const-string v5, "Fail to create data stream"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 346
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    const-string v4, "[BIP]"

    const-string/jumbo v5, "tcp socket is not open"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public receiveData(ILcom/android/internal/telephony/cat/ReceiveDataResult;)I
    .locals 9
    .parameter "requestSize"
    .parameter "rdr"

    .prologue
    const/4 v2, 0x5

    .line 481
    const-string v3, "[BIP]"

    const-string/jumbo v4, "new receiveData method"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const/4 v1, 0x0

    .line 484
    .local v1, ret:I
    if-nez p2, :cond_0

    .line 485
    const-string v3, "[BIP]"

    const-string/jumbo v4, "rdr is null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :goto_0
    return v2

    .line 489
    :cond_0
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "receiveData "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    new-array v3, p1, [B

    iput-object v3, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 492
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-lt v3, p1, :cond_2

    .line 493
    const-string v3, "[BIP]"

    const-string/jumbo v4, "rx buffer has enough data"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v5, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 499
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 500
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-nez v3, :cond_1

    .line 501
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 502
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    :try_start_2
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    iput v3, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 508
    const-string v2, "[BIP]"

    const-string/jumbo v3, "rx buffer has enough data - end"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v2, v1

    .line 529
    goto :goto_0

    .line 502
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "[BIP]"

    const-string v4, "fail copy rx buffer out 1"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 510
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    const-string v3, "[BIP]"

    const-string/jumbo v4, "rx buffer is insufficient - being"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :try_start_5
    iget-object v4, p0, Lcom/android/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    .line 514
    :try_start_6
    iget-object v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v5, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-static {v3, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 515
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 516
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 517
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 518
    const/4 v3, 0x0

    :try_start_7
    iput v3, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1

    .line 519
    const/16 v1, 0x9

    .line 526
    const-string v2, "[BIP]"

    const-string/jumbo v3, "rx buffer is insufficient - end"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 517
    :catchall_1
    move-exception v3

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v3
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_1

    .line 521
    :catch_1
    move-exception v0

    .line 523
    .restart local v0       #e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "[BIP]"

    const-string v4, "fail copy rx buffer out 2"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public receiveData(I)Lcom/android/internal/telephony/cat/ReceiveDataResult;
    .locals 10
    .parameter "requestCount"

    .prologue
    .line 382
    new-instance v5, Lcom/android/internal/telephony/cat/ReceiveDataResult;

    invoke-direct {v5}, Lcom/android/internal/telephony/cat/ReceiveDataResult;-><init>()V

    .line 384
    .local v5, ret:Lcom/android/internal/telephony/cat/ReceiveDataResult;
    new-array v6, p1, [B

    iput-object v6, v5, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 385
    const-string v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "receiveData "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-lt v6, p1, :cond_1

    .line 389
    :try_start_0
    const-string v6, "[BIP]"

    const-string v7, "Start to copy data from buffer"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v8, v5, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v6, p1

    iput v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 393
    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v6, p1

    iput v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 394
    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    iput v6, v5, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    .line 438
    :cond_0
    :goto_0
    return-object v5

    .line 398
    :cond_1
    move v4, p1

    .line 399
    .local v4, needCopy:I
    iget v0, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 400
    .local v0, canCopy:I
    const/4 v3, 0x0

    .line 401
    .local v3, countCopied:I
    const/4 v1, 0x0

    .line 403
    .local v1, canExitLoop:Z
    :goto_1
    if-nez v1, :cond_0

    .line 404
    if-le v4, v0, :cond_2

    .line 406
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v8, v5, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v6, v7, v8, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 409
    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v6, v0

    iput v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 410
    add-int/2addr v3, v0

    .line 411
    sub-int/2addr v4, v0

    .line 425
    :goto_2
    if-nez v4, :cond_3

    .line 426
    const/4 v1, 0x1

    goto :goto_1

    .line 416
    :cond_2
    :try_start_2
    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v8, v5, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v6, v7, v8, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 419
    add-int/2addr v3, v4

    .line 420
    const/4 v4, 0x0

    goto :goto_2

    .line 429
    :cond_3
    :try_start_3
    iget-object v6, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    array-length v9, v9

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    .line 430
    .local v2, count:I
    iput v2, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 431
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 432
    .end local v2           #count:I
    :catch_0
    move-exception v6

    goto :goto_1

    .line 421
    :catch_1
    move-exception v6

    goto :goto_2

    .line 412
    :catch_2
    move-exception v6

    goto :goto_2

    .line 395
    .end local v0           #canCopy:I
    .end local v1           #canExitLoop:Z
    .end local v3           #countCopied:I
    .end local v4           #needCopy:I
    :catch_3
    move-exception v6

    goto :goto_0
.end method

.method public sendData([BI)I
    .locals 8
    .parameter "data"
    .parameter "mode"

    .prologue
    const/4 v3, 0x5

    .line 442
    const/4 v1, 0x0

    .line 443
    .local v1, ret:I
    iget-object v4, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    array-length v4, v4

    iget v5, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    sub-int v2, v4, v5

    .line 445
    .local v2, txRemaining:I
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendData: size of buffer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendData: size of buffer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :try_start_0
    array-length v4, p1

    if-lt v2, v4, :cond_1

    .line 450
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    array-length v7, p1

    invoke-static {p1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    iget v4, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    array-length v5, p1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :goto_0
    const/4 v4, 0x1

    if-ne p2, v4, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 461
    :try_start_1
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SEND_DATA_MODE_IMMEDIATE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 463
    iget-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 464
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 471
    .end local v1           #ret:I
    :cond_0
    :goto_1
    return v1

    .line 453
    .restart local v1       #ret:I
    :cond_1
    :try_start_2
    const-string v4, "[BIP]"

    const-string/jumbo v5, "sendData - tx buffer is not enough"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    move v1, v3

    .line 456
    goto :goto_1

    .line 465
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 466
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v1, v3

    .line 467
    goto :goto_1
.end method
