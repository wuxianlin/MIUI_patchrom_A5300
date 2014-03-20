.class Lcom/android/stk/StkAppService$7;
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
    .line 2588
    iput-object p1, p0, Lcom/android/stk/StkAppService$7;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2591
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.aciton.stk.REMOVE_IDLE_TEXT_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2592
    const-string v0, "Stk-SAS "

    const-string v1, "remove Stk2 idle mode text by Refresh command"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    iget-object v0, p0, Lcom/android/stk/StkAppService$7;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$2100(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkAppService$7;->this$0:Lcom/android/stk/StkAppService;

    const/4 v2, 0x1

    #calls: Lcom/android/stk/StkAppService;->getNotificationId(I)I
    invoke-static {v1, v2}, Lcom/android/stk/StkAppService;->access$2000(Lcom/android/stk/StkAppService;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2595
    :cond_0
    return-void
.end method
