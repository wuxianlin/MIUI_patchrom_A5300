.class public Lcom/mediatek/op/FwkExt;
.super Ljava/lang/Object;
.source "FwkExt.java"

# interfaces
.implements Lcom/mediatek/common/IFwkExt;


# static fields
.field static final TAG:Ljava/lang/String; = "FWKEXT"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "FWKEXT"

    const-string v1, "FwkExt Contrustor !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method


# virtual methods
.method public getCurrentOPIndex()I
    .locals 2

    .prologue
    .line 56
    const-string v0, "FWKEXT"

    const-string v1, "Enter GetCurrentOP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentOPName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "Default"

    return-object v0
.end method
