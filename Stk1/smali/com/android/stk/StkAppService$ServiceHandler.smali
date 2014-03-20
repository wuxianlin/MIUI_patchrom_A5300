.class final Lcom/android/stk/StkAppService$ServiceHandler;
.super Landroid/os/Handler;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method private constructor <init>(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stk/StkAppService;Lcom/android/stk/StkAppService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 546
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService$ServiceHandler;-><init>(Lcom/android/stk/StkAppService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const v12, 0x7f06003f

    const/16 v11, 0x50

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 549
    if-nez p1, :cond_1

    .line 551
    const-string v5, "Stk-SAS "

    const-string v6, "ServiceHandler handleMessage msg is null"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 555
    .local v2, opcode:I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 557
    .local v3, sim_id:I
    const-string v5, "Stk-SAS "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage opcode["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], sim id["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    if-ne v2, v9, :cond_2

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_2

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 559
    const-string v6, "Stk-SAS "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage cmdName["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_2
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 592
    :pswitch_0
    const-string v5, "Stk-SAS "

    const-string v6, "[OP_CMD]"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 627
    .local v1, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->isCmdInteractive(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    invoke-static {v5, v1}, Lcom/android/stk/StkAppService;->access$700(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 628
    const-string v5, "Stk-SAS "

    const-string v6, "[OP_CMD][Normal][Not DISPLAY_TEXT][Not Interactive]"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;I)V
    invoke-static {v5, v1, v3}, Lcom/android/stk/StkAppService;->access$800(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;I)V

    goto/16 :goto_0

    .line 564
    .end local v1           #cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    :pswitch_1
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v5

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v5, :cond_0

    .line 568
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->isBusyOnCall()Z
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$300(Lcom/android/stk/StkAppService;)Z

    move-result v5

    if-ne v5, v9, :cond_3

    .line 569
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$400(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v12, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 570
    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4, v11, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 571
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 574
    .end local v4           #toast:Landroid/widget/Toast;
    :cond_3
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v5

    aget-object v5, v5, v3

    iget v5, v5, Lcom/android/stk/StkAppService$StkContext;->mAvailable:I

    if-eq v5, v9, :cond_4

    .line 576
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$400(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v12, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 577
    .restart local v4       #toast:Landroid/widget/Toast;
    invoke-virtual {v4, v11, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 578
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 581
    .end local v4           #toast:Landroid/widget/Toast;
    :cond_4
    const-string v5, "Stk-SAS "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage OP_LAUNCH_APP - mCmdInProgress["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v7}, Lcom/android/stk/StkAppService;->access$500(Lcom/android/stk/StkAppService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v5

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;
    invoke-static {v6}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v6

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v6

    if-eq v5, v6, :cond_5

    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v5

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    if-nez v5, :cond_6

    .line 584
    :cond_5
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;I)V
    invoke-static {v5, v10, v3}, Lcom/android/stk/StkAppService;->access$600(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/Menu;I)V

    .line 589
    :goto_1
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v5, v9, v3}, Lcom/android/stk/StkAppService;->setUserAccessState(ZI)V

    goto/16 :goto_0

    .line 586
    :cond_6
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;
    invoke-static {v6}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v6

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    #calls: Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;I)V
    invoke-static {v5, v6, v3}, Lcom/android/stk/StkAppService;->access$600(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/Menu;I)V

    goto :goto_1

    .line 631
    .restart local v1       #cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    :cond_7
    const-string v5, "Stk-SAS "

    const-string v6, "[OP_CMD][Normal][Not DISPLAY_TEXT][Interactive]"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$500(Lcom/android/stk/StkAppService;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 633
    const-string v5, "Stk-SAS "

    const-string v6, "[OP_CMD][Normal][Not DISPLAY_TEXT][Interactive][not in progress]"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #setter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v5, v9}, Lcom/android/stk/StkAppService;->access$502(Lcom/android/stk/StkAppService;Z)Z

    .line 635
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/cat/CatCmdMessage;

    #calls: Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;I)V
    invoke-static {v6, v5, v3}, Lcom/android/stk/StkAppService;->access$800(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;I)V

    goto/16 :goto_0

    .line 637
    :cond_8
    const-string v5, "Stk-SAS "

    const-string v6, "[OP_CMD][Normal][Not DISPLAY_TEXT][Interactive][in progress]"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$900(Lcom/android/stk/StkAppService;)Ljava/util/LinkedList;

    move-result-object v6

    new-instance v7, Lcom/android/stk/StkAppService$DelayedCmd;

    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v7, v8, v9, v5, v3}, Lcom/android/stk/StkAppService$DelayedCmd;-><init>(Lcom/android/stk/StkAppService;ILcom/android/internal/telephony/cat/CatCmdMessage;I)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 646
    .end local v1           #cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    :pswitch_2
    const-string v5, "Stk-SAS "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " [OP_RESPONSE][responseNeeded] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;
    invoke-static {v7}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v7

    aget-object v7, v7, v3

    iget-boolean v7, v7, Lcom/android/stk/StkAppService$StkContext;->responseNeeded:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v5

    aget-object v5, v5, v3

    iget-boolean v5, v5, Lcom/android/stk/StkAppService$StkContext;->responseNeeded:Z

    if-eqz v5, :cond_9

    .line 648
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    #calls: Lcom/android/stk/StkAppService;->handleCmdResponse(Landroid/os/Bundle;I)V
    invoke-static {v6, v5, v3}, Lcom/android/stk/StkAppService;->access$1000(Lcom/android/stk/StkAppService;Landroid/os/Bundle;I)V

    .line 651
    :cond_9
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$900(Lcom/android/stk/StkAppService;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-eqz v5, :cond_a

    .line 652
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->callDelayedMsg()V
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$1100(Lcom/android/stk/StkAppService;)V

    .line 657
    :goto_2
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v5

    aget-object v5, v5, v3

    iput-boolean v9, v5, Lcom/android/stk/StkAppService$StkContext;->responseNeeded:Z

    goto/16 :goto_0

    .line 654
    :cond_a
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #setter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v5, v8}, Lcom/android/stk/StkAppService;->access$502(Lcom/android/stk/StkAppService;Z)Z

    goto :goto_2

    .line 660
    :pswitch_3
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$500(Lcom/android/stk/StkAppService;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 661
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #setter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v5, v9}, Lcom/android/stk/StkAppService;->access$502(Lcom/android/stk/StkAppService;Z)Z

    .line 662
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->handleSessionEnd(I)V
    invoke-static {v5, v3}, Lcom/android/stk/StkAppService;->access$1200(Lcom/android/stk/StkAppService;I)V

    goto/16 :goto_0

    .line 664
    :cond_b
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$900(Lcom/android/stk/StkAppService;)Ljava/util/LinkedList;

    move-result-object v5

    new-instance v6, Lcom/android/stk/StkAppService$DelayedCmd;

    iget-object v7, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    const/4 v8, 0x4

    invoke-direct {v6, v7, v8, v10, v3}, Lcom/android/stk/StkAppService$DelayedCmd;-><init>(Lcom/android/stk/StkAppService;ILcom/android/internal/telephony/cat/CatCmdMessage;I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 668
    :pswitch_4
    const-string v5, "Stk-SAS "

    const-string v6, " OP_BOOT_COMPLETED"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 676
    :pswitch_5
    const-string v5, "Stk-SAS "

    const-string v6, "OP_REMOVE_STM"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v5

    aget-object v5, v5, v3

    if-eqz v5, :cond_c

    .line 679
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v5

    aget-object v5, v5, v3

    iput-object v10, v5, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 680
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v5

    aget-object v5, v5, v3

    iput-boolean v8, v5, Lcom/android/stk/StkAppService$StkContext;->mSetupMenuCalled:Z

    .line 682
    :cond_c
    invoke-static {}, Lcom/android/stk/StkAppInstaller;->getInstance()Lcom/android/stk/StkAppInstaller;

    move-result-object v0

    .line 683
    .local v0, appInstaller:Lcom/android/stk/StkAppInstaller;
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$400(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    .line 684
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$1300(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v5

    aget-object v5, v5, v3

    if-eqz v5, :cond_0

    .line 686
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$1300(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-interface {v5, v3}, Lcom/android/internal/telephony/cat/AppInterface;->onDBHandler(I)V

    goto/16 :goto_0

    .line 691
    .end local v0           #appInstaller:Lcom/android/stk/StkAppInstaller;
    :pswitch_6
    const-string v5, "Stk-SAS "

    const-string v6, "OP_EVENT_DOWNLOAD"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    #calls: Lcom/android/stk/StkAppService;->handleEventDownload(Landroid/os/Bundle;I)V
    invoke-static {v6, v5, v3}, Lcom/android/stk/StkAppService;->access$1400(Lcom/android/stk/StkAppService;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 695
    :pswitch_7
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->handleDelayedCmd()V
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$1500(Lcom/android/stk/StkAppService;)V

    goto/16 :goto_0

    .line 698
    :pswitch_8
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->handleIdleTextResponse(I)V
    invoke-static {v5, v3}, Lcom/android/stk/StkAppService;->access$1600(Lcom/android/stk/StkAppService;I)V

    .line 700
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #setter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v5, v8}, Lcom/android/stk/StkAppService;->access$502(Lcom/android/stk/StkAppService;Z)Z

    goto/16 :goto_0

    .line 562
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method
