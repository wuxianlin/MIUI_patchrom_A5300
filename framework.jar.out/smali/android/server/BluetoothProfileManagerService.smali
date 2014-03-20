.class public Landroid/server/BluetoothProfileManagerService;
.super Landroid/bluetooth/IBluetoothProfileManager$Stub;
.source "BluetoothProfileManagerService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothPbap$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothProfileManagerService$2;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final BLUETOOTH_PROFILEMANAGER_SERVICE:Ljava/lang/String; = "bluetooth_profile_manager"

.field private static final DBG:Z = true

.field private static final MESSAGE_MONITOR_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothProfileManagerService"

.field private static sConenctedProfileList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothProfileManager$Profile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBluetoothEnableTime:J

.field private mBroadcastreceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mServiceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothProfileManager$Profile;",
            "Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 125
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothProfileManager$Stub;-><init>()V

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/server/BluetoothProfileManagerService;->mBluetoothEnableTime:J

    .line 91
    new-instance v0, Landroid/server/BluetoothProfileManagerService$1;

    invoke-direct {v0, p0}, Landroid/server/BluetoothProfileManagerService$1;-><init>(Landroid/server/BluetoothProfileManagerService;)V

    iput-object v0, p0, Landroid/server/BluetoothProfileManagerService;->mBroadcastreceiver:Landroid/content/BroadcastReceiver;

    .line 127
    iput-object p1, p0, Landroid/server/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/server/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/server/BluetoothProfileManagerService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 131
    iget-object v0, p0, Landroid/server/BluetoothProfileManagerService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Landroid/server/BluetoothProfileManagerService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.profilemanager.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Landroid/server/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mBroadcastreceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/server/BluetoothProfileManagerService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/server/BluetoothProfileManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/server/BluetoothProfileManagerService;->onBluetoothEnable()V

    return-void
.end method

