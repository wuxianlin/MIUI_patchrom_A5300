.class Lcom/android/stk/StkAppInstaller;
.super Ljava/lang/Object;
.source "StkAppInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkAppInstaller$1;,
        Lcom/android/stk/StkAppInstaller$UnInstallThread;,
        Lcom/android/stk/StkAppInstaller$InstallThread;
    }
.end annotation


# static fields
.field private static final STK1_LAUNCHER_ACTIVITY:Ljava/lang/String; = "com.android.stk.StkLauncherActivity"

.field private static final STK2_LAUNCHER_ACTIVITY:Ljava/lang/String; = "com.android.stk.StkLauncherActivityII"

.field public static final STK_INSTALLED:I = 0x2

.field public static final STK_NOT_INSTALLED:I = 0x1

.field private static mInstance:Lcom/android/stk/StkAppInstaller;

.field private static miSTKInstalled:[I


# instance fields
.field private installThread:[Lcom/android/stk/StkAppInstaller$InstallThread;

.field mContext:Landroid/content/Context;

.field private uninstallThread:[Lcom/android/stk/StkAppInstaller$UnInstallThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/android/stk/StkAppInstaller;

    invoke-direct {v0}, Lcom/android/stk/StkAppInstaller;-><init>()V

    sput-object v0, Lcom/android/stk/StkAppInstaller;->mInstance:Lcom/android/stk/StkAppInstaller;

    .line 98
    sget v0, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/stk/StkAppInstaller;->miSTKInstalled:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 204
    sget v0, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    new-array v0, v0, [Lcom/android/stk/StkAppInstaller$InstallThread;

    iput-object v0, p0, Lcom/android/stk/StkAppInstaller;->installThread:[Lcom/android/stk/StkAppInstaller$InstallThread;

    .line 205
    sget v0, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    new-array v0, v0, [Lcom/android/stk/StkAppInstaller$UnInstallThread;

    iput-object v0, p0, Lcom/android/stk/StkAppInstaller;->uninstallThread:[Lcom/android/stk/StkAppInstaller$UnInstallThread;

    .line 71
    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-static {p0, p1, p2}, Lcom/android/stk/StkAppInstaller;->setAppState(Landroid/content/Context;ZI)V

    return-void
.end method

.method public static getInstance()Lcom/android/stk/StkAppInstaller;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/stk/StkAppInstaller;->mInstance:Lcom/android/stk/StkAppInstaller;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/android/stk/StkAppInstaller;->mInstance:Lcom/android/stk/StkAppInstaller;

    invoke-direct {v0}, Lcom/android/stk/StkAppInstaller;->initThread()V

    .line 77
    :cond_0
    sget-object v0, Lcom/android/stk/StkAppInstaller;->mInstance:Lcom/android/stk/StkAppInstaller;

    return-object v0
.end method

.method public static getIsInstalled(I)I
    .locals 3
    .parameter "sim_id"

    .prologue
    .line 208
    const-string v0, "StkAppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIsInstalled, sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", install status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/stk/StkAppInstaller;->miSTKInstalled:[I

    aget v2, v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/android/stk/StkAppInstaller;->miSTKInstalled:[I

    aget v0, v0, p0

    return v0
.end method

.method private initThread()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/android/stk/StkAppInstaller;->installThread:[Lcom/android/stk/StkAppInstaller$InstallThread;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 86
    const-string v1, "StkAppInstaller"

    const-string v2, "Init thread"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/android/stk/StkAppInstaller;->installThread:[Lcom/android/stk/StkAppInstaller$InstallThread;

    new-instance v2, Lcom/android/stk/StkAppInstaller$InstallThread;

    invoke-direct {v2, p0, v3}, Lcom/android/stk/StkAppInstaller$InstallThread;-><init>(Lcom/android/stk/StkAppInstaller;Lcom/android/stk/StkAppInstaller$1;)V

    aput-object v2, v1, v0

    .line 88
    sget-object v1, Lcom/android/stk/StkAppInstaller;->miSTKInstalled:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkAppInstaller;->uninstallThread:[Lcom/android/stk/StkAppInstaller$UnInstallThread;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/stk/StkAppInstaller;->uninstallThread:[Lcom/android/stk/StkAppInstaller$UnInstallThread;

    new-instance v2, Lcom/android/stk/StkAppInstaller$UnInstallThread;

    invoke-direct {v2, p0, v3}, Lcom/android/stk/StkAppInstaller$UnInstallThread;-><init>(Lcom/android/stk/StkAppInstaller;Lcom/android/stk/StkAppInstaller$1;)V

    aput-object v2, v1, v0

    .line 82
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_2
    return-void
.end method

.method private static setAppState(Landroid/content/Context;ZI)V
    .locals 11
    .parameter "context"
    .parameter "install"
    .parameter "sim_id"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 123
    const-string v8, "StkAppInstaller"

    const-string v9, "[setAppState]+"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    if-nez p0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 128
    .local v4, pm:Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_0

    .line 133
    const-string v2, "com.android.stk.StkLauncherActivity"

    .line 134
    .local v2, class_name:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 143
    const-string v6, "StkAppInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAppState, ready to return because sim id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is wrong."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :pswitch_0
    const-string v2, "com.android.stk.StkLauncherActivity"

    .line 147
    :goto_1
    const-string v8, "StkAppInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setAppState, target class name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v0, Landroid/content/ComponentName;

    const-string v8, "com.android.stk"

    invoke-direct {v0, v8, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v0, cName:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/ComponentName;

    const-string v8, "com.android.stk"

    const-string v9, "com.android.stk.StkMenuActivity"

    invoke-direct {v1, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .local v1, cNameMenu:Landroid/content/ComponentName;
    if-eqz p1, :cond_4

    move v5, v6

    .line 154
    .local v5, state:I
    :goto_2
    const-string v8, "StkAppInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Stk1 - setAppState - curState["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/stk/StkAppInstaller;->miSTKInstalled:[I

    aget v10, v10, p2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] to state["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    if-ne v6, v5, :cond_2

    sget-object v8, Lcom/android/stk/StkAppInstaller;->miSTKInstalled:[I

    aget v8, v8, p2

    if-eq v7, v8, :cond_3

    :cond_2
    if-ne v7, v5, :cond_5

    sget-object v8, Lcom/android/stk/StkAppInstaller;->miSTKInstalled:[I

    aget v8, v8, p2

    if-ne v6, v8, :cond_5

    .line 159
    :cond_3
    const-string v6, "StkAppInstaller"

    const-string v7, "Stk1 - Need not change app state!!"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_3
    const-string v6, "StkAppInstaller"

    const-string v7, "[setAppState]-"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    .end local v0           #cName:Landroid/content/ComponentName;
    .end local v1           #cNameMenu:Landroid/content/ComponentName;
    .end local v5           #state:I
    :pswitch_1
    const-string v2, "com.android.stk.StkLauncherActivityII"

    .line 141
    goto :goto_1

    .restart local v0       #cName:Landroid/content/ComponentName;
    .restart local v1       #cNameMenu:Landroid/content/ComponentName;
    :cond_4
    move v5, v7

    .line 151
    goto :goto_2

    .line 161
    .restart local v5       #state:I
    :cond_5
    const-string v8, "StkAppInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Stk1 - StkAppInstaller - Change app state["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v8, Lcom/android/stk/StkAppInstaller;->miSTKInstalled:[I

    if-eqz p1, :cond_6

    :goto_4
    aput v7, v8, p2

    .line 166
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v4, v0, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 168
    :catch_0
    move-exception v3

    .line 169
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "StkAppInstaller"

    const-string v7, "Could not change STK1 app state"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v3           #e:Ljava/lang/Exception;
    :cond_6
    move v7, v6

    .line 163
    goto :goto_4

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method install(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "sim_id"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/stk/StkAppInstaller;->installThread:[Lcom/android/stk/StkAppInstaller$InstallThread;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    .line 106
    iput-object p1, p0, Lcom/android/stk/StkAppInstaller;->mContext:Landroid/content/Context;

    .line 107
    iget-object v0, p0, Lcom/android/stk/StkAppInstaller;->installThread:[Lcom/android/stk/StkAppInstaller$InstallThread;

    aget-object v0, v0, p2

    invoke-virtual {v0, p2}, Lcom/android/stk/StkAppInstaller$InstallThread;->setSim(I)V

    .line 108
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/stk/StkAppInstaller;->installThread:[Lcom/android/stk/StkAppInstaller$InstallThread;

    aget-object v1, v1, p2

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 110
    :cond_0
    return-void
.end method

.method unInstall(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "sim_id"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/stk/StkAppInstaller;->uninstallThread:[Lcom/android/stk/StkAppInstaller$UnInstallThread;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    .line 115
    iput-object p1, p0, Lcom/android/stk/StkAppInstaller;->mContext:Landroid/content/Context;

    .line 116
    iget-object v0, p0, Lcom/android/stk/StkAppInstaller;->uninstallThread:[Lcom/android/stk/StkAppInstaller$UnInstallThread;

    aget-object v0, v0, p2

    invoke-virtual {v0, p2}, Lcom/android/stk/StkAppInstaller$UnInstallThread;->setSim(I)V

    .line 117
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/stk/StkAppInstaller;->uninstallThread:[Lcom/android/stk/StkAppInstaller$UnInstallThread;

    aget-object v1, v1, p2

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 119
    :cond_0
    return-void
.end method
