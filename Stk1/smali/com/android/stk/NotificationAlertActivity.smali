.class public Lcom/android/stk/NotificationAlertActivity;
.super Landroid/app/Activity;
.source "NotificationAlertActivity.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Stk-NA "


# instance fields
.field private mButtonClicked:Landroid/view/View$OnClickListener;

.field private mNotificationMessage:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/android/stk/NotificationAlertActivity;->mNotificationMessage:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/android/stk/NotificationAlertActivity;->mTitle:Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/android/stk/NotificationAlertActivity$1;

    invoke-direct {v0, p0}, Lcom/android/stk/NotificationAlertActivity$1;-><init>(Lcom/android/stk/NotificationAlertActivity;)V

    iput-object v0, p0, Lcom/android/stk/NotificationAlertActivity;->mButtonClicked:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x3

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0, v9}, Lcom/android/stk/NotificationAlertActivity;->requestWindowFeature(I)Z

    .line 60
    invoke-virtual {p0}, Lcom/android/stk/NotificationAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 61
    .local v5, window:Landroid/view/Window;
    const v6, 0x7f030005

    invoke-virtual {p0, v6}, Lcom/android/stk/NotificationAlertActivity;->setContentView(I)V

    .line 63
    const v6, 0x7f070010

    invoke-virtual {p0, v6}, Lcom/android/stk/NotificationAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 64
    .local v2, mMessageView:Landroid/widget/TextView;
    const v6, 0x7f070006

    invoke-virtual {p0, v6}, Lcom/android/stk/NotificationAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 65
    .local v3, okButton:Landroid/widget/Button;
    const v6, 0x7f070012

    invoke-virtual {p0, v6}, Lcom/android/stk/NotificationAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 73
    .local v0, cancelButton:Landroid/widget/Button;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    const-string v6, "Stk-NA "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: null Point: mMessageView["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] okButton["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] cancelButton["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/stk/NotificationAlertActivity;->finish()V

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/android/stk/NotificationAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 80
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "sim id"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 81
    .local v4, sim_id:I
    const-string v6, "Stk-NA "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NotificationAlertActivity, sim id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v6, Lcom/android/stk/StkApp;->mIdleMessage:[Ljava/lang/String;

    aget-object v6, v6, v4

    iput-object v6, p0, Lcom/android/stk/NotificationAlertActivity;->mNotificationMessage:Ljava/lang/String;

    .line 83
    sget-object v6, Lcom/android/stk/StkApp;->mPLMN:[Ljava/lang/String;

    aget-object v6, v6, v4

    iput-object v6, p0, Lcom/android/stk/NotificationAlertActivity;->mTitle:Ljava/lang/String;

    .line 85
    const v6, 0x108051d

    invoke-virtual {v5, v9, v6}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 87
    iget-object v6, p0, Lcom/android/stk/NotificationAlertActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/stk/NotificationAlertActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v6, p0, Lcom/android/stk/NotificationAlertActivity;->mButtonClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v6, p0, Lcom/android/stk/NotificationAlertActivity;->mButtonClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const-string v6, "Stk-NA "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Idle Text Title["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/stk/NotificationAlertActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v6, "Stk-NA "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Idle Text["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/stk/NotificationAlertActivity;->mNotificationMessage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v6, p0, Lcom/android/stk/NotificationAlertActivity;->mNotificationMessage:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method
