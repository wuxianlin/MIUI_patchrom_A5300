.class public Lcom/mediatek/op/telephony/TelephonyProviderExt;
.super Ljava/lang/Object;
.source "TelephonyProviderExt.java"

# interfaces
.implements Lcom/mediatek/common/telephony/ITelephonyProviderExt;


# static fields
.field static final TAG:Ljava/lang/String; = "TelephonyProviderExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 60
    const-string v0, "TelephonyProviderExt"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public onLoadApns(Landroid/content/ContentValues;)I
    .locals 1
    .parameter "row"

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method
