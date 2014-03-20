.class public final Lcom/mediatek/lowstorage/LowStorageHandle;
.super Ljava/lang/Object;
.source "LowStorageHandle.java"

# interfaces
.implements Lcom/mediatek/common/lowstorage/ILowStorageHandle;


# static fields
.field public static final APPBANK_MAX_KB_SIZE:J = 0x400L

.field public static final APPBANK_PATH:Ljava/lang/String; = "/data/appbank"

.field public static final FORCE_CLEAN_ENABLE:Z = false

.field private static final FREE_MEMORY:I = 0xa

.field public static final LSM_THRESHOLD_FORCE_CLEAN:J = 0x0L

.field public static final LSM_THRESHOLD_LOWMEM:J = 0x600L

.field public static final LSM_THRESHOLD_WARN:J = 0x1000L

.field public static final PIGGYBANK_MAX_KB_SIZE:J = 0x1000L

.field public static final PIGGYBANK_PATH:Ljava/lang/String; = "/data/piggybank"

.field static final TAG:Ljava/lang/String; = "LowStorageHandle"

.field private static sInstance:Lcom/mediatek/lowstorage/LowStorageHandle;


# instance fields
.field public final DEL_FILENAME_PATTERN:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/lowstorage/LowStorageHandle;->mContext:Landroid/content/Context;

    .line 83
    const-string v0, "^core\\.[0-9]*"

    iput-object v0, p0, Lcom/mediatek/lowstorage/LowStorageHandle;->DEL_FILENAME_PATTERN:Ljava/lang/String;

    .line 130
    iput-object p1, p0, Lcom/mediatek/lowstorage/LowStorageHandle;->mContext:Landroid/content/Context;

    .line 131
    return-void
.end method

