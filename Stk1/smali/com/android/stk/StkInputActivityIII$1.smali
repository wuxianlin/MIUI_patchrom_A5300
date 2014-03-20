.class Lcom/android/stk/StkInputActivityIII$1;
.super Landroid/content/BroadcastReceiver;
.source "StkInputActivityIII.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkInputActivityIII;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkInputActivityIII;


# direct methods
.method constructor <init>(Lcom/android/stk/StkInputActivityIII;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/stk/StkInputActivityIII$1;->this$0:Lcom/android/stk/StkInputActivityIII;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 108
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, simState:Ljava/lang/String;
    const-string v2, "simId"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 113
    .local v0, simId:I
    const-string v2, "LOGTAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSIMStateChangeReceiver() - simId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]  state["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v2, "NOT_READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/android/stk/StkInputActivityIII$1;->this$0:Lcom/android/stk/StkInputActivityIII;

    #getter for: Lcom/android/stk/StkInputActivityIII;->mInputInstance:Lcom/android/stk/StkInputInstance;
    invoke-static {v2}, Lcom/android/stk/StkInputActivityIII;->access$000(Lcom/android/stk/StkInputActivityIII;)Lcom/android/stk/StkInputInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/stk/StkInputInstance;->cancelTimeOut()V

    .line 119
    iget-object v2, p0, Lcom/android/stk/StkInputActivityIII$1;->this$0:Lcom/android/stk/StkInputActivityIII;

    #getter for: Lcom/android/stk/StkInputActivityIII;->mInputInstance:Lcom/android/stk/StkInputInstance;
    invoke-static {v2}, Lcom/android/stk/StkInputActivityIII;->access$000(Lcom/android/stk/StkInputActivityIII;)Lcom/android/stk/StkInputInstance;

    move-result-object v2

    const/16 v3, 0xc

    const-string v4, "NO"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/stk/StkInputInstance;->sendResponse(ILjava/lang/String;Z)V

    .line 120
    iget-object v2, p0, Lcom/android/stk/StkInputActivityIII$1;->this$0:Lcom/android/stk/StkInputActivityIII;

    invoke-virtual {v2}, Lcom/android/stk/StkInputActivityIII;->finish()V

    .line 123
    .end local v0           #simId:I
    .end local v1           #simState:Ljava/lang/String;
    :cond_1
    return-void
.end method
