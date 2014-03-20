.class Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/UsbDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbDataStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/UsbDataStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/UsbDataStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/UsbDataStateTracker;Landroid/net/UsbDataStateTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;-><init>(Landroid/net/UsbDataStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 199
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "mediatek.intent.action.USB_DATA_STATE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 200
    const-string v8, "apnType"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, apnType:Ljava/lang/String;
    const-string v8, "UsbDataStateTracker"

    const-string v9, "Broadcast received: mediatek.intent.action.USB_DATA_STATE"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v8, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/UsbDataStateTracker;->access$200(Landroid/net/UsbDataStateTracker;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 325
    .end local v2           #apnType:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 207
    .restart local v2       #apnType:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v8}, Landroid/net/UsbDataStateTracker;->access$300(Landroid/net/UsbDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v9

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 209
    const-class v8, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string/jumbo v9, "state"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 211
    .local v5, state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string/jumbo v8, "reason"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, reason:Ljava/lang/String;
    const-string v8, "apn"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, apnName:Ljava/lang/String;
    iget-object v8, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v8}, Landroid/net/UsbDataStateTracker;->access$300(Landroid/net/UsbDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v8

    const-string/jumbo v9, "networkRoaming"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 216
    const-string v8, "UsbDataStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v10}, Landroid/net/UsbDataStateTracker;->access$200(Landroid/net/UsbDataStateTracker;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " setting isAvailable to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "networkUnvailable"

    invoke-virtual {p2, v10, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v8, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v8}, Landroid/net/UsbDataStateTracker;->access$300(Landroid/net/UsbDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v8

    const-string/jumbo v9, "networkUnvailable"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_3

    :goto_1
    invoke-virtual {v8, v6}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 223
    const-string v8, "UsbDataStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received state="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", old="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mUsbDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {v9}, Landroid/net/UsbDataStateTracker;->access$400(Landroid/net/UsbDataStateTracker;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", reason="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v4, :cond_4

    const-string v6, "(unspecified)"

    :goto_2
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    const-string v8, "android.net.conn.USB_INTERNET_SYSTEM_KEY"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    #setter for: Landroid/net/UsbDataStateTracker;->mUsbInternetSystemType:I
    invoke-static {v6, v8}, Landroid/net/UsbDataStateTracker;->access$502(Landroid/net/UsbDataStateTracker;I)I

    .line 229
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mUsbDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {v6}, Landroid/net/UsbDataStateTracker;->access$400(Landroid/net/UsbDataStateTracker;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v6

    if-eq v6, v5, :cond_7

    .line 230
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #setter for: Landroid/net/UsbDataStateTracker;->mUsbDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {v6, v5}, Landroid/net/UsbDataStateTracker;->access$402(Landroid/net/UsbDataStateTracker;Lcom/android/internal/telephony/PhoneConstants$DataState;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 231
    sget-object v6, Landroid/net/UsbDataStateTracker$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_0

    .line 233
    :pswitch_0
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    invoke-virtual {v6}, Landroid/net/UsbDataStateTracker;->isTeardownRequested()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 234
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    invoke-virtual {v6, v7}, Landroid/net/UsbDataStateTracker;->setTeardownRequested(Z)V

    .line 237
    :cond_2
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/UsbDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v4, v1}, Landroid/net/UsbDataStateTracker;->access$600(Landroid/net/UsbDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move v6, v7

    .line 219
    goto :goto_1

    :cond_4
    move-object v6, v4

    .line 223
    goto :goto_2

    .line 246
    :pswitch_1
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/UsbDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v4, v1}, Landroid/net/UsbDataStateTracker;->access$600(Landroid/net/UsbDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 249
    :pswitch_2
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/UsbDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v4, v1}, Landroid/net/UsbDataStateTracker;->access$600(Landroid/net/UsbDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    :pswitch_3
    iget-object v7, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    const-string v6, "linkProperties"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/LinkProperties;

    #setter for: Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v7, v6}, Landroid/net/UsbDataStateTracker;->access$702(Landroid/net/UsbDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 254
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v6}, Landroid/net/UsbDataStateTracker;->access$700(Landroid/net/UsbDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v6

    if-nez v6, :cond_5

    .line 255
    const-string v6, "UsbDataStateTracker"

    const-string v7, "CONNECTED event did not supply link properties."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    new-instance v7, Landroid/net/LinkProperties;

    invoke-direct {v7}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v6, v7}, Landroid/net/UsbDataStateTracker;->access$702(Landroid/net/UsbDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 258
    :cond_5
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v6}, Landroid/net/UsbDataStateTracker;->access$700(Landroid/net/UsbDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v6

    invoke-static {}, Landroid/net/UsbDataStateTracker;->access$800()[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mUsbInternetSystemType:I
    invoke-static {v8}, Landroid/net/UsbDataStateTracker;->access$500(Landroid/net/UsbDataStateTracker;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 259
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v6}, Landroid/net/UsbDataStateTracker;->access$700(Landroid/net/UsbDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v6

    const-string v7, "208.67.222.222"

    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 261
    iget-object v7, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    const-string v6, "linkCapabilities"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/LinkCapabilities;

    #setter for: Landroid/net/UsbDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v7, v6}, Landroid/net/UsbDataStateTracker;->access$902(Landroid/net/UsbDataStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 263
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v6}, Landroid/net/UsbDataStateTracker;->access$900(Landroid/net/UsbDataStateTracker;)Landroid/net/LinkCapabilities;

    move-result-object v6

    if-nez v6, :cond_6

    .line 264
    const-string v6, "UsbDataStateTracker"

    const-string v7, "CONNECTED event did not supply link capabilities."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    new-instance v7, Landroid/net/LinkCapabilities;

    invoke-direct {v7}, Landroid/net/LinkCapabilities;-><init>()V

    #setter for: Landroid/net/UsbDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v6, v7}, Landroid/net/UsbDataStateTracker;->access$902(Landroid/net/UsbDataStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 267
    :cond_6
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/UsbDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v4, v1}, Landroid/net/UsbDataStateTracker;->access$600(Landroid/net/UsbDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 272
    :cond_7
    const-string v6, "linkPropertiesChanged"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 273
    iget-object v7, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    const-string v6, "linkProperties"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/LinkProperties;

    #setter for: Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v7, v6}, Landroid/net/UsbDataStateTracker;->access$702(Landroid/net/UsbDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 274
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v6}, Landroid/net/UsbDataStateTracker;->access$700(Landroid/net/UsbDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v6

    if-nez v6, :cond_8

    .line 275
    const-string v6, "UsbDataStateTracker"

    const-string v7, "No link property in LINK_PROPERTIES change event."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    new-instance v7, Landroid/net/LinkProperties;

    invoke-direct {v7}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v6, v7}, Landroid/net/UsbDataStateTracker;->access$702(Landroid/net/UsbDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 279
    :cond_8
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Landroid/net/UsbDataStateTracker;->access$300(Landroid/net/UsbDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v6

    iget-object v7, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v7}, Landroid/net/UsbDataStateTracker;->access$300(Landroid/net/UsbDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    iget-object v8, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v8}, Landroid/net/UsbDataStateTracker;->access$300(Landroid/net/UsbDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v4, v8}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mTarget:Landroid/os/Handler;
    invoke-static {v6}, Landroid/net/UsbDataStateTracker;->access$1000(Landroid/net/UsbDataStateTracker;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    iget-object v8, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v8}, Landroid/net/UsbDataStateTracker;->access$300(Landroid/net/UsbDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 283
    .local v3, msg:Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 286
    .end local v1           #apnName:Ljava/lang/String;
    .end local v2           #apnType:Ljava/lang/String;
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #reason:Ljava/lang/String;
    .end local v5           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 288
    const-string v8, "apnType"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    .restart local v2       #apnType:Ljava/lang/String;
    iget-object v8, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/UsbDataStateTracker;->access$200(Landroid/net/UsbDataStateTracker;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 291
    const-string v8, "UsbDataStateTracker"

    const-string v9, "Broadcast received: ACTION_ANY_DATA_CONNECTION_FAILED ignore, mApnType=%s != received apnType=%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v11}, Landroid/net/UsbDataStateTracker;->access$200(Landroid/net/UsbDataStateTracker;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    aput-object v2, v10, v6

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 297
    :cond_a
    const-string/jumbo v6, "reason"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 298
    .restart local v4       #reason:Ljava/lang/String;
    const-string v6, "apn"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    .restart local v1       #apnName:Ljava/lang/String;
    const-string v7, "UsbDataStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " broadcast"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_b

    const-string v6, ""

    :goto_3
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/UsbDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v4, v1}, Landroid/net/UsbDataStateTracker;->access$600(Landroid/net/UsbDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 300
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 304
    .end local v1           #apnName:Ljava/lang/String;
    .end local v2           #apnType:Ljava/lang/String;
    .end local v4           #reason:Ljava/lang/String;
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/DataConnectionTracker;->ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 306
    const-string v6, "UsbDataStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/UsbDataStateTracker;->access$200(Landroid/net/UsbDataStateTracker;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " got ACTION_DATA_CONNECTION_TRACKER_MESSENGER"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v7, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker;->EXTRA_MESSENGER:Ljava/lang/String;

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/Messenger;

    #setter for: Landroid/net/UsbDataStateTracker;->mMessenger:Landroid/os/Messenger;
    invoke-static {v7, v6}, Landroid/net/UsbDataStateTracker;->access$1102(Landroid/net/UsbDataStateTracker;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 308
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 309
    .local v0, ac:Lcom/android/internal/util/AsyncChannel;
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/net/UsbDataStateTracker;->access$1200(Landroid/net/UsbDataStateTracker;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Landroid/net/UsbDataStateTracker;->access$1300(Landroid/net/UsbDataStateTracker;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mMessenger:Landroid/os/Messenger;
    invoke-static {v8}, Landroid/net/UsbDataStateTracker;->access$1100(Landroid/net/UsbDataStateTracker;)Landroid/os/Messenger;

    move-result-object v8

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto/16 :goto_0

    .line 311
    .end local v0           #ac:Lcom/android/internal/util/AsyncChannel;
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.net.conn.READY_FOR_USBINTERNET"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 313
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #calls: Landroid/net/UsbDataStateTracker;->onHandleReadyForUsbInternet()V
    invoke-static {v6}, Landroid/net/UsbDataStateTracker;->access$1400(Landroid/net/UsbDataStateTracker;)V

    goto/16 :goto_0

    .line 315
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 317
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    const-string v8, "connected"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    #setter for: Landroid/net/UsbDataStateTracker;->mUsbConnected:Z
    invoke-static {v6, v7}, Landroid/net/UsbDataStateTracker;->access$1502(Landroid/net/UsbDataStateTracker;Z)Z

    goto/16 :goto_0

    .line 319
    :cond_f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 320
    iget-object v7, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #setter for: Landroid/net/UsbDataStateTracker;->mMassStorageActive:Z
    invoke-static {v7, v6}, Landroid/net/UsbDataStateTracker;->access$1602(Landroid/net/UsbDataStateTracker;Z)Z

    goto/16 :goto_0

    .line 323
    :cond_10
    const-string v6, "UsbDataStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Broadcast received: ignore "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
