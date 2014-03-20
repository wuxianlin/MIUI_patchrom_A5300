.class public Lcom/android/stk/StkCmdReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StkCmdReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleCommandMessage(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 6
    .parameter "context"
    .parameter "intent"
    .parameter "sim"

    .prologue
    const/4 v4, 0x1

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v0, args:Landroid/os/Bundle;
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 87
    .local v1, op:[I
    const/4 v3, 0x0

    aput v4, v1, v3

    .line 88
    aput p3, v1, v4

    .line 89
    const-string v3, "op"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 90
    const-string v3, "cmd message"

    const-string v4, "STK CMD"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 92
    const-string v3, "StkCmdReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCommandMessage, args: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v3, "StkCmdReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCommandMessage, sim id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/stk/StkAppService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v2, toService:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 97
    return-void
.end method

.method private handleSessionEnd(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 6
    .parameter "context"
    .parameter "intent"
    .parameter "sim"

    .prologue
    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v0, args:Landroid/os/Bundle;
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 102
    .local v1, op:[I
    const/4 v3, 0x0

    const/4 v4, 0x4

    aput v4, v1, v3

    .line 103
    const/4 v3, 0x1

    aput p3, v1, v3

    .line 104
    const-string v3, "op"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 105
    const-string v3, "StkCmdReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSessionEnd, sim id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/stk/StkAppService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v2, toService:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 109
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.stk.command"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-direct {p0, p1, p2, v2}, Lcom/android/stk/StkCmdReceiver;->handleCommandMessage(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string v1, "android.intent.action.stk.command_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    invoke-direct {p0, p1, p2, v3}, Lcom/android/stk/StkCmdReceiver;->handleCommandMessage(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0

    .line 77
    :cond_2
    const-string v1, "android.intent.action.stk.session_end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    invoke-direct {p0, p1, p2, v2}, Lcom/android/stk/StkCmdReceiver;->handleSessionEnd(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0

    .line 79
    :cond_3
    const-string v1, "android.intent.action.stk.session_end_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-direct {p0, p1, p2, v3}, Lcom/android/stk/StkCmdReceiver;->handleSessionEnd(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0
.end method
