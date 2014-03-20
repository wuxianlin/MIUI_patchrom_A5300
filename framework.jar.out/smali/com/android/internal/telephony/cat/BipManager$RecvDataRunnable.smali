.class Lcom/android/internal/telephony/cat/BipManager$RecvDataRunnable;
.super Ljava/lang/Object;
.source "BipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecvDataRunnable"
.end annotation


# instance fields
.field cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field requestDataSize:I

.field response:Landroid/os/Message;

.field result:Lcom/android/internal/telephony/cat/ReceiveDataResult;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/BipManager;ILcom/android/internal/telephony/cat/ReceiveDataResult;Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "size"
    .parameter "result"
    .parameter "cmdMsg"
    .parameter "response"

    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipManager$RecvDataRunnable;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 712
    iput p2, p0, Lcom/android/internal/telephony/cat/BipManager$RecvDataRunnable;->requestDataSize:I

    .line 713
    iput-object p3, p0, Lcom/android/internal/telephony/cat/BipManager$RecvDataRunnable;->result:Lcom/android/internal/telephony/cat/ReceiveDataResult;

    .line 714
    iput-object p4, p0, Lcom/android/internal/telephony/cat/BipManager$RecvDataRunnable;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 715
    iput-object p5, p0, Lcom/android/internal/telephony/cat/BipManager$RecvDataRunnable;->response:Landroid/os/Message;

    .line 716
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 719
    const-string v1, "[BIP]"

    const-string v2, "BM-receiveData: start to receive data"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager$RecvDataRunnable;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #getter for: Lcom/android/internal/telephony/cat/BipManager;->mChannel:Lcom/android/internal/telephony/cat/Channel;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipManager;->access$200(Lcom/android/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/Channel;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/BipManager$RecvDataRunnable;->requestDataSize:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipManager$RecvDataRunnable;->result:Lcom/android/internal/telephony/cat/ReceiveDataResult;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cat/Channel;->receiveData(ILcom/android/internal/telephony/cat/ReceiveDataResult;)I

    move-result v0

    .line 721
    .local v0, errCode:I
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BM-receiveData: result code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager$RecvDataRunnable;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipManager$RecvDataRunnable;->result:Lcom/android/internal/telephony/cat/ReceiveDataResult;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelData:[B

    .line 723
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager$RecvDataRunnable;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipManager$RecvDataRunnable;->result:Lcom/android/internal/telephony/cat/ReceiveDataResult;

    iget v2, v2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    iput v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mRemainingDataLength:I

    .line 724
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager$RecvDataRunnable;->response:Landroid/os/Message;

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 725
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager$RecvDataRunnable;->response:Landroid/os/Message;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipManager$RecvDataRunnable;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 726
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager$RecvDataRunnable;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #getter for: Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipManager;->access$300(Lcom/android/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipManager$RecvDataRunnable;->response:Landroid/os/Message;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatService;->sendMessage(Landroid/os/Message;)Z

    .line 727
    const-string v1, "[BIP]"

    const-string v2, "BM-receiveData: end to receive data"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    return-void
.end method
