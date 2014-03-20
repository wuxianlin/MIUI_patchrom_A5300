.class public Lcom/mediatek/StkSelection/StkSelection;
.super Landroid/app/Activity;
.source "StkSelection.java"


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "StkSelection "

.field private static final REQUEST_TYPE:I = 0x12e

.field public static bSIM1Inserted:Z

.field public static bSIM2Inserted:Z

.field public static mSlot:I

.field public static strTargetClass:Ljava/lang/String;

.field public static strTargetLoc:Ljava/lang/String;


# instance fields
.field private mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private serviceComplete:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 65
    sput-boolean v0, Lcom/mediatek/StkSelection/StkSelection;->bSIM1Inserted:Z

    .line 66
    sput-boolean v0, Lcom/mediatek/StkSelection/StkSelection;->bSIM2Inserted:Z

    .line 67
    sput-object v1, Lcom/mediatek/StkSelection/StkSelection;->strTargetLoc:Ljava/lang/String;

    .line 68
    sput-object v1, Lcom/mediatek/StkSelection/StkSelection;->strTargetClass:Ljava/lang/String;

    .line 72
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/StkSelection/StkSelection;->mSlot:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 199
    new-instance v0, Lcom/mediatek/StkSelection/StkSelection$1;

    invoke-direct {v0, p0}, Lcom/mediatek/StkSelection/StkSelection$1;-><init>(Lcom/mediatek/StkSelection/StkSelection;)V

    iput-object v0, p0, Lcom/mediatek/StkSelection/StkSelection;->serviceComplete:Ljava/lang/Runnable;

    .line 214
    new-instance v0, Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v1, p0, Lcom/mediatek/StkSelection/StkSelection;->serviceComplete:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/mediatek/StkSelection/StkSelection;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-void
.end method

.method public static IccCardReady(I)Z
    .locals 3
    .parameter "slot"

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 252
    .local v0, bRet:Z
    const/4 v1, 0x5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 261
    :goto_0
    return v0

    .line 252
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mediatek/StkSelection/StkSelection;)Lcom/mediatek/CellConnService/CellConnMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/StkSelection/StkSelection;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-object v0
.end method

