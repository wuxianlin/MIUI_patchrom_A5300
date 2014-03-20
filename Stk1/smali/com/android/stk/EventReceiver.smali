.class public Lcom/android/stk/EventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EventReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/stk/EventReceiver;Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/stk/EventReceiver;->sendDownloadEvent(Landroid/content/Context;I)V

    return-void
.end method

.method private sendDownloadEvent(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "evdlId"

    .prologue
    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v0, args:Landroid/os/Bundle;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 87
    .local v1, op:[I
    const/4 v2, 0x0

    const/4 v3, 0x6

    aput v3, v1, v2

    .line 88
    const/4 v2, 0x1

    sget v3, Lcom/android/stk/StkAppService;->STK_GEMINI_BROADCAST_ALL:I

    aput v3, v1, v2

    .line 89
    const-string v2, "op"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 90
    const-string v2, "downLoad event id"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/stk/StkAppService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 92
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 67
    move-object v1, p1

    .line 68
    .local v1, c:Landroid/content/Context;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, action:Ljava/lang/String;
    new-instance v2, Lcom/android/stk/EventReceiver$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/stk/EventReceiver$1;-><init>(Lcom/android/stk/EventReceiver;Ljava/lang/String;Landroid/content/Context;)V

    .line 81
    .local v2, r:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 82
    return-void
.end method
