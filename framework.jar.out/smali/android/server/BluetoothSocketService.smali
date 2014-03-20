.class public Landroid/server/BluetoothSocketService;
.super Landroid/bluetooth/IBluetoothSocket$Stub;
.source "BluetoothSocketService.java"


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field public static final BLUETOOTH_SOCKET_SERVICE:Ljava/lang/String; = "bluetooth_socket"

.field private static final TAG:Ljava/lang/String; = "BTSocketService"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothService:Landroid/server/BluetoothService;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .locals 2
    .parameter "context"
    .parameter "bluetoothService"

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothSocket$Stub;-><init>()V

    .line 71
    const-string v0, "[JSR82][Service] Initialization Constructor +++"

    invoke-static {v0}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Landroid/server/BluetoothSocketService;->mBluetoothService:Landroid/server/BluetoothService;

    .line 76
    iget-object v0, p0, Landroid/server/BluetoothSocketService;->mBluetoothService:Landroid/server/BluetoothService;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "[JSR82][Service] This platform does not support Bluetooth."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 82
    iget-object v0, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 84
    const-string v0, "[JSR82][Service] Bluetooth Adapter does not exist!!"

    invoke-static {v0}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 87
    :cond_1
    invoke-direct {p0}, Landroid/server/BluetoothSocketService;->initNative()V

    .line 88
    iget-object v0, p0, Landroid/server/BluetoothSocketService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    const-string v0, "[JSR82][Service] Bluetooth is not enabled!!"

    invoke-static {v0}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 92
    :cond_2
    const-string v0, "[JSR82][Service] Initialization Constructor ---"

    invoke-static {v0}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method private native abortNative(I)I
.end method

.method private native acceptNative(II)I
.end method

.method private native availableNative(I)I
.end method

.method private native bindListenNative(I)I
.end method

.method private native cleanupNative()V
.end method

.method private native connectNative(ILjava/lang/String;I)I
.end method

.method private native destroyNative(I)I
.end method

.method private native getAddrNative(I)Ljava/lang/String;
.end method

.method private native getRealServerChannelNative(I)I
.end method

.method private native initNative()V
.end method