.method public static hasIccCard(I)Z
    .locals 6
    .parameter "slot"

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 222
    .local v0, bRet:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 223
    .local v2, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 224
    invoke-interface {v2, p0}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 241
    .end local v2           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    const-string v3, "StkSelection "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimInsert: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return v0

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "StkSelection "

    const-string v4, "isSimInsert: fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private showTextToast(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 265
    invoke-virtual {p0}, Lcom/mediatek/StkSelection/StkSelection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 267
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 268
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 269
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const-string v0, "StkSelection "

    const-string v1, "[onCreate]+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/mediatek/StkSelection/StkSelection;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0, p0}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 79
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/mediatek/StkSelection/StkSelection;->setContentView(I)V

    .line 80
    const-string v0, "StkSelection "

    const-string v1, "[onCreate]-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "StkSelection "

    const-string v1, "[onDestroy]+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 91
    iget-object v0, p0, Lcom/mediatek/StkSelection/StkSelection;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 92
    const-string v0, "StkSelection "

    const-string v1, "[onDestroy]-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method protected onResume()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    const v12, 0x7f040004

    const v11, 0x7f040001

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 99
    const-string v6, "StkSelection "

    const-string v7, "[onResume]+"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sput-object v8, Lcom/mediatek/StkSelection/StkSelection;->strTargetLoc:Ljava/lang/String;

    .line 101
    sput-object v8, Lcom/mediatek/StkSelection/StkSelection;->strTargetClass:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/mediatek/StkSelection/StkSelection;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 128
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/mediatek/StkSelection/StkSelection;->hasIccCard(I)Z

    move-result v6

    sput-boolean v6, Lcom/mediatek/StkSelection/StkSelection;->bSIM1Inserted:Z

    .line 129
    invoke-static {v9}, Lcom/mediatek/StkSelection/StkSelection;->hasIccCard(I)Z

    move-result v6

    sput-boolean v6, Lcom/mediatek/StkSelection/StkSelection;->bSIM2Inserted:Z

    .line 131
    const/4 v4, 0x0

    .line 133
    .local v4, mode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/StkSelection/StkSelection;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    .line 134
    const-string v6, "StkSelection "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    sget-boolean v6, Lcom/mediatek/StkSelection/StkSelection;->bSIM1Inserted:Z

    if-nez v6, :cond_0

    sget-boolean v6, Lcom/mediatek/StkSelection/StkSelection;->bSIM2Inserted:Z

    if-nez v6, :cond_0

    .line 141
    const v6, 0x7f040003

    invoke-virtual {p0, v6}, Lcom/mediatek/StkSelection/StkSelection;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/StkSelection/StkSelection;->showTextToast(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/mediatek/StkSelection/StkSelection;->finish()V

    .line 195
    :goto_1
    return-void

    .line 135
    :catch_0
    move-exception v2

    .line 136
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v6, "StkSelection "

    const-string v7, "fail to get property from Settings"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    .end local v2           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    sget-boolean v6, Lcom/mediatek/StkSelection/StkSelection;->bSIM1Inserted:Z

    if-ne v6, v9, :cond_4

    sget-boolean v6, Lcom/mediatek/StkSelection/StkSelection;->bSIM2Inserted:Z

    if-nez v6, :cond_4

    .line 145
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.android.stk"

    const-string v7, "com.android.stk.StkLauncherActivity"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .local v0, cName1:Landroid/content/ComponentName;
    if-eqz v4, :cond_1

    .line 150
    invoke-virtual {p0, v12}, Lcom/mediatek/StkSelection/StkSelection;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/StkSelection/StkSelection;->showTextToast(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/mediatek/StkSelection/StkSelection;->finish()V

    goto :goto_1

    .line 153
    :cond_1
    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 154
    invoke-virtual {p0, v11}, Lcom/mediatek/StkSelection/StkSelection;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/StkSelection/StkSelection;->showTextToast(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/mediatek/StkSelection/StkSelection;->finish()V

    goto :goto_1

    .line 158
    :cond_2
    const-string v6, "com.android.stk"

    sput-object v6, Lcom/mediatek/StkSelection/StkSelection;->strTargetLoc:Ljava/lang/String;

    .line 159
    const-string v6, "com.android.stk.StkLauncherActivity"

    sput-object v6, Lcom/mediatek/StkSelection/StkSelection;->strTargetClass:Ljava/lang/String;

    .line 186
    .end local v0           #cName1:Landroid/content/ComponentName;
    :goto_2
    sget-object v6, Lcom/mediatek/StkSelection/StkSelection;->strTargetLoc:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 187
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 188
    .local v3, intent:Landroid/content/Intent;
    sget-object v6, Lcom/mediatek/StkSelection/StkSelection;->strTargetLoc:Ljava/lang/String;

    sget-object v7, Lcom/mediatek/StkSelection/StkSelection;->strTargetClass:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0, v3}, Lcom/mediatek/StkSelection/StkSelection;->startActivity(Landroid/content/Intent;)V

    .line 190
    invoke-virtual {p0}, Lcom/mediatek/StkSelection/StkSelection;->finish()V

    .line 193
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/StkSelection/StkSelection;->finish()V

    .line 194
    const-string v6, "StkSelection "

    const-string v7, "[onResume]-"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 161
    :cond_4
    sget-boolean v6, Lcom/mediatek/StkSelection/StkSelection;->bSIM1Inserted:Z

    if-nez v6, :cond_7

    sget-boolean v6, Lcom/mediatek/StkSelection/StkSelection;->bSIM2Inserted:Z

    if-ne v6, v9, :cond_7

    .line 162
    new-instance v1, Landroid/content/ComponentName;

    const-string v6, "com.android.stk"

    const-string v7, "com.android.stk.StkLauncherActivityII"

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .local v1, cName2:Landroid/content/ComponentName;
    if-eqz v4, :cond_5

    .line 168
    invoke-virtual {p0, v12}, Lcom/mediatek/StkSelection/StkSelection;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/StkSelection/StkSelection;->showTextToast(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/mediatek/StkSelection/StkSelection;->finish()V

    goto :goto_1

    .line 171
    :cond_5
    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v6

    if-ne v6, v10, :cond_6

    .line 172
    invoke-virtual {p0, v11}, Lcom/mediatek/StkSelection/StkSelection;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/StkSelection/StkSelection;->showTextToast(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/mediatek/StkSelection/StkSelection;->finish()V

    goto/16 :goto_1

    .line 176
    :cond_6
    const-string v6, "com.android.stk"

    sput-object v6, Lcom/mediatek/StkSelection/StkSelection;->strTargetLoc:Ljava/lang/String;

    .line 177
    const-string v6, "com.android.stk.StkLauncherActivityII"

    sput-object v6, Lcom/mediatek/StkSelection/StkSelection;->strTargetClass:Ljava/lang/String;

    goto :goto_2

    .line 180
    .end local v1           #cName2:Landroid/content/ComponentName;
    :cond_7
    const-string v6, "com.android.phone"

    sput-object v6, Lcom/mediatek/StkSelection/StkSelection;->strTargetLoc:Ljava/lang/String;

    .line 181
    const-string v6, "com.mediatek.phone.StkListEntrance"

    sput-object v6, Lcom/mediatek/StkSelection/StkSelection;->strTargetClass:Ljava/lang/String;

    goto :goto_2
.end method
