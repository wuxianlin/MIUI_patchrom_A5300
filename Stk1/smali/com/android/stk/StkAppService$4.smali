.class Lcom/android/stk/StkAppService$4;
.super Landroid/content/BroadcastReceiver;
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
    .line 2484
    iput-object p1, p0, Lcom/android/stk/StkAppService$4;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2487
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2488
    .local v1, evtAction:Ljava/lang/String;
    const/4 v0, 0x4

    .line 2490
    .local v0, evdl:I
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mStkLocaleChangedReceiver() - evtAction["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2492
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2493
    const-string v3, "Stk-SAS "

    const-string v4, "mStkLocaleChangedReceiver() - Received[LOCALE_CHANGED]"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2494
    const/4 v0, 0x7

    .line 2499
    const/4 v2, 0x0

    .line 2500
    .local v2, i:I
    const/4 v2, 0x0

    :goto_0
    sget v3, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge v2, v3, :cond_1

    .line 2502
    iget-object v3, p0, Lcom/android/stk/StkAppService$4;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->SendEventDownloadMsg(II)V
    invoke-static {v3, v0, v2}, Lcom/android/stk/StkAppService;->access$1900(Lcom/android/stk/StkAppService;II)V

    .line 2500
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2496
    .end local v2           #i:I
    :cond_0
    const-string v3, "Stk-SAS "

    const-string v4, "mStkLocaleChangedReceiver() - Received needn\'t handle!"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2504
    :cond_1
    return-void
.end method
