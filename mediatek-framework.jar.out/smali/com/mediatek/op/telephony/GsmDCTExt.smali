.class public Lcom/mediatek/op/telephony/GsmDCTExt;
.super Ljava/lang/Object;
.source "GsmDCTExt.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IGsmDCTExt;


# static fields
.field static final TAG:Ljava/lang/String; = "GsmDCTExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public getFDForceFlag(Z)Z
    .locals 1
    .parameter "force_flag"

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public getOptPreferredApn(Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 1
    .parameter "imsi"
    .parameter "operator"
    .parameter "simID"

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDataAllowedAsOff(Ljava/lang/String;)Z
    .locals 1
    .parameter "apnType"

    .prologue
    .line 67
    const-string v0, "default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDomesticRoamingEnabled()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 84
    const-string v0, "GsmDCTExt"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method
