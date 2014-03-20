.class public Landroid/app/NotificationManagerPlus;
.super Ljava/lang/Object;
.source "NotificationManagerPlus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NotificationManagerPlus$OnLastDismissListener;,
        Landroid/app/NotificationManagerPlus$OnFirstShowListener;,
        Landroid/app/NotificationManagerPlus$ManagerBuilder;,
        Landroid/app/NotificationManagerPlus$Parameters;,
        Landroid/app/NotificationManagerPlus$DialogPlus;
    }
.end annotation


# static fields
.field private static final LOG:Z = true

.field private static final MSG_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NotificationManangerPlus"


# instance fields
.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/NotificationManagerPlus$DialogPlus;",
            ">;"
        }
    .end annotation
.end field

.field private mListening:Z

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

.field private mParams:Landroid/app/NotificationManagerPlus$Parameters;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSend:Z


# direct methods
.method private constructor <init>(Landroid/app/NotificationManagerPlus$Parameters;)V
    .locals 3
    .parameter "p"

    .prologue
    .line 341
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/NotificationManagerPlus;->mSend:Z

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/NotificationManagerPlus;->mListening:Z

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Landroid/app/NotificationManagerPlus$1;

    invoke-direct {v0, p0}, Landroid/app/NotificationManagerPlus$1;-><init>(Landroid/app/NotificationManagerPlus;)V

    iput-object v0, p0, Landroid/app/NotificationManagerPlus;->mHandler:Landroid/os/Handler;

    .line 287
    new-instance v0, Landroid/app/NotificationManagerPlus$4;

    invoke-direct {v0, p0}, Landroid/app/NotificationManagerPlus$4;-><init>(Landroid/app/NotificationManagerPlus;)V

    iput-object v0, p0, Landroid/app/NotificationManagerPlus;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 305
    new-instance v0, Landroid/app/NotificationManagerPlus$5;

    invoke-direct {v0, p0}, Landroid/app/NotificationManagerPlus$5;-><init>(Landroid/app/NotificationManagerPlus;)V

    iput-object v0, p0, Landroid/app/NotificationManagerPlus;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 323
    new-instance v0, Landroid/app/NotificationManagerPlus$6;

    invoke-direct {v0, p0}, Landroid/app/NotificationManagerPlus$6;-><init>(Landroid/app/NotificationManagerPlus;)V

    iput-object v0, p0, Landroid/app/NotificationManagerPlus;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    .line 342
    iget-object v0, p1, Landroid/app/NotificationManagerPlus$Parameters;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context not allowed null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    iput-object p1, p0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    .line 346
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationManagerPlus;->mFilter:Landroid/content/IntentFilter;

    .line 347
    iget-object v0, p0, Landroid/app/NotificationManagerPlus;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "mediatek.intent.action.FULL_SCRENN_NOTIFY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Landroid/app/NotificationManagerPlus;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    iget-object v0, v0, Landroid/app/NotificationManagerPlus$Parameters;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/NotificationManagerPlus;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/app/NotificationManagerPlus;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 352
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/NotificationManagerPlus$Parameters;Landroid/app/NotificationManagerPlus$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/app/NotificationManagerPlus;-><init>(Landroid/app/NotificationManagerPlus$Parameters;)V

    return-void
.end method

