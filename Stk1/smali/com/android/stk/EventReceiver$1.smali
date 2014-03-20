.class Lcom/android/stk/EventReceiver$1;
.super Ljava/lang/Thread;
.source "EventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stk/EventReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/EventReceiver;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/stk/EventReceiver;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/stk/EventReceiver$1;->this$0:Lcom/android/stk/EventReceiver;

    iput-object p2, p0, Lcom/android/stk/EventReceiver$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/stk/EventReceiver$1;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/stk/EventReceiver$1;->val$action:Ljava/lang/String;

    const-string v1, "android.intent.action.stk.USER_ACTIVITY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/stk/EventReceiver$1;->this$0:Lcom/android/stk/EventReceiver;

    iget-object v1, p0, Lcom/android/stk/EventReceiver$1;->val$c:Landroid/content/Context;

    const/4 v2, 0x4

    #calls: Lcom/android/stk/EventReceiver;->sendDownloadEvent(Landroid/content/Context;I)V
    invoke-static {v0, v1, v2}, Lcom/android/stk/EventReceiver;->access$000(Lcom/android/stk/EventReceiver;Landroid/content/Context;I)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/android/stk/EventReceiver$1;->val$action:Ljava/lang/String;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/android/stk/EventReceiver$1;->this$0:Lcom/android/stk/EventReceiver;

    iget-object v1, p0, Lcom/android/stk/EventReceiver$1;->val$c:Landroid/content/Context;

    const/4 v2, 0x7

    #calls: Lcom/android/stk/EventReceiver;->sendDownloadEvent(Landroid/content/Context;I)V
    invoke-static {v0, v1, v2}, Lcom/android/stk/EventReceiver;->access$000(Lcom/android/stk/EventReceiver;Landroid/content/Context;I)V

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/android/stk/EventReceiver$1;->val$action:Ljava/lang/String;

    const-string v1, "android.intent.action.stk.BROWSER_TERMINATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/stk/EventReceiver$1;->this$0:Lcom/android/stk/EventReceiver;

    iget-object v1, p0, Lcom/android/stk/EventReceiver$1;->val$c:Landroid/content/Context;

    const/16 v2, 0x8

    #calls: Lcom/android/stk/EventReceiver;->sendDownloadEvent(Landroid/content/Context;I)V
    invoke-static {v0, v1, v2}, Lcom/android/stk/EventReceiver;->access$000(Lcom/android/stk/EventReceiver;Landroid/content/Context;I)V

    goto :goto_0
.end method
