.class public Lcom/android/stk/StkLauncherActivityII;
.super Landroid/app/Activity;
.source "StkLauncherActivityII.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v2

    .line 75
    .local v2, service:Lcom/android/stk/StkAppService;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v5}, Lcom/android/stk/StkAppService;->StkQueryAvailable(I)I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 77
    const-string v4, "Stk-LAII"

    const-string v5, "Not available"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/stk/StkLauncherActivityII;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060003

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 79
    .local v3, toast:Landroid/widget/Toast;
    const/16 v4, 0x50

    invoke-virtual {v3, v4, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 80
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 81
    invoke-virtual {p0}, Lcom/android/stk/StkLauncherActivityII;->finish()V

    .line 94
    .end local v3           #toast:Landroid/widget/Toast;
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v0, args:Landroid/os/Bundle;
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 87
    .local v1, op:[I
    const/4 v4, 0x3

    aput v4, v1, v6

    .line 88
    aput v5, v1, v5

    .line 89
    const-string v4, "op"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 90
    const-string v4, "sim id"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/stk/StkAppService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/stk/StkLauncherActivityII;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 93
    invoke-virtual {p0}, Lcom/android/stk/StkLauncherActivityII;->finish()V

    goto :goto_0
.end method
