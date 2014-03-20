.class Lcom/android/stk/StkAppService$3;
.super Landroid/os/Handler;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method constructor <init>(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter

    .prologue
    .line 1349
    iput-object p1, p0, Lcom/android/stk/StkAppService$3;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 1351
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1359
    :goto_0
    return-void

    .line 1353
    :pswitch_0
    iget-object v0, p0, Lcom/android/stk/StkAppService$3;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->processPhoneStateChanged(I)V
    invoke-static {v0, v2}, Lcom/android/stk/StkAppService;->access$1700(Lcom/android/stk/StkAppService;I)V

    goto :goto_0

    .line 1356
    :pswitch_1
    iget-object v1, p0, Lcom/android/stk/StkAppService$3;->this$0:Lcom/android/stk/StkAppService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    #calls: Lcom/android/stk/StkAppService;->processSuppServiceFailed(Landroid/os/AsyncResult;I)V
    invoke-static {v1, v0, v2}, Lcom/android/stk/StkAppService;->access$1800(Lcom/android/stk/StkAppService;Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 1351
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
