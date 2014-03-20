.class Lcom/mediatek/StkSelection/StkSelection$1;
.super Ljava/lang/Object;
.source "StkSelection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/StkSelection/StkSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/StkSelection/StkSelection;


# direct methods
.method constructor <init>(Lcom/mediatek/StkSelection/StkSelection;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/mediatek/StkSelection/StkSelection$1;->this$0:Lcom/mediatek/StkSelection/StkSelection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 201
    const-string v1, "StkSelection "

    const-string v2, "serviceComplete run"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lcom/mediatek/StkSelection/StkSelection$1;->this$0:Lcom/mediatek/StkSelection/StkSelection;

    #getter for: Lcom/mediatek/StkSelection/StkSelection;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/mediatek/StkSelection/StkSelection;->access$000(Lcom/mediatek/StkSelection/StkSelection;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/CellConnMgr;->getResult()I

    move-result v0

    .line 203
    .local v0, nRet:I
    const-string v1, "StkSelection "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceComplete result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->resultToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcom/mediatek/StkSelection/StkSelection$1;->this$0:Lcom/mediatek/StkSelection/StkSelection;

    #getter for: Lcom/mediatek/StkSelection/StkSelection;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/mediatek/StkSelection/StkSelection;->access$000(Lcom/mediatek/StkSelection/StkSelection;)Lcom/mediatek/CellConnService/CellConnMgr;

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/mediatek/StkSelection/StkSelection$1;->this$0:Lcom/mediatek/StkSelection/StkSelection;

    invoke-virtual {v1}, Lcom/mediatek/StkSelection/StkSelection;->finish()V

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/mediatek/StkSelection/StkSelection$1;->this$0:Lcom/mediatek/StkSelection/StkSelection;

    invoke-virtual {v1}, Lcom/mediatek/StkSelection/StkSelection;->finish()V

    goto :goto_0
.end method
