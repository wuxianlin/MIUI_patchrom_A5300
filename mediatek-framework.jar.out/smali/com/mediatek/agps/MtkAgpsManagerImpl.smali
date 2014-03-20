.class public Lcom/mediatek/agps/MtkAgpsManagerImpl;
.super Ljava/lang/Object;
.source "MtkAgpsManagerImpl.java"

# interfaces
.implements Lcom/mediatek/common/agps/MtkAgpsManager;


# static fields
.field public static final AGPS_DIALOG_MESSAGE:Ljava/lang/String; = "com.mediatek.agps.AGPS_DIALOG_MESSAGE"

.field public static final AGPS_DISABLE_UPDATE:Ljava/lang/String; = "com.mediatek.agps.DISABLE_UPDATED"

.field public static final AGPS_MESSAGE:Ljava/lang/String; = "com.mediatek.agps.AGPS_MESSAGE"

.field public static final AGPS_MODE_MA:I = 0x0

.field public static final AGPS_MODE_MB:I = 0x1

.field public static final AGPS_MODE_STANDALONE:I = 0x2

.field public static final AGPS_NI_RESPONSE_ACCEPT:I = 0x1

.field public static final AGPS_NI_RESPONSE_DENY:I = 0x2

.field public static final AGPS_NI_RESPONSE_NO_RESP:I = 0x0

.field public static final AGPS_NOTIFY_ALLOW_NO_ANSWER:I = 0x2

.field public static final AGPS_NOTIFY_CNT:I = 0x5

.field public static final AGPS_NOTIFY_DENY_NO_ANSWER:I = 0x3

.field public static final AGPS_NOTIFY_NONE:I = 0x0

.field public static final AGPS_NOTIFY_ONLY:I = 0x1

.field public static final AGPS_NOTIFY_PRIVACY:I = 0x4

.field public static final AGPS_OMACP_PROFILE_UPDATE:Ljava/lang/String; = "com.mediatek.agps.OMACP_UPDATED"

.field public static final AGPS_PROFILE_UPDATE:Ljava/lang/String; = "com.mediatek.agps.PROFILE_UPDATED"

.field public static final AGPS_STATUS_UPDATE:Ljava/lang/String; = "com.mediatek.agps.STATUS_UPDATED"

.field public static final AREA_EVENT_TYPE_ENTERING:I = 0x0

.field public static final AREA_EVENT_TYPE_INSIDE:I = 0x1

.field public static final AREA_EVENT_TYPE_LEAVING:I = 0x3

.field public static final AREA_EVENT_TYPE_OUTSIDE:I = 0x2

.field public static final EPO_EVENT:Ljava/lang/String; = "com.mediatek.agps.EPO_EVENT"

.field public static final EPO_EVENT_SERVER_CONNECTED:I = 0x17

.field public static final EPO_EVENT_SERVER_CONNECT_BEGIN:I = 0x16

.field public static final EPO_EVENT_SERVER_DATA_RECEIVED:I = 0x18

.field public static final EPO_EVENT_SERVER_DATA_VALID:I = 0x1a

.field public static final EPO_EVENT_SERVER_DISCONNECTED:I = 0x19

.field public static final LAT_SIGN_NORTH:I = 0x0

.field public static final LAT_SIGN_SOUTH:I = 0x1

.field public static final POS_METHOD_AUTO:I = 0x4

.field public static final POS_METHOD_ECID:I = 0x5

.field public static final POS_METHOD_HISTORICAL:I = 0x7

.field public static final POS_METHOD_NO_POSITION:I = 0x6

.field public static final POS_METHOD_SESSION_INFO:I = 0x8

.field public static final POS_METHOD_SET_ASSIST:I = 0x0

.field public static final POS_METHOD_SET_ASSIST_PREF:I = 0x2

.field public static final POS_METHOD_SET_BASE:I = 0x1

.field public static final POS_METHOD_SET_BASE_PREF:I = 0x3

.field public static final SET_ID_CNT:I = 0x2

.field public static final SET_ID_IPV4:I = 0x1

.field public static final SET_ID_MSISDN:I = 0x0

.field public static final SI_MODE_MA:I = 0x0

.field public static final SI_MODE_MB:I = 0x1

.field public static final SI_MODE_STANDALONE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MtkAgps"

.field public static final TARGET_AREA_TYPE_CIRCULAR:I = 0x0

.field public static final TARGET_AREA_TYPE_ELLIPTICAL:I = 0x1

