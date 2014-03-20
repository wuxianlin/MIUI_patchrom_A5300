.class Lcom/android/server/WiredAccessoryManager$5;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WiredAccessoryManager;->setDeviceStateLocked(IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method constructor <init>(Lcom/android/server/WiredAccessoryManager;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$5;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 366
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$5;->this$0:Lcom/android/server/WiredAccessoryManager;

    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$5;->this$0:Lcom/android/server/WiredAccessoryManager;

    #calls: Lcom/android/server/WiredAccessoryManager;->getIllegalHeadset()I
    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->access$300(Lcom/android/server/WiredAccessoryManager;)I

    move-result v1

    #setter for: Lcom/android/server/WiredAccessoryManager;->illegal_state:I
    invoke-static {v0, v1}, Lcom/android/server/WiredAccessoryManager;->access$202(Lcom/android/server/WiredAccessoryManager;I)I

    .line 367
    const/16 v0, 0x31

    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$5;->this$0:Lcom/android/server/WiredAccessoryManager;

    #getter for: Lcom/android/server/WiredAccessoryManager;->illegal_state:I
    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->access$200(Lcom/android/server/WiredAccessoryManager;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 368
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "show illegal Headset msg+++++++++++++"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$5;->this$0:Lcom/android/server/WiredAccessoryManager;

    #calls: Lcom/android/server/WiredAccessoryManager;->showheadsetToast()V
    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->access$500(Lcom/android/server/WiredAccessoryManager;)V

    .line 370
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$5;->this$0:Lcom/android/server/WiredAccessoryManager;

    #setter for: Lcom/android/server/WiredAccessoryManager;->illegal_state:I
    invoke-static {v0, v2}, Lcom/android/server/WiredAccessoryManager;->access$202(Lcom/android/server/WiredAccessoryManager;I)I

    .line 375
    :goto_0
    return-void

    .line 372
    :cond_0
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "don\'t show illegal Headset msg+++++++++++++"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$5;->this$0:Lcom/android/server/WiredAccessoryManager;

    #setter for: Lcom/android/server/WiredAccessoryManager;->illegal_state:I
    invoke-static {v0, v2}, Lcom/android/server/WiredAccessoryManager;->access$202(Lcom/android/server/WiredAccessoryManager;I)I

    goto :goto_0
.end method