.method private LSMRemoveCoredump()V
    .locals 11

    .prologue
    .line 108
    const-string v7, "LowStorageHandle"

    const-string v8, "remove system core dump file to save storge memory"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/core"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 111
    .local v6, root_path:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v5, path:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 114
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 115
    .local v2, filename:Ljava/lang/String;
    const-string v7, "^core\\.[0-9]*"

    invoke-virtual {v2, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 118
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, f_remove:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 120
    const-string v7, "LowStorageHandle"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find and remove system core dump file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";free :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 114
    .end local v1           #f_remove:Ljava/io/File;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #filename:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method


# virtual methods
.method public GetCurrentFlag()Z
    .locals 2

    .prologue
    .line 180
    const-string v0, "sys.lowstorage_flag"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final crashApp(I)V
    .locals 4
    .parameter "res"

    .prologue
    .line 86
    const/4 v1, 0x0

    .line 88
    .local v1, lowMemIntent:Landroid/content/Intent;
    const/16 v2, 0xa

    if-ne p1, v2, :cond_0

    .line 89
    new-instance v1, Landroid/content/Intent;

    .end local v1           #lowMemIntent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .restart local v1       #lowMemIntent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/lowstorage/LowStorageHandle;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/mediatek/lowstorage/LowStorageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const-string v2, "LowStorageHandle"

    const-string v3, "mContext is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "LowStorageHandle"

    const-string v3, "Manage Application activty not found"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public createAppbank()V
    .locals 14

    .prologue
    .line 322
    const-wide/16 v7, 0x0

    .line 323
    .local v7, freeKBStorage:J
    const-wide/16 v0, 0x0

    .line 324
    .local v0, appKBSize:J
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 325
    .local v3, dataFileStats:Landroid/os/StatFs;
    new-instance v6, Ljava/io/File;

    const-string v10, "/data/appbank"

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    .local v6, f:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    .line 328
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v12

    int-to-long v12, v12

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x400

    div-long v7, v10, v12
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 334
    :goto_0
    const-string v10, "LowStorageHandle"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "freeKBStorage is :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :try_start_1
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 339
    .local v9, out:Ljava/io/OutputStream;
    const-wide/16 v10, 0x400

    cmp-long v10, v7, v10

    if-ltz v10, :cond_0

    .line 340
    const-wide/16 v0, 0x400

    .line 344
    :goto_1
    const-string v10, "LowStorageHandle"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "piggyKBSize is :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 346
    const/16 v10, 0x800

    :try_start_2
    new-array v2, v10, [B

    .line 347
    .local v2, buffer:[B
    const/4 v4, 0x0

    .line 348
    .local v4, dataWrite:I
    :goto_2
    int-to-long v10, v4

    const-wide/16 v12, 0x2

    div-long v12, v0, v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    .line 349
    const/4 v10, 0x0

    const/16 v11, 0x800

    invoke-virtual {v9, v2, v10, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 350
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 342
    .end local v2           #buffer:[B
    .end local v4           #dataWrite:I
    :cond_0
    long-to-double v10, v7

    const-wide v12, 0x3fe999999999999aL

    mul-double/2addr v10, v12

    double-to-long v0, v10

    goto :goto_1

    .line 353
    .restart local v2       #buffer:[B
    .restart local v4       #dataWrite:I
    :cond_1
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 361
    .end local v2           #buffer:[B
    .end local v4           #dataWrite:I
    .end local v9           #out:Ljava/io/OutputStream;
    :cond_2
    :goto_3
    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v12

    int-to-long v12, v12

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x400

    div-long v7, v10, v12
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    .line 367
    :goto_4
    const-string v10, "LowStorageHandle"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "freeKBStorage is :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void

    .line 353
    .restart local v9       #out:Ljava/io/OutputStream;
    :catchall_0
    move-exception v10

    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    throw v10
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 355
    .end local v9           #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v5

    .line 357
    .local v5, e:Ljava/io/IOException;
    const-string v10, "LowStorageHandle"

    const-string v11, "Can\'t create appbank"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 364
    .end local v5           #e:Ljava/io/IOException;
    :catch_1
    move-exception v10

    goto :goto_4

    .line 331
    :catch_2
    move-exception v10

    goto/16 :goto_0
.end method

.method public deleteAppbank()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x400

    .line 300
    const-wide/16 v4, 0x0

    .line 301
    .local v4, freeKBStorage:J
    const-wide/16 v0, 0x0

    .line 302
    .local v0, appKBSize:J
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 303
    .local v2, dataFileStats:Landroid/os/StatFs;
    new-instance v3, Ljava/io/File;

    const-string v6, "/data/appbank"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    .local v3, f:Ljava/io/File;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x400

    div-long v4, v6, v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    cmp-long v6, v4, v10

    if-gez v6, :cond_0

    .line 313
    const-string v6, "LowStorageHandle"

    const-string v7, "free appbank space for manage application operation"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 317
    :cond_0
    return-void

    .line 308
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public getLowStorageFlag()I
    .locals 1

    .prologue
    .line 104
    const/16 v0, 0xa

    return v0
.end method

.method public registerFilter()V
    .locals 3

    .prologue
    .line 134
    const-string v1, "LowStorageHandle"

    const-string v2, "register filter"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/mediatek/lowstorage/LowStorageHandle;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 138
    const-string v1, "LowStorageHandle"

    const-string v2, "register receiver"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    .local v0, lsmFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/mediatek/lowstorage/LowStorageHandle;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/mediatek/lowstorage/LowStorageHandle$1;

    invoke-direct {v2, p0}, Lcom/mediatek/lowstorage/LowStorageHandle$1;-><init>(Lcom/mediatek/lowstorage/LowStorageHandle;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    .end local v0           #lsmFilter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 174
    :cond_0
    const-string v1, "LowStorageHandle"

    const-string v2, "mContext is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public systemReadyLSM()V
    .locals 16

    .prologue
    .line 186
    const-wide/16 v7, 0x0

    .line 188
    .local v7, freeKBStorage:J
    const-string v12, "LowStorageHandle"

    const-string v13, " LSM_THRESHOLD_FORCE_CLEAN : 0; LSM_THRESHOLD_LOWMEM: 1536;LSM_THRESHOLD_WARN :4096"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v12, "LowStorageHandle"

    const-string v13, " FORCE_CLEAN_ENABLE : false"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 196
    .local v3, dataFileStats:Landroid/os/StatFs;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v14

    int-to-long v14, v14

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x400

    div-long v7, v12, v14
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    .line 202
    :goto_0
    const-string v12, "LowStorageHandle"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "data.free.before KB: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-wide/16 v10, 0x1000

    .line 206
    .local v10, piggyKBSize:J
    const-wide/16 v12, 0x2000

    cmp-long v12, v7, v12

    if-gtz v12, :cond_1

    const-wide/16 v12, 0x1000

    cmp-long v12, v7, v12

    if-lez v12, :cond_1

    .line 208
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/lowstorage/LowStorageHandle;->LSMRemoveCoredump()V

    .line 220
    :cond_0
    :goto_1
    const-string v12, "LowStorageHandle"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "systemReady : want to create piggybank KB:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v6, Ljava/io/File;

    const-string v12, "/data/piggybank"

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v6, f:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_4

    .line 225
    :try_start_1
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 227
    .local v9, out:Ljava/io/OutputStream;
    const/16 v12, 0x800

    :try_start_2
    new-array v2, v12, [B

    .line 228
    .local v2, buffer:[B
    const/4 v4, 0x0

    .line 229
    .local v4, dataWrite:I
    :goto_2
    int-to-long v12, v4

    const-wide/16 v14, 0x2

    div-long v14, v10, v14

    cmp-long v12, v12, v14

    if-gez v12, :cond_3

    .line 230
    const/4 v12, 0x0

    const/16 v13, 0x800

    invoke-virtual {v9, v2, v12, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 209
    .end local v2           #buffer:[B
    .end local v4           #dataWrite:I
    .end local v6           #f:Ljava/io/File;
    .end local v9           #out:Ljava/io/OutputStream;
    :cond_1
    const-wide/16 v12, 0x1000

    cmp-long v12, v7, v12

    if-gtz v12, :cond_2

    const-wide/16 v12, 0x800

    cmp-long v12, v7, v12

    if-ltz v12, :cond_2

    .line 211
    const-wide/16 v10, 0x800

    .line 212
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/lowstorage/LowStorageHandle;->LSMRemoveCoredump()V

    goto :goto_1

    .line 213
    :cond_2
    const-wide/16 v12, 0x800

    cmp-long v12, v7, v12

    if-gez v12, :cond_0

    .line 217
    long-to-double v12, v7

    const-wide v14, 0x3fe999999999999aL

    mul-double/2addr v12, v14

    double-to-long v10, v12

    .line 218
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/lowstorage/LowStorageHandle;->LSMRemoveCoredump()V

    goto :goto_1

    .line 234
    .restart local v2       #buffer:[B
    .restart local v4       #dataWrite:I
    .restart local v6       #f:Ljava/io/File;
    .restart local v9       #out:Ljava/io/OutputStream;
    :cond_3
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 243
    .end local v2           #buffer:[B
    .end local v4           #dataWrite:I
    .end local v9           #out:Ljava/io/OutputStream;
    :cond_4
    :goto_3
    new-instance v6, Ljava/io/File;

    .end local v6           #f:Ljava/io/File;
    const-string v12, "/data/appbank"

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .restart local v6       #f:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_7

    .line 247
    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v14

    int-to-long v14, v14

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x400

    div-long v7, v12, v14
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    .line 253
    :goto_4
    const-wide/16 v0, 0x400

    .line 254
    .local v0, appKBSize:J
    const-wide/16 v12, 0x400

    cmp-long v12, v7, v12

    if-gtz v12, :cond_5

    .line 256
    long-to-double v12, v7

    const-wide v14, 0x3feccccccccccccdL

    mul-double/2addr v12, v14

    double-to-long v0, v12

    .line 258
    :cond_5
    const-string v12, "LowStorageHandle"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "systemReady : want to create piggybank KB:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :try_start_5
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 262
    .restart local v9       #out:Ljava/io/OutputStream;
    const/16 v12, 0x800

    :try_start_6
    new-array v2, v12, [B

    .line 263
    .restart local v2       #buffer:[B
    const/4 v4, 0x0

    .line 264
    .restart local v4       #dataWrite:I
    :goto_5
    int-to-long v12, v4

    const-wide/16 v14, 0x2

    div-long v14, v0, v14

    cmp-long v12, v12, v14

    if-gez v12, :cond_6

    .line 265
    const/4 v12, 0x0

    const/16 v13, 0x800

    invoke-virtual {v9, v2, v12, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 266
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 234
    .end local v0           #appKBSize:J
    .end local v2           #buffer:[B
    .end local v4           #dataWrite:I
    :catchall_0
    move-exception v12

    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    throw v12
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 236
    .end local v9           #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v5

    .line 238
    .local v5, e:Ljava/io/IOException;
    const-string v12, "LowStorageHandle"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " Can\'t create piggybank"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 269
    .end local v5           #e:Ljava/io/IOException;
    .restart local v0       #appKBSize:J
    .restart local v2       #buffer:[B
    .restart local v4       #dataWrite:I
    .restart local v9       #out:Ljava/io/OutputStream;
    :cond_6
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 277
    .end local v0           #appKBSize:J
    .end local v2           #buffer:[B
    .end local v4           #dataWrite:I
    .end local v9           #out:Ljava/io/OutputStream;
    :cond_7
    :goto_6
    :try_start_9
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v14

    int-to-long v14, v14

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x400

    div-long v7, v12, v14
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_2

    .line 282
    :goto_7
    const-string v12, "LowStorageHandle"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " data.free.after KB: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void

    .line 269
    .restart local v0       #appKBSize:J
    .restart local v9       #out:Ljava/io/OutputStream;
    :catchall_1
    move-exception v12

    :try_start_a
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    throw v12
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 271
    .end local v9           #out:Ljava/io/OutputStream;
    :catch_1
    move-exception v5

    .line 273
    .restart local v5       #e:Ljava/io/IOException;
    const-string v12, "LowStorageHandle"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " Can\'t create appybank"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 280
    .end local v0           #appKBSize:J
    .end local v5           #e:Ljava/io/IOException;
    :catch_2
    move-exception v12

    goto :goto_7

    .line 250
    :catch_3
    move-exception v12

    goto/16 :goto_4

    .line 199
    .end local v6           #f:Ljava/io/File;
    .end local v10           #piggyKBSize:J
    :catch_4
    move-exception v12

    goto/16 :goto_0
.end method
