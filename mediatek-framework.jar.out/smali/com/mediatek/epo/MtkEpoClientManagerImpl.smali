.class public Lcom/mediatek/epo/MtkEpoClientManagerImpl;
.super Ljava/lang/Object;
.source "MtkEpoClientManagerImpl.java"

# interfaces
.implements Lcom/mediatek/common/epo/MtkEpoClientManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;
    }
.end annotation


# static fields
.field public static final EPO_STATUS_CANCELED:I = 0xcb

.field public static final EPO_STATUS_CANCELING:I = 0xcc

.field public static final EPO_STATUS_IDLE:I = 0x12c

.field public static final EPO_STATUS_STARTING:I = 0xc8

.field public static final EPO_STATUS_UPDATE:Ljava/lang/String; = "com.mediatek.epo.STATUS_UPDATED"

.field public static final EPO_STATUS_UPDATE_FAILURE:I = 0xca

.field public static final EPO_STATUS_UPDATE_SUCCESS:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "MtkEpoClientManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/mediatek/common/epo/MtkEpoStatusListener;",
            "Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mManager:Lcom/mediatek/common/epo/IMtkEpoClientManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mManager:Lcom/mediatek/common/epo/IMtkEpoClientManager;

    .line 27
    iput-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mContext:Landroid/content/Context;

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mListeners:Ljava/util/HashMap;

    .line 42
    const-string v1, "MtkEpoClientManager constructor"

    invoke-direct {p0, v1}, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->log(Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mContext:Landroid/content/Context;

    .line 44
    const-string v1, "mtk-epo-client"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 45
    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 46
    invoke-static {v0}, Lcom/mediatek/common/epo/IMtkEpoClientManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/epo/IMtkEpoClientManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mManager:Lcom/mediatek/common/epo/IMtkEpoClientManager;

    .line 47
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mManager:Lcom/mediatek/common/epo/IMtkEpoClientManager;

    if-nez v1, :cond_0

    .line 48
    const-string v1, "ERR: mManager is null.."

    invoke-direct {p0, v1}, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->log(Ljava/lang/String;)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string v1, "ERR: IBinder is null.."

    invoke-direct {p0, v1}, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 266
    const-string v0, "MtkEpoClientManager"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void
.end method


# virtual methods
.method public addStatusListener(Lcom/mediatek/common/epo/MtkEpoStatusListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;

    .line 161
    .local v1, transport:Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;
    if-nez v1, :cond_1

    .line 162
    new-instance v1, Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;

    .end local v1           #transport:Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;
    invoke-direct {v1, p0, p1}, Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;-><init>(Lcom/mediatek/epo/MtkEpoClientManagerImpl;Lcom/mediatek/common/epo/MtkEpoStatusListener;)V

    .line 164
    .restart local v1       #transport:Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mManager:Lcom/mediatek/common/epo/IMtkEpoClientManager;

    invoke-interface {v2, v1}, Lcom/mediatek/common/epo/IMtkEpoClientManager;->addStatusListener(Lcom/mediatek/common/epo/IMtkEpoStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mManager:Lcom/mediatek/common/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/common/epo/IMtkEpoClientManager;->disable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mManager:Lcom/mediatek/common/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/common/epo/IMtkEpoClientManager;->enable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public enableAutoDownload(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mManager:Lcom/mediatek/common/epo/IMtkEpoClientManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/epo/IMtkEpoClientManager;->enableAutoDownload(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 2
    .parameter "cmd"
    .parameter "extra"

    .prologue
    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mManager:Lcom/mediatek/common/epo/IMtkEpoClientManager;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/epo/IMtkEpoClientManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 262
    :goto_0
    return v1

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 262
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAutoDownloadStatus()Z
    .locals 2

    .prologue
    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mManager:Lcom/mediatek/common/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/common/epo/IMtkEpoClientManager;->getAutoDownloadStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 151
    :goto_0
    return v1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 151
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEpoFileInfo()Lcom/mediatek/common/epo/MtkEpoFileInfo;
    .locals 2

    .prologue
    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mManager:Lcom/mediatek/common/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/common/epo/IMtkEpoClientManager;->getEpoFileInfo()Lcom/mediatek/common/epo/MtkEpoFileInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 195
    :goto_0
    return-object v1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 195
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mManager:Lcom/mediatek/common/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/common/epo/IMtkEpoClientManager;->getProgress()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 134
    :goto_0
    return v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 134
    const/16 v1, 0x12c

    goto :goto_0
.end method

.method public getStatus()Z
    .locals 2

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mManager:Lcom/mediatek/common/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/common/epo/IMtkEpoClientManager;->getStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 125
    :goto_0
    return v1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 125
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUpdatePeriod()J
    .locals 3

    .prologue
    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mManager:Lcom/mediatek/common/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/common/epo/IMtkEpoClientManager;->getUpdatePeriod()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 232
    :goto_0
    return-wide v1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 232
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public removeStatusListener(Lcom/mediatek/common/epo/MtkEpoStatusListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 176
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;

    .line 181
    .local v1, transport:Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;
    if-eqz v1, :cond_1

    .line 182
    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mManager:Lcom/mediatek/common/epo/IMtkEpoClientManager;

    invoke-interface {v2, v1}, Lcom/mediatek/common/epo/IMtkEpoClientManager;->removeStatusListener(Lcom/mediatek/common/epo/IMtkEpoStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v1           #transport:Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;
    :cond_1
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "addr"
    .parameter "port"
    .parameter "userName"
    .parameter "password"

    .prologue
    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mManager:Lcom/mediatek/common/epo/IMtkEpoClientManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/mediatek/common/epo/IMtkEpoClientManager;->setProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setRetryTimes(I)V
    .locals 2
    .parameter "times"

    .prologue
    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mManager:Lcom/mediatek/common/epo/IMtkEpoClientManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/epo/IMtkEpoClientManager;->setRetryTimes(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setTimeout(I)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mManager:Lcom/mediatek/common/epo/IMtkEpoClientManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/epo/IMtkEpoClientManager;->setTimeout(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setUpdatePeriod(J)V
    .locals 2
    .parameter "interval"

    .prologue
    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mManager:Lcom/mediatek/common/epo/IMtkEpoClientManager;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/epo/IMtkEpoClientManager;->setUpdatePeriod(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startDownload()I
    .locals 2

    .prologue
    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mManager:Lcom/mediatek/common/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/common/epo/IMtkEpoClientManager;->startDownload()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 207
    :goto_0
    return v1

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 207
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopDownload()V
    .locals 2

    .prologue
    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl;->mManager:Lcom/mediatek/common/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/common/epo/IMtkEpoClientManager;->stopDownload()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
