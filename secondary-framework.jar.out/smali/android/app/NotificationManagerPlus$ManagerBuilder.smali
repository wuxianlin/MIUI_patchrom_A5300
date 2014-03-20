.class public Landroid/app/NotificationManagerPlus$ManagerBuilder;
.super Ljava/lang/Object;
.source "NotificationManagerPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManagerPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManagerBuilder"
.end annotation


# instance fields
.field private mParam:Landroid/app/NotificationManagerPlus$Parameters;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 550
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 545
    new-instance v0, Landroid/app/NotificationManagerPlus$Parameters;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/NotificationManagerPlus$Parameters;-><init>(Landroid/app/NotificationManagerPlus$1;)V

    iput-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->mParam:Landroid/app/NotificationManagerPlus$Parameters;

    .line 551
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->mParam:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mContext:Landroid/content/Context;

    .line 552
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->mParam:Landroid/app/NotificationManagerPlus$Parameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mCancelable:Z

    .line 553
    return-void
.end method


# virtual methods
.method public create()Landroid/app/NotificationManagerPlus;
    .locals 3

    .prologue
    .line 682
    new-instance v0, Landroid/app/NotificationManagerPlus;

    iget-object v1, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->mParam:Landroid/app/NotificationManagerPlus$Parameters;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/NotificationManagerPlus;-><init>(Landroid/app/NotificationManagerPlus$Parameters;Landroid/app/NotificationManagerPlus$1;)V

    return-object v0
.end method

.method public setCancelable(Z)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 1
    .parameter "cancelable"

    .prologue
    .line 628
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->mParam:Landroid/app/NotificationManagerPlus$Parameters;

    iput-boolean p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mCancelable:Z

    .line 629
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 2
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 600
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->mParam:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 601
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->mParam:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p2, v0, Landroid/app/NotificationManagerPlus$Parameters;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 602
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->mParam:Landroid/app/NotificationManagerPlus$Parameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mNegativeButtonHandled:Z

    .line 603
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 2
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 583
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->mParam:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 584
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->mParam:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p2, v0, Landroid/app/NotificationManagerPlus$Parameters;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 585
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->mParam:Landroid/app/NotificationManagerPlus$Parameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mNeutralButtonHandled:Z

    .line 586
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 2
    .parameter "listener"

    .prologue
    .line 615
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->mParam:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 616
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->mParam:Landroid/app/NotificationManagerPlus$Parameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mCancelHandled:Z

    .line 617
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 639
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->mParam:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 640
    return-object p0
.end method

.method public setOnFirstShowListener(Landroid/app/NotificationManagerPlus$OnFirstShowListener;)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 674
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->mParam:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mOnFirstShowListener:Landroid/app/NotificationManagerPlus$OnFirstShowListener;

    .line 675
    return-object p0
.end method

.method public setOnLastDismissListener(Landroid/app/NotificationManagerPlus$OnLastDismissListener;)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 662
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->mParam:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mOnLastDismissListener:Landroid/app/NotificationManagerPlus$OnLastDismissListener;

    .line 663
    return-object p0
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 650
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->mParam:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    .line 651
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 2
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 566
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->mParam:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 567
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->mParam:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p2, v0, Landroid/app/NotificationManagerPlus$Parameters;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 568
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->mParam:Landroid/app/NotificationManagerPlus$Parameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mPositiveButtonHandled:Z

    .line 569
    return-object p0
.end method
