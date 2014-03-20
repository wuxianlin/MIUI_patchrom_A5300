.class Lcom/android/stk/StkAppInstaller$UnInstallThread;
.super Ljava/lang/Object;
.source "StkAppInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnInstallThread"
.end annotation


# instance fields
.field private mSimId:I

.field final synthetic this$0:Lcom/android/stk/StkAppInstaller;


# direct methods
.method private constructor <init>(Lcom/android/stk/StkAppInstaller;)V
    .locals 1
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/stk/StkAppInstaller$UnInstallThread;->this$0:Lcom/android/stk/StkAppInstaller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/stk/StkAppInstaller$UnInstallThread;->mSimId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stk/StkAppInstaller;Lcom/android/stk/StkAppInstaller$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppInstaller$UnInstallThread;-><init>(Lcom/android/stk/StkAppInstaller;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 193
    const-string v0, "StkAppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UninstallThread, run , sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkAppInstaller$UnInstallThread;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget v0, p0, Lcom/android/stk/StkAppInstaller$UnInstallThread;->mSimId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/stk/StkAppInstaller$UnInstallThread;->mSimId:I

    sget v1, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/stk/StkAppInstaller$UnInstallThread;->this$0:Lcom/android/stk/StkAppInstaller;

    iget-object v0, v0, Lcom/android/stk/StkAppInstaller;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/stk/StkAppInstaller$UnInstallThread;->mSimId:I

    #calls: Lcom/android/stk/StkAppInstaller;->setAppState(Landroid/content/Context;ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/stk/StkAppInstaller;->access$200(Landroid/content/Context;ZI)V

    .line 196
    :cond_0
    return-void
.end method

.method public setSim(I)V
    .locals 3
    .parameter "sim_id"

    .prologue
    .line 200
    const-string v0, "StkAppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UninstallThread, sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iput p1, p0, Lcom/android/stk/StkAppInstaller$UnInstallThread;->mSimId:I

    .line 202
    return-void
.end method
