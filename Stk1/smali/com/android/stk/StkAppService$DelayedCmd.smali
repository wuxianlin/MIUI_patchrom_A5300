.class Lcom/android/stk/StkAppService$DelayedCmd;
.super Ljava/lang/Object;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedCmd"
.end annotation


# instance fields
.field id:I

.field msg:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field sim_id:I

.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method constructor <init>(Lcom/android/stk/StkAppService;ILcom/android/internal/telephony/cat/CatCmdMessage;I)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "msg"
    .parameter "sim_id"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/stk/StkAppService$DelayedCmd;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput p2, p0, Lcom/android/stk/StkAppService$DelayedCmd;->id:I

    .line 263
    iput-object p3, p0, Lcom/android/stk/StkAppService$DelayedCmd;->msg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 264
    iput p4, p0, Lcom/android/stk/StkAppService$DelayedCmd;->sim_id:I

    .line 265
    return-void
.end method
