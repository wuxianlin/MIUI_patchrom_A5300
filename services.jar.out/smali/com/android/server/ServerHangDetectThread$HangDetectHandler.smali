.class final Lcom/android/server/ServerHangDetectThread$HangDetectHandler;
.super Landroid/os/Handler;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServerHangDetectThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HangDetectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServerHangDetectThread;


# direct methods
.method constructor <init>(Lcom/android/server/ServerHangDetectThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1350
    iput-object p1, p0, Lcom/android/server/ServerHangDetectThread$HangDetectHandler;->this$0:Lcom/android/server/ServerHangDetectThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1353
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1358
    :goto_0
    return-void

    .line 1355
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ServerHangDetectThread$HangDetectHandler;->this$0:Lcom/android/server/ServerHangDetectThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/ServerHangDetectThread;->mHangDetectCompleted:Z

    goto :goto_0

    .line 1353
    :pswitch_data_0
    .packed-switch 0x4d2
        :pswitch_0
    .end packed-switch
.end method