.method static synthetic access$000(Landroid/app/NotificationManagerPlus;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/app/NotificationManagerPlus;->resolve(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/NotificationManagerPlus;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/app/NotificationManagerPlus;->mSend:Z

    return v0
.end method

.method static synthetic access$200(Landroid/app/NotificationManagerPlus;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/app/NotificationManagerPlus;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/NotificationManagerPlus;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Landroid/app/NotificationManagerPlus;)Landroid/app/NotificationManagerPlus$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    return-object v0
.end method

.method private buildOnCancelListener(Landroid/app/PendingIntent;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1
    .parameter "pending"

    .prologue
    .line 267
    if-nez p1, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 270
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/app/NotificationManagerPlus$3;

    invoke-direct {v0, p0, p1}, Landroid/app/NotificationManagerPlus$3;-><init>(Landroid/app/NotificationManagerPlus;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private buildOnClickListenr(Landroid/app/PendingIntent;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "pending"

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 251
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/app/NotificationManagerPlus$2;

    invoke-direct {v0, p0, p1}, Landroid/app/NotificationManagerPlus$2;-><init>(Landroid/app/NotificationManagerPlus;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static cancel(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 479
    new-instance v0, Landroid/app/NotificationPlus;

    invoke-direct {v0, p0}, Landroid/app/NotificationPlus;-><init>(Landroid/content/Context;)V

    .line 480
    .local v0, notification:Landroid/app/NotificationPlus;
    invoke-virtual {v0, p1}, Landroid/app/NotificationPlus;->setId(I)V

    .line 481
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationPlus;->setType(I)V

    .line 482
    invoke-virtual {v0}, Landroid/app/NotificationPlus;->send()V

    .line 483
    return-void
.end method

.method public static cancelAll(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 491
    new-instance v0, Landroid/app/NotificationPlus;

    invoke-direct {v0, p0}, Landroid/app/NotificationPlus;-><init>(Landroid/content/Context;)V

    .line 492
    .local v0, notification:Landroid/app/NotificationPlus;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationPlus;->setType(I)V

    .line 493
    invoke-virtual {v0}, Landroid/app/NotificationPlus;->send()V

    .line 494
    return-void
.end method

.method public static notify(ILandroid/app/NotificationPlus;)V
    .locals 1
    .parameter "id"
    .parameter "notification"

    .prologue
    .line 467
    invoke-virtual {p1, p0}, Landroid/app/NotificationPlus;->setId(I)V

    .line 468
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/NotificationPlus;->setType(I)V

    .line 469
    invoke-virtual {p1}, Landroid/app/NotificationPlus;->send()V

    .line 470
    return-void
.end method

.method private resolve(Landroid/os/Bundle;)V
    .locals 17
    .parameter "extra"

    .prologue
    .line 97
    const-string v14, "mediatek.intent.extra.package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 98
    .local v10, packageName:Ljava/lang/String;
    const-string v14, "mediatek.intent.extra.type"

    const/4 v15, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 100
    .local v13, type:I
    const-string v14, "NotificationManangerPlus"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "resolve("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") packageName="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", type="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    if-eqz v10, :cond_0

    const/4 v14, 0x1

    if-eq v13, v14, :cond_1

    const/4 v14, 0x2

    if-eq v13, v14, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const-string v14, "mediatek.intent.extra.id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    .line 107
    .local v4, hasId:Z
    const/4 v5, -0x1

    .line 108
    .local v5, id:I
    if-eqz v4, :cond_2

    .line 109
    const-string v14, "mediatek.intent.extra.id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 111
    :cond_2
    const/4 v14, 0x2

    if-ne v13, v14, :cond_7

    .line 112
    if-eqz v4, :cond_5

    .line 114
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    monitor-enter v15

    .line 115
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/NotificationManagerPlus$DialogPlus;>;"
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 116
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManagerPlus$DialogPlus;

    .line 117
    .local v2, dialog:Landroid/app/NotificationManagerPlus$DialogPlus;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10, v5}, Landroid/app/NotificationManagerPlus;->equals(Landroid/app/NotificationManagerPlus$DialogPlus;Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 118
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 119
    invoke-virtual {v2}, Landroid/app/NotificationManagerPlus$DialogPlus;->cancel()V

    .line 123
    .end local v2           #dialog:Landroid/app/NotificationManagerPlus$DialogPlus;
    :cond_4
    monitor-exit v15

    goto :goto_0

    .end local v6           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/NotificationManagerPlus$DialogPlus;>;"
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 126
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/NotificationManagerPlus$DialogPlus;>;"
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 127
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManagerPlus$DialogPlus;

    .line 128
    .restart local v2       #dialog:Landroid/app/NotificationManagerPlus$DialogPlus;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Landroid/app/NotificationManagerPlus;->equals(Landroid/app/NotificationManagerPlus$DialogPlus;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 129
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 130
    invoke-virtual {v2}, Landroid/app/NotificationManagerPlus$DialogPlus;->cancel()V

    goto :goto_0

    .line 139
    .end local v2           #dialog:Landroid/app/NotificationManagerPlus$DialogPlus;
    .end local v6           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/NotificationManagerPlus$DialogPlus;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/app/NotificationManagerPlus;->mListening:Z

    if-eqz v14, :cond_0

    .line 143
    const/4 v3, 0x0

    .line 144
    .local v3, find:Landroid/app/NotificationManagerPlus$DialogPlus;
    if-nez v4, :cond_8

    .line 145
    const-string v14, "NotificationManangerPlus"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "resolve("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") type=notify, but no id!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 148
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/NotificationManagerPlus$DialogPlus;>;"
    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 149
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManagerPlus$DialogPlus;

    .line 150
    .local v12, temp:Landroid/app/NotificationManagerPlus$DialogPlus;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10, v5}, Landroid/app/NotificationManagerPlus;->equals(Landroid/app/NotificationManagerPlus$DialogPlus;Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 151
    move-object v3, v12

    .line 156
    .end local v12           #temp:Landroid/app/NotificationManagerPlus$DialogPlus;
    :cond_a
    new-instance v9, Landroid/app/NotificationManagerPlus$DialogPlus;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    iget-object v14, v14, Landroid/app/NotificationManagerPlus$Parameters;->mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Landroid/app/NotificationManagerPlus$DialogPlus;-><init>(Landroid/content/Context;)V

    .line 157
    .local v9, newDialog:Landroid/app/NotificationManagerPlus$DialogPlus;
    invoke-virtual {v9, v10}, Landroid/app/NotificationManagerPlus$DialogPlus;->setPackageName(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v9, v5}, Landroid/app/NotificationManagerPlus$DialogPlus;->setId(I)V

    .line 159
    const-string v14, "mediatek.intent.extra.content.title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/app/NotificationManagerPlus$DialogPlus;->setTitle(Ljava/lang/CharSequence;)V

    .line 160
    const-string v14, "mediatek.intent.extra.content.text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/app/NotificationManagerPlus$DialogPlus;->setMessage(Ljava/lang/CharSequence;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    iget-boolean v14, v14, Landroid/app/NotificationManagerPlus$Parameters;->mPositiveButtonHandled:Z

    if-eqz v14, :cond_10

    .line 163
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    iget-object v15, v15, Landroid/app/NotificationManagerPlus$Parameters;->mPositiveButtonText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/NotificationManagerPlus$Parameters;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v14, v15, v0}, Landroid/app/NotificationManagerPlus$DialogPlus;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 172
    :cond_b
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    iget-boolean v14, v14, Landroid/app/NotificationManagerPlus$Parameters;->mNeutralButtonHandled:Z

    if-eqz v14, :cond_11

    .line 174
    const/4 v14, -0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    iget-object v15, v15, Landroid/app/NotificationManagerPlus$Parameters;->mNeutralButtonText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/NotificationManagerPlus$Parameters;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v14, v15, v0}, Landroid/app/NotificationManagerPlus$DialogPlus;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 183
    :cond_c
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    iget-boolean v14, v14, Landroid/app/NotificationManagerPlus$Parameters;->mNegativeButtonHandled:Z

    if-eqz v14, :cond_12

    .line 185
    const/4 v14, -0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    iget-object v15, v15, Landroid/app/NotificationManagerPlus$Parameters;->mNegativeButtonText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/NotificationManagerPlus$Parameters;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v14, v15, v0}, Landroid/app/NotificationManagerPlus$DialogPlus;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 194
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    iget-boolean v14, v14, Landroid/app/NotificationManagerPlus$Parameters;->mCancelable:Z

    if-eqz v14, :cond_e

    .line 196
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    iget-boolean v14, v14, Landroid/app/NotificationManagerPlus$Parameters;->mCancelHandled:Z

    if-eqz v14, :cond_13

    .line 198
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    iget-object v14, v14, Landroid/app/NotificationManagerPlus$Parameters;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v9, v14}, Landroid/app/NotificationManagerPlus$DialogPlus;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 212
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v9, v14}, Landroid/app/NotificationManagerPlus$DialogPlus;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v9, v14}, Landroid/app/NotificationManagerPlus$DialogPlus;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 214
    invoke-virtual {v9}, Landroid/app/NotificationManagerPlus$DialogPlus;->show()V

    .line 215
    if-eqz v3, :cond_f

    .line 216
    invoke-virtual {v3}, Landroid/app/NotificationManagerPlus$DialogPlus;->dismiss()V

    .line 219
    :cond_f
    const-string v14, "NotificationManangerPlus"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "resolve("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") find="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 165
    :cond_10
    const-string v14, "mediatek.intent.extra.button.name.positive"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 166
    const-string v14, "mediatek.intent.extra.button.intent.positive"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .line 168
    .local v11, positive:Landroid/app/PendingIntent;
    const/4 v14, -0x1

    const-string v15, "mediatek.intent.extra.button.name.positive"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/app/NotificationManagerPlus;->buildOnClickListenr(Landroid/app/PendingIntent;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v14, v15, v0}, Landroid/app/NotificationManagerPlus$DialogPlus;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    .line 176
    .end local v11           #positive:Landroid/app/PendingIntent;
    :cond_11
    const-string v14, "mediatek.intent.extra.button.name.neutral"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 177
    const-string v14, "mediatek.intent.extra.button.intent.neutral"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 179
    .local v8, neutral:Landroid/app/PendingIntent;
    const/4 v14, -0x3

    const-string v15, "mediatek.intent.extra.button.name.neutral"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/app/NotificationManagerPlus;->buildOnClickListenr(Landroid/app/PendingIntent;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v14, v15, v0}, Landroid/app/NotificationManagerPlus$DialogPlus;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 187
    .end local v8           #neutral:Landroid/app/PendingIntent;
    :cond_12
    const-string v14, "mediatek.intent.extra.button.name.negative"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 188
    const-string v14, "mediatek.intent.extra.button.intent.negative"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 190
    .local v7, negative:Landroid/app/PendingIntent;
    const/4 v14, -0x2

    const-string v15, "mediatek.intent.extra.button.name.negative"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/app/NotificationManagerPlus;->buildOnClickListenr(Landroid/app/PendingIntent;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v14, v15, v0}, Landroid/app/NotificationManagerPlus$DialogPlus;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_3

    .line 200
    .end local v7           #negative:Landroid/app/PendingIntent;
    :cond_13
    const-string v14, "mediatek.intent.extra.cancel.enable"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 202
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    const-string v15, "mediatek.intent.extra.cancel.enable"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    iput-boolean v15, v14, Landroid/app/NotificationManagerPlus$Parameters;->mCancelable:Z

    .line 205
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    iget-boolean v14, v14, Landroid/app/NotificationManagerPlus$Parameters;->mCancelable:Z

    if-eqz v14, :cond_e

    .line 206
    const-string v14, "mediatek.intent.extra.cancel.intent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 208
    .local v1, cancel:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/app/NotificationManagerPlus;->buildOnCancelListener(Landroid/app/PendingIntent;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/app/NotificationManagerPlus$DialogPlus;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_4
.end method


# virtual methods
.method public cancelAll()V
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/NotificationManagerPlus;->cancelAll(Z)V

    .line 408
    return-void
.end method

.method public cancelAll(Z)V
    .locals 5
    .parameter "ignoreAction"

    .prologue
    .line 418
    const-string v2, "NotificationManangerPlus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelAll("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v3, p0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 421
    :try_start_0
    iget-object v2, p0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManagerPlus$DialogPlus;

    .line 422
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    invoke-virtual {v0}, Landroid/app/NotificationManagerPlus$DialogPlus;->cancel()V

    goto :goto_0

    .line 429
    .end local v0           #dialog:Landroid/app/Dialog;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 426
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    if-eqz p1, :cond_2

    .line 427
    :try_start_1
    iget-object v2, p0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 429
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    return-void
.end method

.method public clearAll()V
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/NotificationManagerPlus;->clearAll(Z)V

    .line 437
    return-void
.end method

.method public clearAll(Z)V
    .locals 5
    .parameter "ignoreAction"

    .prologue
    .line 447
    const-string v2, "NotificationManangerPlus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearAll("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v3, p0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 450
    :try_start_0
    iget-object v2, p0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManagerPlus$DialogPlus;

    .line 451
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    invoke-virtual {v0}, Landroid/app/NotificationManagerPlus$DialogPlus;->dismiss()V

    goto :goto_0

    .line 458
    .end local v0           #dialog:Landroid/app/Dialog;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 455
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    if-eqz p1, :cond_2

    .line 456
    :try_start_1
    iget-object v2, p0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 458
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
    return-void
.end method

.method public equals(Landroid/app/NotificationManagerPlus$DialogPlus;Ljava/lang/String;)Z
    .locals 2
    .parameter "cmp"
    .parameter "packageName"

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, result:Z
    if-nez p2, :cond_1

    iget-object v1, p1, Landroid/app/NotificationManagerPlus$DialogPlus;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 239
    const/4 v0, 0x1

    .line 244
    :cond_0
    :goto_0
    return v0

    .line 240
    :cond_1
    if-eqz p2, :cond_0

    iget-object v1, p1, Landroid/app/NotificationManagerPlus$DialogPlus;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/app/NotificationManagerPlus$DialogPlus;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Landroid/app/NotificationManagerPlus$DialogPlus;Ljava/lang/String;I)Z
    .locals 2
    .parameter "cmp"
    .parameter "packageName"
    .parameter "id"

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, result:Z
    iget v1, p1, Landroid/app/NotificationManagerPlus$DialogPlus;->mId:I

    if-ne p3, v1, :cond_0

    .line 226
    if-nez p2, :cond_1

    iget-object v1, p1, Landroid/app/NotificationManagerPlus$DialogPlus;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 227
    const/4 v0, 0x1

    .line 233
    :cond_0
    :goto_0
    return v0

    .line 228
    :cond_1
    if-eqz p2, :cond_0

    iget-object v1, p1, Landroid/app/NotificationManagerPlus$DialogPlus;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/app/NotificationManagerPlus$DialogPlus;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 369
    const-string v0, "NotificationManangerPlus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause() mSend="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/NotificationManagerPlus;->mSend:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/NotificationManagerPlus;->mSend:Z

    .line 372
    iget-object v0, p0, Landroid/app/NotificationManagerPlus;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 373
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 359
    const-string v0, "NotificationManangerPlus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume() mSend="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/NotificationManagerPlus;->mSend:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/NotificationManagerPlus;->mSend:Z

    .line 362
    return-void
.end method

.method public startListening()V
    .locals 3

    .prologue
    .line 380
    const-string v0, "NotificationManangerPlus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startListening() mListening="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/NotificationManagerPlus;->mListening:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-boolean v0, p0, Landroid/app/NotificationManagerPlus;->mListening:Z

    if-nez v0, :cond_0

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/NotificationManagerPlus;->mListening:Z

    .line 386
    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 3

    .prologue
    .line 394
    const-string v0, "NotificationManangerPlus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopListening() mListening="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/NotificationManagerPlus;->mListening:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-boolean v0, p0, Landroid/app/NotificationManagerPlus;->mListening:Z

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Landroid/app/NotificationManagerPlus;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/NotificationManagerPlus;->mListening:Z

    .line 401
    :cond_0
    return-void
.end method
