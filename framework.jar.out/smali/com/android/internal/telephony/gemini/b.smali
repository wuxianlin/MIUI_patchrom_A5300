.class Lcom/android/internal/telephony/gemini/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gemini/GeminiPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/internal/telephony/gemini/GeminiPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 664
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string v1, "[BroadcastReceiver][onReceiver]+"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 665
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 667
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BroadcastReceiver][onReceiver][action] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 668
    const-string v1, "ACTION_ON_SIM_DETECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BroadcastReceiver][onReceiver] mAllowShowNewSimForSIM1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAllowShowNewSimForSIM2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string/jumbo v1, "simCount"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;I)I

    .line 671
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string/jumbo v1, "newSIMStatus"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;I)I

    .line 672
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string/jumbo v1, "simDetectStatus"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Ljava/lang/String;

    .line 674
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 675
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BroadcastReceiver][onReceiver] detectType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 676
    const-string v0, "NEW"

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(Lcom/android/internal/telephony/gemini/GeminiPhone;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j(Lcom/android/internal/telephony/gemini/GeminiPhone;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->broadCastNewSIMDetected(II)V

    .line 716
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string v1, "[BroadcastReceiver][onReceiver]-"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 717
    return-void

    .line 678
    :cond_1
    const-string v0, "REMOVE"

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(Lcom/android/internal/telephony/gemini/GeminiPhone;)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultSIMSettings;->broadCastDefaultSIMRemoved(I)V

    goto :goto_0

    .line 680
    :cond_2
    const-string v0, "SWAP"

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(Lcom/android/internal/telephony/gemini/GeminiPhone;)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultSIMSettings;->broadCastSIMSwapped(I)V

    goto :goto_0

    .line 683
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z

    goto :goto_0

    .line 685
    :cond_4
    const-string v1, "android.intent.action.ACTION_SHOW_NEW_SIM_DETECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 686
    const-string/jumbo v0, "simslot"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 687
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BroadcastReceiver][onReceiver] slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 688
    if-nez v0, :cond_6

    .line 689
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z

    .line 693
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    goto :goto_0

    .line 690
    :cond_6
    if-ne v0, v5, :cond_5

    .line 691
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z

    goto :goto_1

    .line 694
    :cond_7
    const-string v1, "action_pin_dismiss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 695
    const-string/jumbo v0, "simslot"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 696
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BroadcastReceiver][onReceiver] slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 697
    if-nez v0, :cond_9

    .line 698
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z

    .line 702
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    goto/16 :goto_0

    .line 699
    :cond_9
    if-ne v0, v5, :cond_8

    .line 700
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z

    goto :goto_2

    .line 703
    :cond_a
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    const-string/jumbo v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 705
    const-string/jumbo v1, "simId"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 706
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BroadcastReceiver][onReceiver] slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " simStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 707
    const-string v2, "READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 708
    if-nez v1, :cond_c

    .line 709
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z

    .line 714
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    goto/16 :goto_0

    .line 710
    :cond_c
    if-ne v1, v5, :cond_b

    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z

    goto :goto_3
.end method
