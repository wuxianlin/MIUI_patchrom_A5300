.class Landroid/drm/DrmManagerClient$CustomAlertDialog;
.super Landroid/app/AlertDialog;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomAlertDialog"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/drm/DrmManagerClient$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mShowListener:Landroid/content/DialogInterface$OnShowListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/drm/DrmManagerClient$CustomAlertDialog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/DrmManagerClient$CustomAlertDialog;>;"
    const/4 v0, 0x0

    .line 1046
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 1040
    iput-object v0, p0, Landroid/drm/DrmManagerClient$CustomAlertDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1041
    iput-object v0, p0, Landroid/drm/DrmManagerClient$CustomAlertDialog;->mShowListener:Landroid/content/DialogInterface$OnShowListener;

    .line 1042
    iput-object v0, p0, Landroid/drm/DrmManagerClient$CustomAlertDialog;->mQueue:Ljava/util/ArrayList;

    .line 1043
    iput-object v0, p0, Landroid/drm/DrmManagerClient$CustomAlertDialog;->mContext:Landroid/content/Context;

    .line 1047
    iput-object p2, p0, Landroid/drm/DrmManagerClient$CustomAlertDialog;->mQueue:Ljava/util/ArrayList;

    .line 1048
    iput-object p1, p0, Landroid/drm/DrmManagerClient$CustomAlertDialog;->mContext:Landroid/content/Context;

    .line 1050
    new-instance v0, Landroid/drm/DrmManagerClient$CustomAlertDialog$1;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient$CustomAlertDialog$1;-><init>(Landroid/drm/DrmManagerClient$CustomAlertDialog;)V

    invoke-super {p0, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1068
    new-instance v0, Landroid/drm/DrmManagerClient$CustomAlertDialog$2;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient$CustomAlertDialog$2;-><init>(Landroid/drm/DrmManagerClient$CustomAlertDialog;)V

    invoke-super {p0, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1085
    return-void
.end method

.method static synthetic access$1000(Landroid/drm/DrmManagerClient$CustomAlertDialog;)Landroid/content/DialogInterface$OnShowListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1038
    iget-object v0, p0, Landroid/drm/DrmManagerClient$CustomAlertDialog;->mShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-object v0
.end method

.method static synthetic access$800(Landroid/drm/DrmManagerClient$CustomAlertDialog;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1038
    iget-object v0, p0, Landroid/drm/DrmManagerClient$CustomAlertDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$900(Landroid/drm/DrmManagerClient$CustomAlertDialog;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1038
    iget-object v0, p0, Landroid/drm/DrmManagerClient$CustomAlertDialog;->mQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Landroid/drm/DrmManagerClient$CustomAlertDialog;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1038
    iput-object p1, p0, Landroid/drm/DrmManagerClient$CustomAlertDialog;->mQueue:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method public final getCreatorContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Landroid/drm/DrmManagerClient$CustomAlertDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1090
    iput-object p1, p0, Landroid/drm/DrmManagerClient$CustomAlertDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1091
    return-void
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1095
    iput-object p1, p0, Landroid/drm/DrmManagerClient$CustomAlertDialog;->mShowListener:Landroid/content/DialogInterface$OnShowListener;

    .line 1096
    return-void
.end method
