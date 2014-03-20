.class Lcom/android/stk/StkMenuActivityII$1;
.super Landroid/content/BroadcastReceiver;
.source "StkMenuActivityII.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkMenuActivityII;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkMenuActivityII;


# direct methods
.method constructor <init>(Lcom/android/stk/StkMenuActivityII;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/stk/StkMenuActivityII$1;->this$0:Lcom/android/stk/StkMenuActivityII;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 114
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, simState:Ljava/lang/String;
    const-string v2, "simId"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 118
    .local v0, simId:I
    const-string v2, "Stk2-MA "

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

    .line 119
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const-string v2, "NOT_READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    :cond_0
    const-string v2, "Stk2-MA "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSendResp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stk/StkMenuActivityII$1;->this$0:Lcom/android/stk/StkMenuActivityII;

    #getter for: Lcom/android/stk/StkMenuActivityII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;
    invoke-static {v4}, Lcom/android/stk/StkMenuActivityII;->access$000(Lcom/android/stk/StkMenuActivityII;)Lcom/android/stk/StkMenuInstance;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/stk/StkMenuInstance;->mSendResp:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lcom/android/stk/StkMenuActivityII$1;->this$0:Lcom/android/stk/StkMenuActivityII;

    #getter for: Lcom/android/stk/StkMenuActivityII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;
    invoke-static {v2}, Lcom/android/stk/StkMenuActivityII;->access$000(Lcom/android/stk/StkMenuActivityII;)Lcom/android/stk/StkMenuInstance;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/stk/StkMenuInstance;->mSendResp:Z

    if-nez v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/android/stk/StkMenuActivityII$1;->this$0:Lcom/android/stk/StkMenuActivityII;

    #getter for: Lcom/android/stk/StkMenuActivityII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;
    invoke-static {v2}, Lcom/android/stk/StkMenuActivityII;->access$000(Lcom/android/stk/StkMenuActivityII;)Lcom/android/stk/StkMenuInstance;

    move-result-object v2

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/android/stk/StkMenuInstance;->sendResponse(I)V

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/android/stk/StkMenuActivityII$1;->this$0:Lcom/android/stk/StkMenuActivityII;

    #getter for: Lcom/android/stk/StkMenuActivityII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;
    invoke-static {v2}, Lcom/android/stk/StkMenuActivityII;->access$000(Lcom/android/stk/StkMenuActivityII;)Lcom/android/stk/StkMenuInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/stk/StkMenuInstance;->cancelTimeOut()V

    .line 128
    iget-object v2, p0, Lcom/android/stk/StkMenuActivityII$1;->this$0:Lcom/android/stk/StkMenuActivityII;

    invoke-virtual {v2}, Lcom/android/stk/StkMenuActivityII;->finish()V

    .line 131
    .end local v0           #simId:I
    .end local v1           #simState:Ljava/lang/String;
    :cond_2
    return-void
.end method
