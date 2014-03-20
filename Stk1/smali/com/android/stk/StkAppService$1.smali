.class Lcom/android/stk/StkAppService$1;
.super Landroid/content/BroadcastReceiver;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stk/StkAppService;->initNotify()V
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
    .line 352
    iput-object p1, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 354
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    const/4 v1, 0x0

    .line 357
    .local v1, j:I
    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge v1, v2, :cond_0

    .line 358
    sget-object v2, Lcom/android/stk/StkApp;->mPLMN:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v3, p2}, Lcom/android/stk/StkAppService;->access$000(Lcom/android/stk/StkAppService;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    .end local v1           #j:I
    :cond_0
    return-void
.end method
