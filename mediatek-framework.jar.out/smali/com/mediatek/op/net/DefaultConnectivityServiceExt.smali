.class public Lcom/mediatek/op/net/DefaultConnectivityServiceExt;
.super Ljava/lang/Object;
.source "DefaultConnectivityServiceExt.java"

# interfaces
.implements Lcom/mediatek/common/net/IConnectivityServiceExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "CDS/IConnectivityServiceExt"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "DefaultConnectivityServiceExt in default"

    invoke-direct {p0, v0}, Lcom/mediatek/op/net/DefaultConnectivityServiceExt;->log(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 85
    const-string v0, "CDS/IConnectivityServiceExt"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    const-string v0, "init in default"

    invoke-direct {p0, v0}, Lcom/mediatek/op/net/DefaultConnectivityServiceExt;->log(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public isControlBySetting(II)Z
    .locals 2
    .parameter "netType"
    .parameter "radio"

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isControlBySetting: netType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " readio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/op/net/DefaultConnectivityServiceExt;->log(Ljava/lang/String;)V

    .line 75
    if-nez p2, :cond_0

    const/16 v0, 0x22

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultFailover(II)Z
    .locals 1
    .parameter "netType"
    .parameter "activeDefaultNetwork"

    .prologue
    .line 69
    const-string v0, "default isDefaultFailover"

    invoke-direct {p0, v0}, Lcom/mediatek/op/net/DefaultConnectivityServiceExt;->log(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public isUserPrompt()Z
    .locals 1

    .prologue
    .line 64
    const-string v0, "default isUserPrompt"

    invoke-direct {p0, v0}, Lcom/mediatek/op/net/DefaultConnectivityServiceExt;->log(Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    return v0
.end method
