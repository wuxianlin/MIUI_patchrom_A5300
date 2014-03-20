.class Landroid/drm/DrmManagerClient$2;
.super Ljava/lang/Object;
.source "DrmManagerClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/drm/DrmManagerClient;->showProtectionInfoDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/drm/DrmManagerClient;


# direct methods
.method constructor <init>(Landroid/drm/DrmManagerClient;)V
    .locals 0
    .parameter

    .prologue
    .line 1521
    iput-object p1, p0, Landroid/drm/DrmManagerClient$2;->this$0:Landroid/drm/DrmManagerClient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1523
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1524
    return-void
.end method
