.class Lcom/android/stk/StkAppInstaller$InstallThread;
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
    name = "InstallThread"
.end annotation


# instance fields
.field private mSimId:I

.field final synthetic this$0:Lcom/android/stk/StkAppInstaller;


# direct methods
.method private constructor <init>(Lcom/android/stk/StkAppInstaller;)V
    .locals 1
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/stk/StkAppInstaller$InstallThread;->this$0:Lcom/android/stk/StkAppInstaller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/stk/StkAppInstaller$InstallThread;->mSimId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stk/StkAppInstaller;Lcom/android/stk/StkAppInstaller$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppInstaller$InstallThread;-><init>(Lcom/android/stk/StkAppInstaller;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 178
    const-string v0, "StkAppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstallThread, run , sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkAppInstaller$InstallThread;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget v0, p0, Lcom/android/stk/StkAppInstaller$InstallThread;->mSimId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/stk/StkAppInstaller$InstallThread;->mSimId:I

    sget v1, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/stk/StkAppInstaller$InstallThread;->this$0:Lcom/android/stk/StkAppInstaller;

    iget-object v0, v0, Lcom/android/stk/StkAppInstaller;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/stk/StkAppInstaller$InstallThread;->mSimId:I

    #calls: Lcom/android/stk/StkAppInstaller;->setAppState(Landroid/content/Context;ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/stk/StkAppInstaller;->access$200(Landroid/content/Context;ZI)V

    .line 181
    :cond_0
    return-void
.end method

.method public setSim(I)V
    .locals 3
    .parameter "sim_id"

    .prologue
    .line 185
    const-string v0, "StkAppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstallThread, sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iput p1, p0, Lcom/android/stk/StkAppInstaller$InstallThread;->mSimId:I

    .line 187
    return-void
.end method
