.class Lcom/android/stk/StkInputInstance$1;
.super Landroid/os/Handler;
.source "StkInputInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkInputInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkInputInstance;


# direct methods
.method constructor <init>(Lcom/android/stk/StkInputInstance;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/stk/StkInputInstance$1;->this$0:Lcom/android/stk/StkInputInstance;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/android/stk/StkInputInstance$1;->this$0:Lcom/android/stk/StkInputInstance;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/stk/StkInputInstance;->sendResponse(I)V

    .line 132
    const-string v0, "Stk-IA "

    const-string v1, "Msg timeout to finish"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/android/stk/StkInputInstance$1;->this$0:Lcom/android/stk/StkInputInstance;

    iget-object v0, v0, Lcom/android/stk/StkInputInstance;->parent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 136
    :pswitch_1
    const-string v0, "Stk-IA "

    const-string v1, "Msg finish to finish"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/stk/StkInputInstance$1;->this$0:Lcom/android/stk/StkInputInstance;

    iget-object v0, v0, Lcom/android/stk/StkInputInstance;->parent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
