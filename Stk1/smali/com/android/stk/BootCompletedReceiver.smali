.class public Lcom/android/stk/BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompletedReceiver.java"


# static fields
.field public static final EXTRA_VALUE_REMOVE_SIM:Ljava/lang/String; = "REMOVE"

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"

.field private static final LOGTAG:Ljava/lang/String; = "Stk-BCR "

.field private static mHasBootComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/stk/BootCompletedReceiver;->mHasBootComplete:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private checkSimRadioState(Landroid/content/Context;I)Z
    .locals 6
    .parameter "context"
    .parameter "sim_id"

    .prologue
    const/4 v5, 0x3

    .line 87
    const/4 v0, -0x1

    .line 88
    .local v0, dualSimMode:I
    const/4 v1, 0x0

    .line 91
    .local v1, result:Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dual_sim_mode_setting"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 93
    const-string v2, "Stk-BCR "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dualSimMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sim id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    packed-switch p2, :pswitch_data_0

    .line 109
    :cond_0
    :goto_0
    return v1

    .line 97
    :pswitch_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v5, :cond_0

    .line 99
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 103
    :pswitch_1
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    if-ne v0, v5, :cond_0

    .line 105
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/stk/StkAppInstaller;->getInstance()Lcom/android/stk/StkAppInstaller;

    move-result-object v6

    .line 116
    .local v6, appInstaller:Lcom/android/stk/StkAppInstaller;
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v7

    .line 119
    .local v7, appService:Lcom/android/stk/StkAppService;
    const-string v20, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 120
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v9, args:Landroid/os/Bundle;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 122
    .local v18, op:[I
    const/16 v20, 0x0

    const/16 v21, 0x5

    aput v21, v18, v20

    .line 123
    const/16 v20, 0x1

    sget v21, Lcom/android/stk/StkAppService;->STK_GEMINI_BROADCAST_ALL:I

    aput v21, v18, v20

    .line 124
    const-string v20, "op"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 125
    new-instance v20, Landroid/content/Intent;

    const-class v21, Lcom/android/stk/StkAppService;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 134
    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/stk/BootCompletedReceiver;->mHasBootComplete:Z

    .line 135
    const-string v20, "Stk-BCR "

    const-string v21, "[ACTION_BOOT_COMPLETED]"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .end local v9           #args:Landroid/os/Bundle;
    .end local v18           #op:[I
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const-string v20, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 137
    const-string v20, "Stk-BCR "

    const-string v21, "get ACTION_SIM_STATE_CHANGED"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v20, "simId"

    const/16 v21, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 140
    .local v3, SIMID:I
    const-string v20, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, SIMStatus:Ljava/lang/String;
    const-string v20, "Stk-BCR "

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[ACTION_SIM_STATE_CHANGED][simId] : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v20, "Stk-BCR "

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[ACTION_SIM_STATE_CHANGED][SimStatus] : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    if-ltz v3, :cond_7

    const/16 v20, 0x1

    move/from16 v0, v20

    if-gt v3, v0, :cond_7

    .line 145
    const-string v20, "Stk-BCR "

    const-string v21, "[ACTION_SIM_STATE_CHANGED][Feature GEMINI]"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 147
    .local v11, bundle:Landroid/os/Bundle;
    const-string v20, "affinity"

    const-string v21, "com.android.stk"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v17, it:Landroid/content/Intent;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 151
    const-string v20, "Stk-BCR "

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isSetupMenuCalled["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v3}, Lcom/android/stk/StkAppService;->isSetupMenuCalled(I)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v20, "Stk-BCR "

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mHasBootComplete["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-boolean v22, Lcom/android/stk/BootCompletedReceiver;->mHasBootComplete:Z

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v10, 0x1

    .line 155
    .local v10, bUnInstall:Z
    invoke-static {v3}, Lcom/android/stk/StkAppService;->isSetupMenuCalled(I)Z

    move-result v20

    if-eqz v20, :cond_3

    const-string v20, "READY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    const-string v20, "IMSI"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    const-string v20, "LOADED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 156
    :cond_2
    const/4 v10, 0x0

    .line 159
    :cond_3
    invoke-static {v3}, Lcom/android/stk/StkAppInstaller;->getIsInstalled(I)I

    move-result v8

    .line 160
    .local v8, app_state:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_4

    .line 162
    const-string v20, "Stk-BCR "

    const-string v21, "Initialize the app state in launcher"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v3}, Lcom/android/stk/StkAppInstaller;->install(Landroid/content/Context;I)V

    .line 164
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/stk/BootCompletedReceiver;->checkSimRadioState(Landroid/content/Context;I)Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 167
    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v3}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    .line 170
    :cond_4
    const-string v20, "READY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    const-string v20, "LOADED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    :cond_5
    sget-boolean v20, Lcom/android/stk/BootCompletedReceiver;->mHasBootComplete:Z

    if-eqz v20, :cond_6

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getSaveNewSetUpMenuFlag(I)Z

    move-result v20

    if-nez v20, :cond_6

    .line 176
    const-string v20, "LOADED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 178
    const-string v20, "Stk-BCR "

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Disable the STK of sim"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, v3, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " because still not receive SET_UP_MENU after boot up"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v3, v0}, Lcom/android/stk/StkAppService;->StkAvailable(II)V

    .line 180
    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v3}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    .line 181
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0, v3}, Lcom/android/stk/StkAppService;->setUserAccessState(ZI)V

    .line 182
    const/4 v10, 0x1

    .line 196
    :cond_6
    :goto_1
    if-eqz v7, :cond_a

    .line 198
    invoke-virtual {v7, v3}, Lcom/android/stk/StkAppService;->StkQueryAvailable(I)I

    move-result v12

    .line 199
    .local v12, currentState:I
    const-string v20, "Stk-BCR "

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[ACTION_SIM_STATE_CHANGED][bUnInstall] : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", currentState: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    if-eqz v10, :cond_9

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v8, v0, :cond_9

    .line 201
    const-string v20, "Stk-BCR "

    const-string v21, "ADD_RECENET_IGNORE"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v20, "android.intent.action.ADD_RECENET_IGNORE"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 205
    const-string v20, "Stk-BCR "

    const-string v21, "get ACTION_SIM_STATE_CHANGED - unInstall"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v3, v0}, Lcom/android/stk/StkAppService;->StkAvailable(II)V

    .line 207
    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v3}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    .line 208
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0, v3}, Lcom/android/stk/StkAppService;->setUserAccessState(ZI)V

    .line 224
    .end local v8           #app_state:I
    .end local v10           #bUnInstall:Z
    .end local v11           #bundle:Landroid/os/Bundle;
    .end local v12           #currentState:I
    .end local v17           #it:Landroid/content/Intent;
    :cond_7
    :goto_2
    const-string v20, "Stk-BCR "

    const-string v21, "get ACTION_SIM_STATE_CHANGED  finish"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 187
    .restart local v8       #app_state:I
    .restart local v10       #bUnInstall:Z
    .restart local v11       #bundle:Landroid/os/Bundle;
    .restart local v17       #it:Landroid/content/Intent;
    :cond_8
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 188
    .restart local v9       #args:Landroid/os/Bundle;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 189
    .restart local v18       #op:[I
    const/16 v20, 0x0

    const/16 v21, 0x9

    aput v21, v18, v20

    .line 190
    const/16 v20, 0x1

    aput v3, v18, v20

    .line 191
    const-string v20, "op"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 192
    new-instance v20, Landroid/content/Intent;

    const-class v21, Lcom/android/stk/StkAppService;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 209
    .end local v9           #args:Landroid/os/Bundle;
    .end local v18           #op:[I
    .restart local v12       #currentState:I
    :cond_9
    if-nez v10, :cond_7

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_7

    .line 210
    const-string v20, "Stk-BCR "

    const-string v21, "REMOVE_RECENET_IGNORE"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v20, "android.intent.action.REMOVE_RECENET_IGNORE"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 214
    const-string v20, "Stk-BCR "

    const-string v21, "get ACTION_SIM_STATE_CHANGED - install"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v3}, Lcom/android/stk/StkAppInstaller;->install(Landroid/content/Context;I)V

    .line 216
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v7, v3, v0}, Lcom/android/stk/StkAppService;->StkAvailable(II)V

    goto :goto_2

    .line 221
    .end local v12           #currentState:I
    :cond_a
    const-string v20, "Stk-BCR "

    const-string v21, "get ACTION_SIM_STATE_CHANGED - StkAppService instance is null"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 225
    .end local v3           #SIMID:I
    .end local v4           #SIMStatus:Ljava/lang/String;
    .end local v8           #app_state:I
    .end local v10           #bUnInstall:Z
    .end local v11           #bundle:Landroid/os/Bundle;
    .end local v17           #it:Landroid/content/Intent;
    :cond_b
    const-string v20, "android.intent.action.ACTION_SIM_DETECTED"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 229
    const-string v20, "Stk-BCR "

    const-string v21, "get SIM_DETECTED begin"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v20, "simDetectStatus"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 232
    .local v19, status:Ljava/lang/String;
    const-string v20, "Stk-BCR "

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SIM_DETECTED, status: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v20, "REMOVE"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 235
    const/4 v14, 0x0

    .line 236
    .local v14, i:I
    const-string v20, "phone"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v15

    .line 237
    .local v15, iTel:Lcom/android/internal/telephony/ITelephony;
    if-eqz v15, :cond_d

    .line 239
    const/16 v16, 0x1

    .line 240
    .local v16, isSimInserted:Z
    const/4 v14, 0x0

    :goto_3
    sget v20, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    move/from16 v0, v20

    if-ge v14, v0, :cond_e

    .line 243
    :try_start_0
    invoke-interface {v15, v14}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v16

    .line 244
    if-nez v16, :cond_c

    .line 247
    const-string v20, "Stk-BCR "

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SIM_DETECTED, removed sim: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 249
    .restart local v9       #args:Landroid/os/Bundle;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 250
    .restart local v18       #op:[I
    const/16 v20, 0x0

    const/16 v21, 0x9

    aput v21, v18, v20

    .line 251
    const/16 v20, 0x1

    aput v14, v18, v20

    .line 252
    const-string v20, "op"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 253
    new-instance v20, Landroid/content/Intent;

    const-class v21, Lcom/android/stk/StkAppService;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v9           #args:Landroid/os/Bundle;
    .end local v18           #op:[I
    :cond_c
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 256
    :catch_0
    move-exception v13

    .line 258
    .local v13, ex:Ljava/lang/Exception;
    const-string v20, "Stk-BCR "

    const-string v21, "Query Sim insert status fail"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 264
    .end local v13           #ex:Ljava/lang/Exception;
    .end local v16           #isSimInserted:Z
    :cond_d
    const-string v20, "Stk-BCR "

    const-string v21, "ITelephony is null"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .end local v14           #i:I
    .end local v15           #iTel:Lcom/android/internal/telephony/ITelephony;
    :cond_e
    const-string v20, "Stk-BCR "

    const-string v21, "get SIM_DETECTED end"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
