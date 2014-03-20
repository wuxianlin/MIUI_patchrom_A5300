.class Lcom/android/stk/StkDialogActivityII$1;
.super Landroid/content/BroadcastReceiver;
.source "StkDialogActivityII.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkDialogActivityII;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkDialogActivityII;


# direct methods
.method constructor <init>(Lcom/android/stk/StkDialogActivityII;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/stk/StkDialogActivityII$1;->this$0:Lcom/android/stk/StkDialogActivityII;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 92
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, simState:Ljava/lang/String;
    const-string v2, "simId"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 96
    .local v0, simId:I
    const-string v2, "Stk2-DA"

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

    const-string v4, "], mSimId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stk/StkDialogActivityII$1;->this$0:Lcom/android/stk/StkDialogActivityII;

    #getter for: Lcom/android/stk/StkDialogActivityII;->mDialogInstance:Lcom/android/stk/StkDialogInstance;
    invoke-static {v4}, Lcom/android/stk/StkDialogActivityII;->access$000(Lcom/android/stk/StkDialogActivityII;)Lcom/android/stk/StkDialogInstance;

    move-result-object v4

    iget v4, v4, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/android/stk/StkDialogActivityII$1;->this$0:Lcom/android/stk/StkDialogActivityII;

    #getter for: Lcom/android/stk/StkDialogActivityII;->mDialogInstance:Lcom/android/stk/StkDialogInstance;
    invoke-static {v2}, Lcom/android/stk/StkDialogActivityII;->access$000(Lcom/android/stk/StkDialogActivityII;)Lcom/android/stk/StkDialogInstance;

    move-result-object v2

    iget v2, v2, Lcom/android/stk/StkDialogInstance;->mSimId:I

    if-ne v0, v2, :cond_1

    const-string v2, "NOT_READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/android/stk/StkDialogActivityII$1;->this$0:Lcom/android/stk/StkDialogActivityII;

    #getter for: Lcom/android/stk/StkDialogActivityII;->mDialogInstance:Lcom/android/stk/StkDialogInstance;
    invoke-static {v2}, Lcom/android/stk/StkDialogActivityII;->access$000(Lcom/android/stk/StkDialogActivityII;)Lcom/android/stk/StkDialogInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/stk/StkDialogInstance;->cancelTimeOut()V

    .line 102
    iget-object v2, p0, Lcom/android/stk/StkDialogActivityII$1;->this$0:Lcom/android/stk/StkDialogActivityII;

    #getter for: Lcom/android/stk/StkDialogActivityII;->mDialogInstance:Lcom/android/stk/StkDialogInstance;
    invoke-static {v2}, Lcom/android/stk/StkDialogActivityII;->access$000(Lcom/android/stk/StkDialogActivityII;)Lcom/android/stk/StkDialogInstance;

    move-result-object v2

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/stk/StkDialogInstance;->sendResponse(IZ)V

    .line 103
    iget-object v2, p0, Lcom/android/stk/StkDialogActivityII$1;->this$0:Lcom/android/stk/StkDialogActivityII;

    invoke-virtual {v2}, Lcom/android/stk/StkDialogActivityII;->finish()V

    .line 106
    .end local v0           #simId:I
    .end local v1           #simState:Ljava/lang/String;
    :cond_1
    return-void
.end method