.field public static final TARGET_AREA_TYPE_POLYGON:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private sService:Lcom/mediatek/common/agps/IMtkAgpsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    .line 128
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->mContext:Landroid/content/Context;

    .line 129
    const-string v1, "mtk-agps"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 130
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/agps/IMtkAgpsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    .line 131
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    if-nez v1, :cond_0

    .line 132
    const-string v1, "ERR: getService() sService is still null.."

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    .line 133
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 416
    const-string v0, "MtkAgps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MtkAgpsManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 420
    const-string v0, "MtkAgps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MtkAgpsManagerService][agps] ERR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 3

    .prologue
    .line 144
    const-string v1, "disable"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->disable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in disable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 136
    const-string v1, "enable"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->enable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 3
    .parameter "command"
    .parameter "extra"

    .prologue
    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extraCommand command="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/agps/IMtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 309
    :goto_0
    return v1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in extraCommand:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    .line 309
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCdmaProfile()Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;
    .locals 3

    .prologue
    .line 404
    const-string v1, "getCdmaProfile"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 406
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->getCdmaProfile()Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 410
    :goto_0
    return-object v1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in getProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    .line 410
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConfig()Lcom/mediatek/common/agps/MtkAgpsConfig;
    .locals 3

    .prologue
    .line 186
    const-string v1, "getConfig"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->getConfig()Lcom/mediatek/common/agps/MtkAgpsConfig;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 192
    :goto_0
    return-object v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in getConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    .line 192
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCpStatus()Z
    .locals 3

    .prologue
    .line 284
    const-string v1, "getCpStatus"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->getCpStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 290
    :goto_0
    return v1

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in getCpStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    .line 290
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMode()I
    .locals 3

    .prologue
    .line 223
    const-string v1, "getMode"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->getMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 229
    :goto_0
    return v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in getMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    .line 229
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNiStatus()Z
    .locals 3

    .prologue
    .line 266
    const-string v1, "getNiStatus"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->getNiStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 272
    :goto_0
    return v1

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in getNiStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    .line 272
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfile()Lcom/mediatek/common/agps/MtkAgpsProfile;
    .locals 3

    .prologue
    .line 204
    const-string v1, "getProfile"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->getProfile()Lcom/mediatek/common/agps/MtkAgpsProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 210
    :goto_0
    return-object v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in getProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    .line 210
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRoamingStatus()Z
    .locals 3

    .prologue
    .line 293
    const-string v1, "getRoamingStatus"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->getRoamingStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 299
    :goto_0
    return v1

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in getRoamingStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    .line 299
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSI3PartyMsisdn()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 376
    const-string v1, "getSI3PartyMsisdn"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 378
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->getSI3PartyMsisdn()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 382
    :goto_0
    return-object v1

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in setSI3PartyMsisdn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    .line 382
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSILRMsisdn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 385
    const-string v1, "getSILRMsisdn"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->getSILRMsisdn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 391
    :goto_0
    return-object v1

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in setSI3PartyMsisdn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    .line 391
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStatus()Z
    .locals 3

    .prologue
    .line 152
    const-string v1, "getStatus"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->getStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 158
    :goto_0
    return v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in getStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    .line 158
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUpStatus()Z
    .locals 3

    .prologue
    .line 275
    const-string v1, "getUpStatus"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->getUpStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 281
    :goto_0
    return v1

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in getUpStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    .line 281
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public niUserResponse(II)V
    .locals 3
    .parameter "sessionId"
    .parameter "response"

    .prologue
    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "niUserResponse sssionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/agps/IMtkAgpsManager;->niUserResponse(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in niUserResponse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCdmaProfile(Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;)V
    .locals 3
    .parameter "p"

    .prologue
    .line 396
    const-string v1, "setCdmaProfile"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 398
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->setCdmaProfile(Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in setProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setConfig(Lcom/mediatek/common/agps/MtkAgpsConfig;)V
    .locals 5
    .parameter "config"

    .prologue
    .line 162
    const-string v3, "setConfig"

    invoke-direct {p0, v3}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 163
    iget-object v3, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->targetAreaList:[Landroid/os/Parcelable;

    if-eqz v3, :cond_2

    .line 164
    iget-object v3, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->targetAreaList:[Landroid/os/Parcelable;

    array-length v3, v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setConfig the length of targetAreaList is over 10, length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->targetAreaList:[Landroid/os/Parcelable;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 170
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->targetAreaList:[Landroid/os/Parcelable;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 171
    iget-object v3, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->targetAreaList:[Landroid/os/Parcelable;

    aget-object v2, v3, v1

    .line 172
    .local v2, p:Landroid/os/Parcelable;
    if-nez v2, :cond_1

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setConfig targetAreaList index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    .end local v1           #i:I
    .end local v2           #p:Landroid/os/Parcelable;
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v3, p1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->setConfig(Lcom/mediatek/common/agps/MtkAgpsConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERR: RemoteException in setConfig:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCpEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCpEnable enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->setCpEnable(Z)V
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
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in setCpEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMode mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->setMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in setMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNiEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNiEnable enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->setNiEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in setNiEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 196
    const-string v1, "setProfile"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->setProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in setProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRoamingEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRoamingEnable enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->setRoamingEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in setRoamingEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSI3PartyMsisdn([Ljava/lang/String;)V
    .locals 3
    .parameter "msisdnList"

    .prologue
    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSI3PartyMsisdn msisdnList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->setSI3PartyMsisdn([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in setSI3PartyMsisdn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSILRMsisdn(Ljava/lang/String;)V
    .locals 3
    .parameter "msisdn"

    .prologue
    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSILRMsisdn msisdn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->setSILRMsisdn(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in setSILRMsisdn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUpEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUpEnable enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->setUpEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in setUpEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startSIAreaEvent()V
    .locals 3

    .prologue
    .line 340
    const-string v1, "startSIAreaEvent"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->startSIAreaEvent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in startSIAreaEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startSILR()V
    .locals 3

    .prologue
    .line 324
    const-string v1, "startSILR"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->startSILR()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in startSILR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startSIPeiodic()V
    .locals 3

    .prologue
    .line 332
    const-string v1, "startSIPeiodic"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->startSIPeiodic()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in startSIPeiodic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopTriggeredSession()V
    .locals 3

    .prologue
    .line 349
    const-string v1, "stopTriggeredSession"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->log(Ljava/lang/String;)V

    .line 351
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerImpl;->sService:Lcom/mediatek/common/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/common/agps/IMtkAgpsManager;->stopTriggeredSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in stopTriggeredSession:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method
