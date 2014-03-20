.class Lcom/android/internal/telephony/cat/UdpChannel;
.super Lcom/android/internal/telephony/cat/Channel;
.source "Channel.java"


# static fields
.field private static final SOCKET_TIMEOUT:I = 0xbb8


# instance fields
.field mSocket:Ljava/net/DatagramSocket;

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

    .line 539
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/cat/Channel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;)V

    .line 534
    iput-object v0, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    .line 536
    iput-object v0, p0, Lcom/android/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    .line 540
    return-void
.end method


# virtual methods
.method public closeChannel()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 571
    const/4 v0, 0x0

    .line 573
    .local v0, ret:I
    const-string v1, "[BIP]"

    const-string v2, "closeChannel enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-object v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/UdpChannel;->requestStop()V

    .line 578
    iput-object v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    .line 580
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_1

    .line 582
    const-string v1, "[BIP]"

    const-string v2, "closeSocket enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 585
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    .line 587
    iput-object v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    .line 588
    iput-object v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 589
    iput-object v3, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    .line 592
    :cond_1
    return v0
.end method

.method public getTxAvailBufferSize()I
    .locals 4

    .prologue
    .line 692
    iget-object v1, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    sub-int v0, v1, v2

    .line 693
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

    .line 694
    return v0
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I
    .locals 5
    .parameter "cmdMsg"

    .prologue
    .line 543
    const/4 v1, 0x0

    .line 545
    .local v1, ret:I
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UDP link mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/Channel;->mLinkMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget v2, p0, Lcom/android/internal/telephony/cat/Channel;->mLinkMode:I

    if-nez v2, :cond_1

    .line 549
    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    .line 550
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    .line 551
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;-><init>(Lcom/android/internal/telephony/cat/Channel;Ljava/net/DatagramSocket;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    .line 552
    iget-object v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 553
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UdpChannel: sock status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/UdpChannel;->checkBufferSize()I

    move-result v1

    .line 559
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 560
    const-string v2, "[BIP]"

    const-string v3, "UdpChannel-openChannel: buffer size is modified"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget v2, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    iput v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    .line 563
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 564
    iget v2, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    .line 567
    :cond_1
    return v1

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public receiveData(ILcom/android/internal/telephony/cat/ReceiveDataResult;)I
    .locals 9
    .parameter "requestSize"
    .parameter "rdr"

    .prologue
    const/4 v2, 0x5

    .line 698
    const-string v3, "[BIP]"

    const-string/jumbo v4, "new receiveData method"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const/4 v1, 0x0

    .line 701
    .local v1, ret:I
    if-nez p2, :cond_0

    .line 702
    const-string v3, "[BIP]"

    const-string/jumbo v4, "rdr is null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :goto_0
    return v2

    .line 706
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

    .line 708
    new-array v3, p1, [B

    iput-object v3, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 709
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-lt v3, p1, :cond_2

    .line 710
    const-string v3, "[BIP]"

    const-string/jumbo v4, "rx buffer has enough data - begin"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v5, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 715
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 716
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 717
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-nez v3, :cond_1

    .line 718
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 719
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 720
    :try_start_2
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    iput v3, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 725
    const-string v2, "[BIP]"

    const-string/jumbo v3, "rx buffer has enough data - end"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v2, v1

    .line 746
    goto :goto_0

    .line 719
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

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "[BIP]"

    const-string v4, "fail copy rx buffer out 1"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 727
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    const-string v3, "[BIP]"

    const-string/jumbo v4, "rx buffer is insufficient - being"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :try_start_5
    iget-object v4, p0, Lcom/android/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    .line 731
    :try_start_6
    iget-object v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v5, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-static {v3, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 732
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 733
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 734
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 735
    const/4 v3, 0x0

    :try_start_7
    iput v3, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1

    .line 736
    const/16 v1, 0x9

    .line 743
    const-string v2, "[BIP]"

    const-string/jumbo v3, "rx buffer is insufficient - end"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 734
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

    .line 738
    :catch_1
    move-exception v0

    .line 740
    .restart local v0       #e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "[BIP]"

    const-string v4, "fail copy rx buffer out 2"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public receiveData(I)Lcom/android/internal/telephony/cat/ReceiveDataResult;
    .locals 11
    .parameter "requestCount"

    .prologue
    .line 596
    new-instance v6, Lcom/android/internal/telephony/cat/ReceiveDataResult;

    invoke-direct {v6}, Lcom/android/internal/telephony/cat/ReceiveDataResult;-><init>()V

    .line 597
    .local v6, ret:Lcom/android/internal/telephony/cat/ReceiveDataResult;
    new-array v7, p1, [B

    iput-object v7, v6, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 599
    const-string v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "receiveData "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-lt v7, p1, :cond_1

    .line 603
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v8, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v9, v6, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 604
    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v7, p1

    iput v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 605
    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v7, p1

    iput v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 606
    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    iput v7, v6, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    .line 654
    :cond_0
    :goto_0
    return-object v6

    .line 610
    :cond_1
    move v4, p1

    .line 611
    .local v4, needCopy:I
    iget v0, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 612
    .local v0, canCopy:I
    const/4 v2, 0x0

    .line 613
    .local v2, countCopied:I
    const/4 v1, 0x0

    .line 615
    .local v1, canExitLoop:Z
    :goto_1
    if-nez v1, :cond_0

    .line 616
    if-le v4, v0, :cond_2

    .line 618
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v8, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v9, v6, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v7, v8, v9, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 620
    add-int/2addr v2, v0

    .line 621
    sub-int/2addr v4, v0

    .line 622
    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v7, v0

    iput v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 623
    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v7, v0

    iput v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 638
    :goto_2
    if-nez v4, :cond_3

    .line 639
    const/4 v1, 0x1

    goto :goto_1

    .line 628
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v8, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v9, v6, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v7, v8, v9, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 630
    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 631
    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 632
    add-int/2addr v2, v4

    .line 633
    const/4 v4, 0x0

    goto :goto_2

    .line 642
    :cond_3
    :try_start_3
    iget-object v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    const/16 v8, 0xbb8

    invoke-virtual {v7, v8}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 643
    new-instance v5, Ljava/net/DatagramPacket;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    array-length v8, v8

    invoke-direct {v5, v7, v8}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 644
    .local v5, packet:Ljava/net/DatagramPacket;
    iget-object v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v7, v5}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 645
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 646
    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getLength()I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 647
    .end local v5           #packet:Ljava/net/DatagramPacket;
    :catch_0
    move-exception v3

    .line 648
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 634
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    goto :goto_2

    .line 624
    :catch_2
    move-exception v7

    goto :goto_2

    .line 607
    .end local v0           #canCopy:I
    .end local v1           #canExitLoop:Z
    .end local v2           #countCopied:I
    .end local v4           #needCopy:I
    :catch_3
    move-exception v7

    goto :goto_0
.end method

.method public sendData([BI)I
    .locals 9
    .parameter "data"
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 658
    const/4 v7, 0x0

    .line 659
    .local v7, ret:I
    iget-object v1, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    array-length v1, v1

    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    sub-int v8, v1, v3

    .line 661
    .local v8, txRemaining:I
    const-string v1, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendData: size of data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v1, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendData: size of buffer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    array-length v1, p1

    if-lt v8, v1, :cond_1

    .line 666
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    iget v4, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    array-length v5, p1

    invoke-static {p1, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 667
    iget v1, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    array-length v3, p1

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 674
    :goto_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 675
    const-string v1, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send UDP data("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/Channel;->mAddress:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/Channel;->mPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/Channel;->mAddress:Ljava/net/InetAddress;

    iget v5, p0, Lcom/android/internal/telephony/cat/Channel;->mPort:I

    invoke-direct/range {v0 .. v5}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 678
    .local v0, packet:Ljava/net/DatagramPacket;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_0

    .line 680
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 681
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 688
    .end local v0           #packet:Ljava/net/DatagramPacket;
    :cond_0
    :goto_1
    return v7

    .line 671
    :cond_1
    const-string v1, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendData - tx buffer is not enough:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 682
    .restart local v0       #packet:Ljava/net/DatagramPacket;
    :catch_0
    move-exception v6

    .line 683
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 668
    .end local v0           #packet:Ljava/net/DatagramPacket;
    .end local v6           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
