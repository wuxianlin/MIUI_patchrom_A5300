.class Lcom/android/stk/StkDialogInstance$1;
.super Landroid/os/Handler;
.source "StkDialogInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkDialogInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkDialogInstance;


# direct methods
.method constructor <init>(Lcom/android/stk/StkDialogInstance;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/stk/StkDialogInstance$1;->this$0:Lcom/android/stk/StkDialogInstance;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 98
    :pswitch_0
    iget-object v0, p0, Lcom/android/stk/StkDialogInstance$1;->this$0:Lcom/android/stk/StkDialogInstance;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/stk/StkDialogInstance;->sendResponse(I)V

    .line 99
    iget-object v0, p0, Lcom/android/stk/StkDialogInstance$1;->this$0:Lcom/android/stk/StkDialogInstance;

    iget-object v0, v0, Lcom/android/stk/StkDialogInstance;->parent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