.method static synthetic access$200(Landroid/server/BluetoothProfileManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/server/BluetoothProfileManagerService;->onBluetoothDisable()V

    return-void
.end method

.method static synthetic access$300(Landroid/server/BluetoothProfileManagerService;Landroid/bluetooth/BluetoothProfileManager$Profile;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothProfileManagerService;->onProfileStateUpdate(Landroid/bluetooth/BluetoothProfileManager$Profile;I)V

    return-void
.end method

.method static synthetic access$400(Landroid/server/BluetoothProfileManagerService;Landroid/bluetooth/BluetoothProfileManager$Profile;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothProfileManagerService;->updateProfileState(Landroid/bluetooth/BluetoothProfileManager$Profile;I)V

    return-void
.end method

.method private checkProfileService(Landroid/bluetooth/BluetoothProfileManager$Profile;)Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    .locals 1
    .parameter "profile"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/server/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Landroid/server/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    .line 357
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getProfileBehavior(Landroid/bluetooth/BluetoothProfileManager$Profile;)Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    .locals 3
    .parameter "profile"

    .prologue
    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    sget-object v1, Landroid/server/BluetoothProfileManagerService$2;->$SwitchMap$android$bluetooth$BluetoothProfileManager$Profile:[I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 437
    const-string/jumbo v1, "unexpected profile"

    invoke-static {v1}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 440
    :goto_0
    :pswitch_0
    return-object v0

    .line 398
    :pswitch_1
    new-instance v0, Landroid/bluetooth/BluetoothFtp$Client;

    .end local v0           #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothFtp$Client;-><init>(Landroid/content/Context;)V

    .line 399
    .restart local v0       #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 401
    :pswitch_2
    new-instance v0, Landroid/bluetooth/BluetoothFtp$Server;

    .end local v0           #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothFtp$Server;-><init>(Landroid/content/Context;)V

    .line 402
    .restart local v0       #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 404
    :pswitch_3
    new-instance v0, Landroid/bluetooth/BluetoothBipi;

    .end local v0           #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothBipi;-><init>(Landroid/content/Context;)V

    .line 405
    .restart local v0       #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 407
    :pswitch_4
    new-instance v0, Landroid/bluetooth/BluetoothBipr;

    .end local v0           #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothBipr;-><init>(Landroid/content/Context;)V

    .line 408
    .restart local v0       #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 411
    :pswitch_5
    new-instance v0, Landroid/bluetooth/BluetoothSimap;

    .end local v0           #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothSimap;-><init>(Landroid/content/Context;)V

    .line 412
    .restart local v0       #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 423
    :pswitch_6
    new-instance v0, Landroid/bluetooth/BluetoothDun;

    .end local v0           #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothDun;-><init>(Landroid/content/Context;)V

    .line 424
    .restart local v0       #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 426
    :pswitch_7
    new-instance v0, Landroid/bluetooth/BluetoothPrxm;

    .end local v0           #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothPrxm;-><init>(Landroid/content/Context;)V

    .line 427
    .restart local v0       #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 429
    :pswitch_8
    new-instance v0, Landroid/bluetooth/BluetoothPrxr;

    .end local v0           #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothPrxr;-><init>(Landroid/content/Context;)V

    .line 430
    .restart local v0       #profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method

.method private isConnectableToMultiDevices(Landroid/bluetooth/BluetoothProfileManager$Profile;)Z
    .locals 2
    .parameter "profile"

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isConnectableToMultiDevices:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 212
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HID:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 511
    const-string v0, "BluetoothProfileManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][profile manager]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void
.end method

.method private onBluetoothDisable()V
    .locals 4

    .prologue
    .line 152
    const-string/jumbo v2, "onBluetoothDisable"

    invoke-static {v2}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Landroid/server/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 154
    .local v1, service:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 159
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    invoke-interface {v2}, Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->close()V

    .line 160
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 162
    .end local v0           #entry:Ljava/util/Map$Entry;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mServiceList size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/server/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 164
    const-string v2, "android.bluetooth.profilemanager.action.DISABLE_PROFILES"

    invoke-direct {p0, v2}, Landroid/server/BluetoothProfileManagerService;->sendMonitorMessage(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method private onBluetoothEnable()V
    .locals 2

    .prologue
    .line 137
    const-string/jumbo v0, "onBluetoothEnable"

    invoke-static {v0}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 140
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_A2DP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-direct {p0, v0}, Landroid/server/BluetoothProfileManagerService;->updateProfileServiceList(Landroid/bluetooth/BluetoothProfileManager$Profile;)V

    .line 144
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HEADSET:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-direct {p0, v0}, Landroid/server/BluetoothProfileManagerService;->updateProfileServiceList(Landroid/bluetooth/BluetoothProfileManager$Profile;)V

    .line 146
    const-string v0, "PRX"

    const-string v1, "hard code service registered."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PRXM:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-direct {p0, v0}, Landroid/server/BluetoothProfileManagerService;->updateProfileServiceList(Landroid/bluetooth/BluetoothProfileManager$Profile;)V

    .line 148
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PRXR:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-direct {p0, v0}, Landroid/server/BluetoothProfileManagerService;->updateProfileServiceList(Landroid/bluetooth/BluetoothProfileManager$Profile;)V

    .line 149
    return-void
.end method

.method private onProfileStateUpdate(Landroid/bluetooth/BluetoothProfileManager$Profile;I)V
    .locals 2
    .parameter "profile"
    .parameter "state"

    .prologue
    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onProfileStateUpdate():profile->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",state->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 364
    const/16 v0, 0xb

    if-ne p2, v0, :cond_0

    .line 365
    invoke-direct {p0, p1}, Landroid/server/BluetoothProfileManagerService;->updateProfileServiceList(Landroid/bluetooth/BluetoothProfileManager$Profile;)V

    .line 368
    :cond_0
    return-void
.end method

.method private sendMonitorMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMonitorMessage():action->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 446
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method private updateBluetoothNotification(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBluetoothNotification:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 490
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.profilemanager.action.UPDATE_ NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 492
    const-string v1, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 493
    const-string v1, "android.bluetooth.profilemanager.extra.EXTRA_PREVIOUS_STATE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 499
    :goto_0
    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 500
    return-void

    .line 495
    :cond_0
    const-string v1, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 496
    const-string v1, "android.bluetooth.profilemanager.extra.EXTRA_PREVIOUS_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateProfileServiceList(Landroid/bluetooth/BluetoothProfileManager$Profile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 372
    const/4 v0, 0x0

    .line 374
    .local v0, profileBehavior:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    invoke-direct {p0, p1}, Landroid/server/BluetoothProfileManagerService;->getProfileBehavior(Landroid/bluetooth/BluetoothProfileManager$Profile;)Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_0

    .line 381
    iget-object v1, p0, Landroid/server/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateProfileState(Landroid/bluetooth/BluetoothProfileManager$Profile;I)V
    .locals 4
    .parameter "profile"
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateProfileState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 455
    sget-object v1, Landroid/server/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    .line 456
    .local v0, mProfileSize:I
    if-eq p2, v3, :cond_0

    if-nez p2, :cond_5

    .line 457
    :cond_0
    sget-object v1, Landroid/server/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 458
    sget-object v1, Landroid/server/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is added to connected list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 479
    :cond_1
    :goto_0
    if-lez v0, :cond_2

    sget-object v1, Landroid/server/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 480
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/server/BluetoothProfileManagerService;->updateBluetoothNotification(Z)V

    .line 482
    :cond_2
    if-nez v0, :cond_3

    sget-object v1, Landroid/server/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 483
    invoke-direct {p0, v3}, Landroid/server/BluetoothProfileManagerService;->updateBluetoothNotification(Z)V

    .line 485
    :cond_3
    return-void

    .line 461
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add profile:the profile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") has been connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_5
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 464
    sget-object v1, Landroid/server/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 465
    sget-object v1, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HID:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 466
    sget-object v1, Landroid/server/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_6
    sget-object v1, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HID:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/server/BluetoothProfileManagerService;->getConnectedDevices(Ljava/lang/String;)[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_7

    .line 469
    sget-object v1, Landroid/server/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 472
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " still has connected device"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 475
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove profile failure:the profile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not in connected profile list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public connect(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .parameter "profileName"
    .parameter "device"

    .prologue
    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connect:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " device:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 173
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v2

    .line 174
    .local v2, profile:Landroid/bluetooth/BluetoothProfileManager$Profile;
    invoke-direct {p0, v2}, Landroid/server/BluetoothProfileManagerService;->checkProfileService(Landroid/bluetooth/BluetoothProfileManager$Profile;)Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v1

    .line 175
    .local v1, mService:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-nez v1, :cond_0

    .line 176
    const-string v5, "connect():mService is null"

    invoke-static {v5}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 177
    const/4 v5, 0x0

    .line 205
    :goto_0
    return v5

    .line 180
    :cond_0
    invoke-direct {p0, v2}, Landroid/server/BluetoothProfileManagerService;->isConnectableToMultiDevices(Landroid/bluetooth/BluetoothProfileManager$Profile;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 181
    const/4 v4, 0x0

    .line 182
    .local v4, sinks:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    sget-object v5, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_A2DP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 183
    const-string v5, "in connect profile equals Bluetooth_A2DP"

    invoke-static {v5}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 188
    :goto_1
    if-eqz v4, :cond_2

    .line 189
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 191
    .local v3, sink:Landroid/bluetooth/BluetoothDevice;
    invoke-interface {v1, v3}, Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_2

    .line 186
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #sink:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    invoke-interface {v1}, Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->getConnectedDevices()Ljava/util/Set;

    move-result-object v4

    goto :goto_1

    .line 201
    .end local v4           #sinks:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_2
    invoke-interface {v1, p2}, Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 205
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public disconnect(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "profileName"
    .parameter "device"

    .prologue
    const/4 v3, 0x0

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnect:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " device:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 218
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v2

    .line 219
    .local v2, profile:Landroid/bluetooth/BluetoothProfileManager$Profile;
    const/4 v0, 0x0

    .line 220
    .local v0, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-direct {p0, v2}, Landroid/server/BluetoothProfileManagerService;->checkProfileService(Landroid/bluetooth/BluetoothProfileManager$Profile;)Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v1

    .line 221
    .local v1, mService:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-nez v1, :cond_1

    .line 222
    const-string v4, "disconnect():mService is null"

    invoke-static {v4}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 251
    :cond_0
    :goto_0
    return v3

    .line 227
    :cond_1
    invoke-interface {v1}, Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->getConnectedDevices()Ljava/util/Set;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    invoke-interface {v1, p2}, Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 251
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getConnectedDevices(Ljava/lang/String;)[Landroid/bluetooth/BluetoothDevice;
    .locals 5
    .parameter "profileName"

    .prologue
    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedDevices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 257
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v2

    .line 258
    .local v2, profile:Landroid/bluetooth/BluetoothProfileManager$Profile;
    const/4 v0, 0x0

    .line 259
    .local v0, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-direct {p0, v2}, Landroid/server/BluetoothProfileManagerService;->checkProfileService(Landroid/bluetooth/BluetoothProfileManager$Profile;)Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v1

    .line 260
    .local v1, mService:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-eqz v1, :cond_1

    .line 262
    invoke-interface {v1}, Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->getConnectedDevices()Ljava/util/Set;

    move-result-object v0

    .line 271
    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    .end local v0           #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 273
    .restart local v0       #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/bluetooth/BluetoothDevice;

    return-object v3

    .line 268
    :cond_1
    const-string v3, "getConnectedDevices():mService is null"

    invoke-static {v3}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPreferred(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .parameter "profileName"
    .parameter "device"

    .prologue
    const/4 v4, -0x1

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferred:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 335
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v1

    .line 336
    .local v1, profile:Landroid/bluetooth/BluetoothProfileManager$Profile;
    invoke-direct {p0, v1}, Landroid/server/BluetoothProfileManagerService;->checkProfileService(Landroid/bluetooth/BluetoothProfileManager$Profile;)Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v0

    .line 337
    .local v0, mService:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-nez v0, :cond_0

    .line 338
    const-string v2, "getPreferred():mService is null"

    invoke-static {v2}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 347
    :cond_0
    return v4
.end method

.method public getState(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "profileName"
    .parameter "device"

    .prologue
    .line 279
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v1

    .line 280
    .local v1, profile:Landroid/bluetooth/BluetoothProfileManager$Profile;
    const/4 v2, 0x5

    .line 281
    .local v2, state:I
    invoke-direct {p0, v1}, Landroid/server/BluetoothProfileManagerService;->checkProfileService(Landroid/bluetooth/BluetoothProfileManager$Profile;)Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v0

    .line 282
    .local v0, mService:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-eqz v0, :cond_0

    .line 284
    invoke-interface {v0, p2}, Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 292
    :goto_0
    return v2

    .line 290
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public isPreferred(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "profileName"
    .parameter "device"

    .prologue
    const/4 v4, 0x0

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPreferred:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 298
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v1

    .line 299
    .local v1, profile:Landroid/bluetooth/BluetoothProfileManager$Profile;
    invoke-direct {p0, v1}, Landroid/server/BluetoothProfileManagerService;->checkProfileService(Landroid/bluetooth/BluetoothProfileManager$Profile;)Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v0

    .line 300
    .local v0, mService:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-nez v0, :cond_0

    .line 301
    const-string v2, "isPreferred():mService is null"

    invoke-static {v2}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 308
    :cond_0
    return v4
.end method

.method public onServiceConnected(Landroid/bluetooth/BluetoothPbap;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 504
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 508
    return-void
.end method

.method public setPreferred(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 4
    .parameter "profileName"
    .parameter "device"
    .parameter "preferred"

    .prologue
    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreferred:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 314
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v1

    .line 315
    .local v1, profile:Landroid/bluetooth/BluetoothProfileManager$Profile;
    invoke-direct {p0, v1}, Landroid/server/BluetoothProfileManagerService;->checkProfileService(Landroid/bluetooth/BluetoothProfileManager$Profile;)Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v0

    .line 316
    .local v0, mService:Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-nez v0, :cond_0

    .line 317
    const-string/jumbo v2, "setPreferred():mService is null"

    invoke-static {v2}, Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 318
    const/4 v2, 0x0

    .line 329
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
