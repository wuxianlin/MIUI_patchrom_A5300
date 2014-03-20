.class public abstract Lcom/mediatek/calloption/VideoCallOptionHandler;
.super Lcom/mediatek/calloption/CallOptionBaseHandler;
.source "VideoCallOptionHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallOptionHandler"


# instance fields
.field private mRequest:Lcom/mediatek/calloption/Request;

.field private mThreeGSIMSelectCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mThreeGSIMSelectClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mThreeGSIMSelectDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mThreeGServiceCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mThreeGServiceClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mThreeGServiceDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/mediatek/calloption/CallOptionBaseHandler;-><init>()V

    .line 115
    new-instance v0, Lcom/mediatek/calloption/VideoCallOptionHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/VideoCallOptionHandler$1;-><init>(Lcom/mediatek/calloption/VideoCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mThreeGSIMSelectClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 134
    new-instance v0, Lcom/mediatek/calloption/VideoCallOptionHandler$2;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/VideoCallOptionHandler$2;-><init>(Lcom/mediatek/calloption/VideoCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mThreeGSIMSelectDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 141
    new-instance v0, Lcom/mediatek/calloption/VideoCallOptionHandler$3;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/VideoCallOptionHandler$3;-><init>(Lcom/mediatek/calloption/VideoCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mThreeGSIMSelectCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 150
    new-instance v0, Lcom/mediatek/calloption/VideoCallOptionHandler$4;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/VideoCallOptionHandler$4;-><init>(Lcom/mediatek/calloption/VideoCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mThreeGServiceClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 164
    new-instance v0, Lcom/mediatek/calloption/VideoCallOptionHandler$5;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/VideoCallOptionHandler$5;-><init>(Lcom/mediatek/calloption/VideoCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mThreeGServiceDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 171
    new-instance v0, Lcom/mediatek/calloption/VideoCallOptionHandler$6;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/VideoCallOptionHandler$6;-><init>(Lcom/mediatek/calloption/VideoCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mThreeGServiceCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/mediatek/calloption/VideoCallOptionHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/calloption/VideoCallOptionHandler;)Lcom/mediatek/calloption/Request;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 191
    const-string v0, "VideoCallOptionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method


# virtual methods
.method public handleRequest(Lcom/mediatek/calloption/Request;)V
    .locals 9
    .parameter "request"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 60
    const-string v1, "handleRequest()"

    invoke-static {v1}, Lcom/mediatek/calloption/VideoCallOptionHandler;->log(Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    .line 63
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "com.android.phone.extra.video"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    invoke-virtual {v0, p1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v1}, Lcom/mediatek/calloption/Request;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/mediatek/calloption/CallOptionUtils;->get3GCapabilitySIMBySolt(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v4}, Lcom/mediatek/calloption/CallOptionUtils;->get3GCapabilitySIMBySolt(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 74
    const/4 v8, -0x1

    .line 75
    .local v8, slotId:I
    invoke-static {p1, v0}, Lcom/mediatek/calloption/CallOptionUtils;->isSimInsert(Lcom/mediatek/calloption/Request;I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, v4}, Lcom/mediatek/calloption/CallOptionUtils;->isSimInsert(Lcom/mediatek/calloption/Request;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    iget-object v0, p0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mThreeGSIMSelectClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mThreeGSIMSelectDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iget-object v3, p0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mThreeGSIMSelectCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0, p1, v0, v1, v3}, Lcom/mediatek/calloption/VideoCallOptionHandler;->show3GSIMSelectDialog(Lcom/mediatek/calloption/Request;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 80
    :cond_2
    invoke-static {p1, v0}, Lcom/mediatek/calloption/CallOptionUtils;->isSimInsert(Lcom/mediatek/calloption/Request;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    const/4 v8, 0x0

    .line 86
    :cond_3
    :goto_1
    if-eq v5, v8, :cond_5

    .line 87
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.phone.extra.slot"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getCallOptionHandlerFactory()Lcom/mediatek/calloption/CallOptionHandlerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/calloption/CallOptionHandlerFactory;->getSimStatusCallOptionHandler()Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    move-result-object v6

    .line 90
    .local v6, simStatusHandler:Lcom/mediatek/calloption/SimStatusCallOptionHandler;
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getCallOptionHandlerFactory()Lcom/mediatek/calloption/CallOptionHandlerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/calloption/CallOptionHandlerFactory;->getFinalCallOptionHandler()Lcom/mediatek/calloption/FinalCallOptionHandler;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->setSuccessor(Lcom/mediatek/calloption/CallOptionBaseHandler;)V

    .line 91
    invoke-virtual {v6, p1}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto :goto_0

    .line 82
    .end local v6           #simStatusHandler:Lcom/mediatek/calloption/SimStatusCallOptionHandler;
    :cond_4
    invoke-static {p1, v4}, Lcom/mediatek/calloption/CallOptionUtils;->isSimInsert(Lcom/mediatek/calloption/Request;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    const/4 v8, 0x1

    goto :goto_1

    .line 97
    .end local v8           #slotId:I
    :cond_5
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->is3GSwitchSupport()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1}, Lcom/mediatek/calloption/CallOptionUtils;->get3GCapabilitySIM(Lcom/mediatek/calloption/Request;)I

    move-result v7

    .line 98
    .local v7, slot:I
    :goto_2
    if-ne v5, v7, :cond_8

    .line 99
    const/4 v2, 0x1

    .line 100
    .local v2, isInsertSim:Z
    invoke-static {p1, v0}, Lcom/mediatek/calloption/CallOptionUtils;->isSimInsert(Lcom/mediatek/calloption/Request;I)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1, v4}, Lcom/mediatek/calloption/CallOptionUtils;->isSimInsert(Lcom/mediatek/calloption/Request;I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 102
    const/4 v2, 0x0

    .line 104
    :cond_6
    iget-object v3, p0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mThreeGServiceClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v4, p0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mThreeGServiceDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iget-object v5, p0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mThreeGServiceCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/calloption/VideoCallOptionHandler;->showOpen3GServiceDialog(Lcom/mediatek/calloption/Request;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .end local v2           #isInsertSim:Z
    .end local v7           #slot:I
    :cond_7
    move v7, v0

    .line 97
    goto :goto_2

    .line 107
    .restart local v7       #slot:I
    :cond_8
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.phone.extra.slot"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getCallOptionHandlerFactory()Lcom/mediatek/calloption/CallOptionHandlerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/calloption/CallOptionHandlerFactory;->getSimStatusCallOptionHandler()Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    move-result-object v6

    .line 110
    .restart local v6       #simStatusHandler:Lcom/mediatek/calloption/SimStatusCallOptionHandler;
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getCallOptionHandlerFactory()Lcom/mediatek/calloption/CallOptionHandlerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/calloption/CallOptionHandlerFactory;->getFinalCallOptionHandler()Lcom/mediatek/calloption/FinalCallOptionHandler;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->setSuccessor(Lcom/mediatek/calloption/CallOptionBaseHandler;)V

    .line 111
    invoke-virtual {v6, p1}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto/16 :goto_0
.end method

.method protected abstract show3GSIMSelectDialog(Lcom/mediatek/calloption/Request;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
.end method

.method protected abstract showOpen3GServiceDialog(Lcom/mediatek/calloption/Request;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
.end method
