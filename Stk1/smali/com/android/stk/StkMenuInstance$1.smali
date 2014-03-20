.class Lcom/android/stk/StkMenuInstance$1;
.super Landroid/os/Handler;
.source "StkMenuInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkMenuInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkMenuInstance;


# direct methods
.method constructor <init>(Lcom/android/stk/StkMenuInstance;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/stk/StkMenuInstance$1;->this$0:Lcom/android/stk/StkMenuInstance;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 136
    :goto_0
    return-void

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/android/stk/StkMenuInstance$1;->this$0:Lcom/android/stk/StkMenuInstance;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    .line 133
    iget-object v0, p0, Lcom/android/stk/StkMenuInstance$1;->this$0:Lcom/android/stk/StkMenuInstance;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/stk/StkMenuInstance;->sendResponse(I)V

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
