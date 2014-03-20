.class Landroid/server/BluetoothService$UserSwitchedHandler;
.super Landroid/os/Handler;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserSwitchedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method public constructor <init>(Landroid/server/BluetoothService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 287
    iput-object p1, p0, Landroid/server/BluetoothService$UserSwitchedHandler;->this$0:Landroid/server/BluetoothService;

    .line 288
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 289
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v6, 0x64

    const/16 v5, 0xb

    .line 293
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v2, p0, Landroid/server/BluetoothService$UserSwitchedHandler;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->getState()I

    move-result v0

    .line 295
    .local v0, state:I
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 299
    :pswitch_0
    const-string v2, "BluetoothService"

    const-string v3, "MESSAGE_USER_SWITCHED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    if-ne v0, v5, :cond_1

    .line 303
    iget-object v2, p0, Landroid/server/BluetoothService$UserSwitchedHandler;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mUserSwitchedHandler:Landroid/server/BluetoothService$UserSwitchedHandler;
    invoke-static {v2}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$UserSwitchedHandler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/server/BluetoothService$UserSwitchedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 304
    .local v1, userMsg:Landroid/os/Message;
    iget v2, p1, Landroid/os/Message;->arg2:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 307
    iget-object v2, p0, Landroid/server/BluetoothService$UserSwitchedHandler;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mUserSwitchedHandler:Landroid/server/BluetoothService$UserSwitchedHandler;
    invoke-static {v2}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$UserSwitchedHandler;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v1, v3, v4}, Landroid/server/BluetoothService$UserSwitchedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 309
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delay MESSAGE_USER_SWITCHED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    .end local v1           #userMsg:Landroid/os/Message;
    :cond_1
    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    .line 313
    iget-object v2, p0, Landroid/server/BluetoothService$UserSwitchedHandler;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mUserSwitchedHandler:Landroid/server/BluetoothService$UserSwitchedHandler;
    invoke-static {v2}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$UserSwitchedHandler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/server/BluetoothService$UserSwitchedHandler;->removeMessages(I)V

    .line 314
    iget-object v2, p0, Landroid/server/BluetoothService$UserSwitchedHandler;->this$0:Landroid/server/BluetoothService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/server/BluetoothService;->disable(Z)Z

    .line 315
    iget-object v2, p0, Landroid/server/BluetoothService$UserSwitchedHandler;->this$0:Landroid/server/BluetoothService;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/server/BluetoothService;->waitForSwitching(I)Z

    .line 316
    iget-object v2, p0, Landroid/server/BluetoothService$UserSwitchedHandler;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->enableNoAutoConnect()Z

    .line 317
    iget-object v2, p0, Landroid/server/BluetoothService$UserSwitchedHandler;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v2, v5}, Landroid/server/BluetoothService;->waitForSwitching(I)Z

    goto :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