.method private native initSocketNative(IZZI)I
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 306
    const-string v0, "BTSocketService"

    invoke-static {v0, p0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method

.method private native readNative([BIII)I
.end method

.method private native throwErrnoNative(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native writeNative([BIII)I
.end method


# virtual methods
.method public abort(I)I
    .locals 4
    .parameter "fdHandle"

    .prologue
    .line 219
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v1, "[JSR82][Service] abort"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 226
    :cond_0
    const-string v1, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 227
    const/4 v0, -0x1

    .line 230
    :goto_0
    return v0

    .line 229
    :cond_1
    invoke-direct {p0, p1}, Landroid/server/BluetoothSocketService;->abortNative(I)I

    move-result v0

    .line 230
    .local v0, result:I
    goto :goto_0
.end method

.method public accept(II)I
    .locals 4
    .parameter "timeout"
    .parameter "fdHandle"

    .prologue
    .line 160
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "[JSR82][Service] accept"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 165
    const-string v1, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 166
    const/4 v0, -0x1

    .line 170
    :goto_0
    return v0

    .line 169
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothSocketService;->acceptNative(II)I

    move-result v0

    .line 170
    .local v0, result:I
    goto :goto_0
.end method

.method public available(I)I
    .locals 4
    .parameter "fdHandle"

    .prologue
    .line 176
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v1, "[JSR82][Service] available"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 181
    const-string v1, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 182
    const/4 v0, -0x1

    .line 185
    :goto_0
    return v0

    .line 184
    :cond_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothSocketService;->availableNative(I)I

    move-result v0

    .line 185
    .local v0, result:I
    goto :goto_0
.end method

.method public bindListen(I)I
    .locals 4
    .parameter "fdHandle"

    .prologue
    .line 145
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "[JSR82][Service] bindListen"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 150
    const-string v1, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 151
    const/4 v0, -0x1

    .line 154
    :goto_0
    return v0

    .line 153
    :cond_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothSocketService;->bindListenNative(I)I

    move-result v0

    .line 154
    .local v0, result:I
    goto :goto_0
.end method

.method public connect(ILjava/lang/String;I)I
    .locals 4
    .parameter "fdHandle"
    .parameter "sAddr"
    .parameter "channelNumber"

    .prologue
    .line 130
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "[JSR82][Service] connect"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 135
    const-string v1, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 136
    const/4 v0, -0x1

    .line 139
    :goto_0
    return v0

    .line 138
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/server/BluetoothSocketService;->connectNative(ILjava/lang/String;I)I

    move-result v0

    .line 139
    .local v0, result:I
    goto :goto_0
.end method

.method public destroy(I)I
    .locals 4
    .parameter "fdHandle"

    .prologue
    .line 236
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v1, "[JSR82][Service] destroy"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 244
    :cond_0
    const-string v1, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 245
    const/4 v0, -0x1

    .line 248
    :goto_0
    return v0

    .line 247
    :cond_1
    invoke-direct {p0, p1}, Landroid/server/BluetoothSocketService;->destroyNative(I)I

    move-result v0

    .line 248
    .local v0, result:I
    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 101
    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothSocketService;->cleanupNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-super {p0}, Landroid/bluetooth/IBluetoothSocket$Stub;->finalize()V

    .line 107
    return-void

    .line 105
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/bluetooth/IBluetoothSocket$Stub;->finalize()V

    throw v0
.end method

.method public getAddr(I)Ljava/lang/String;
    .locals 3
    .parameter "fdHandle"

    .prologue
    .line 278
    iget-object v0, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v0, "[JSR82][Service] getAddr"

    invoke-static {v0}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 283
    const-string v0, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v0}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 284
    const/4 v0, 0x0

    .line 286
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothSocketService;->getAddrNative(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRealServerChannel(I)I
    .locals 3
    .parameter "channelOriginal"

    .prologue
    .line 292
    iget-object v0, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JSR82][Service] getRealServerChannel. channelOriginal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 297
    const-string v0, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v0}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 298
    const/4 v0, -0x1

    .line 300
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothSocketService;->getRealServerChannelNative(I)I

    move-result v0

    goto :goto_0
.end method

.method public initSocket(IZZI)I
    .locals 4
    .parameter "type"
    .parameter "auth"
    .parameter "encrypt"
    .parameter "port"

    .prologue
    .line 115
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "[JSR82][Service] initSocket"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 120
    const-string v1, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 121
    const/4 v0, -0x1

    .line 124
    :goto_0
    return v0

    .line 123
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/server/BluetoothSocketService;->initSocketNative(IZZI)I

    move-result v0

    .line 124
    .local v0, result:I
    goto :goto_0
.end method

.method public read([BIII)I
    .locals 4
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .parameter "fdHandle"

    .prologue
    .line 191
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 195
    const-string v1, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 196
    const/4 v0, -0x1

    .line 199
    :goto_0
    return v0

    .line 198
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/server/BluetoothSocketService;->readNative([BIII)I

    move-result v0

    .line 199
    .local v0, result:I
    goto :goto_0
.end method

.method public throwErrno(II)V
    .locals 4
    .parameter "errno"
    .parameter "fdHandle"

    .prologue
    .line 254
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v1, "[JSR82][Service] throwErrno"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 261
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothSocketService;->throwErrnoNative(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 265
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v1, "BTSocketService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 271
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    goto :goto_0
.end method

.method public write([BIII)I
    .locals 4
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .parameter "fdHandle"

    .prologue
    .line 205
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 209
    const-string v1, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 210
    const/4 v0, -0x1

    .line 213
    :goto_0
    return v0

    .line 212
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/server/BluetoothSocketService;->writeNative([BIII)I

    move-result v0

    .line 213
    .local v0, result:I
    goto :goto_0
.end method
