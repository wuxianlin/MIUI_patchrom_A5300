.class public Landroid/drm/DrmManagerClient;
.super Ljava/lang/Object;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/DrmManagerClient$CustomAlertDialog;,
        Landroid/drm/DrmManagerClient$DrmOperationListener;,
        Landroid/drm/DrmManagerClient$InfoHandler;,
        Landroid/drm/DrmManagerClient$EventHandler;,
        Landroid/drm/DrmManagerClient$OnErrorListener;,
        Landroid/drm/DrmManagerClient$OnEventListener;,
        Landroid/drm/DrmManagerClient$OnInfoListener;
    }
.end annotation


# static fields
.field private static final ACTION_PROCESS_DRM_INFO:I = 0x3ea

.field private static final ACTION_PROCESS_EXTRA_DRM_INFO:I = 0x7d1

.field private static final ACTION_REMOVE_ALL_RIGHTS:I = 0x3e9

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_UNKNOWN:I = -0x7d0

#the value of this static final field might be set in the static constructor
.field private static final OMA_DRM_FL_ONLY:Z = false

.field private static final TAG:Ljava/lang/String; = "DrmManagerClient"

.field private static sConsumeDialogQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/drm/DrmManagerClient$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private static sLicenseDialogQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/drm/DrmManagerClient$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private static sProtectionInfoDialogQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/drm/DrmManagerClient$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private static sSecureTimerDialogQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/drm/DrmManagerClient$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

.field mEventThread:Landroid/os/HandlerThread;

.field private mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

.field mInfoThread:Landroid/os/HandlerThread;

.field private mNativeContext:I

.field private mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

.field private mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

.field private mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

.field private mReleased:Z

.field private mUniqueId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const-string v1, "drmframework_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 87
    const-string v1, "drm.forwardlock.only"

    const-string/jumbo v2, "no"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, drmFLOnly:Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Landroid/drm/DrmManagerClient;->OMA_DRM_FL_ONLY:Z

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/drm/DrmManagerClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/drm/DrmManagerClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/drm/DrmManagerClient;->sProtectionInfoDialogQueue:Ljava/util/ArrayList;

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/drm/DrmManagerClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    return-void

    .line 88
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/drm/DrmManagerClient;->mReleased:Z

    .line 324
    const-string v0, "DrmManagerClient"

    const-string v1, "create DrmManagerClient instance & create event threads."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createEventThreads()V

    .line 328
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->_initialize()I

    move-result v0

    iput v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    .line 329
    return-void
.end method

.method private native _acquireDrmInfo(ILandroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;
.end method

.method private native _canHandle(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native _checkRightsStatus(ILjava/lang/String;I)I
.end method

.method private native _closeConvertSession(II)Landroid/drm/DrmConvertedStatus;
.end method

.method private native _consume(ILjava/lang/String;I)I
.end method

.method private native _convertData(II[B)Landroid/drm/DrmConvertedStatus;
.end method

.method private native _getAllSupportInfo(I)[Landroid/drm/DrmSupportInfo;
.end method

.method private native _getConstraints(ILjava/lang/String;I)Landroid/content/ContentValues;
.end method

.method private native _getContentIdFromRights(ILandroid/drm/DrmRights;)Ljava/lang/String;
.end method

.method private native _getDrmObjectType(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native _getMetadata(ILjava/lang/String;)Landroid/content/ContentValues;
.end method

.method private native _getOriginalMimeType(ILjava/lang/String;Ljava/io/FileDescriptor;)Ljava/lang/String;
.end method

.method private native _initialize()I
.end method

.method private native _installDrmEngine(ILjava/lang/String;)V
.end method

.method private native _openConvertSession(ILjava/lang/String;)I
.end method

.method private native _processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
.end method

.method private native _release(I)V
.end method

.method private native _removeAllRights(I)I
.end method

.method private native _removeRights(ILjava/lang/String;)I
.end method

.method private native _saveRights(ILandroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native _setListeners(ILjava/lang/Object;)V
.end method

.method static synthetic access$000(Landroid/drm/DrmManagerClient;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    return v0
.end method

.method static synthetic access$100(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/drm/DrmManagerClient;->_processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/drm/DrmManagerClient;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->getEventType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/drm/DrmManagerClient;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->getErrorType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/drm/DrmManagerClient;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->_removeAllRights(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    return-object v0
.end method

.method static synthetic access$600(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$700(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    return-object v0
.end method

.method private static checkCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/drm/DrmManagerClient$CustomAlertDialog;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1123
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/DrmManagerClient$CustomAlertDialog;>;"
    const-string v2, "DrmManagerClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCustomAlertDialog(): check within context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    monitor-enter p0

    .line 1125
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1126
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/drm/DrmManagerClient$CustomAlertDialog;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1127
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/drm/DrmManagerClient$CustomAlertDialog;

    .line 1128
    .local v0, dialog:Landroid/drm/DrmManagerClient$CustomAlertDialog;
    const-string v2, "DrmManagerClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCustomAlertDialog(): stored dialog with creator context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->getCreatorContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->getCreatorContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1130
    const-string v2, "DrmManagerClient"

    const-string v3, "checkCustomAlertDialog(): context match, dismiss it"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->dismiss()V

    .line 1135
    .end local v0           #dialog:Landroid/drm/DrmManagerClient$CustomAlertDialog;
    :cond_1
    monitor-exit p0

    .line 1136
    return-void

    .line 1135
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/drm/DrmManagerClient$CustomAlertDialog;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .parameter "uri"

    .prologue
    .line 922
    const/4 v8, 0x0

    .line 923
    .local v8, path:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 924
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 925
    .local v10, scheme:Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 927
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 956
    .end local v10           #scheme:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v8

    .line 929
    .restart local v10       #scheme:Ljava/lang/String;
    :cond_2
    const-string v0, "http"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 930
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 932
    :cond_3
    const-string v0, "content"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 933
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 934
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 936
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 938
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    .line 939
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri could not be found in media store"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    :catch_0
    move-exception v7

    .line 945
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri is not formatted in a way so that it can be found in media store."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 948
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 949
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 948
    :cond_5
    throw v0

    .line 942
    :cond_6
    :try_start_2
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 943
    .local v9, pathIndex:I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    .line 948
    if-eqz v6, :cond_1

    .line 949
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 953
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #pathIndex:I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri scheme is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createEventThreads()V
    .locals 2

    .prologue
    .line 1995
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-nez v0, :cond_0

    .line 1996
    const-string v0, "DrmManagerClient"

    const-string v1, "create info handler thread."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrmManagerClient.InfoHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    .line 1998
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1999
    new-instance v0, Landroid/drm/DrmManagerClient$InfoHandler;

    iget-object v1, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/drm/DrmManagerClient$InfoHandler;-><init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    .line 2001
    const-string v0, "DrmManagerClient"

    const-string v1, "create event handler thread."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrmManagerClient.EventHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    .line 2003
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2004
    new-instance v0, Landroid/drm/DrmManagerClient$EventHandler;

    iget-object v1, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/drm/DrmManagerClient$EventHandler;-><init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    .line 2006
    :cond_0
    return-void
.end method

.method private createListeners()V
    .locals 2

    .prologue
    .line 2009
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Landroid/drm/DrmManagerClient;->_setListeners(ILjava/lang/Object;)V

    .line 2010
    return-void
.end method

.method private getErrorType(I)I
    .locals 1
    .parameter "infoType"

    .prologue
    .line 900
    const/4 v0, -0x1

    .line 902
    .local v0, error:I
    packed-switch p1, :pswitch_data_0

    .line 909
    :goto_0
    return v0

    .line 906
    :pswitch_0
    const/16 v0, 0x7d6

    goto :goto_0

    .line 902
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getEventType(I)I
    .locals 1
    .parameter "infoType"

    .prologue
    .line 887
    const/4 v0, -0x1

    .line 889
    .local v0, eventType:I
    packed-switch p1, :pswitch_data_0

    .line 896
    :goto_0
    return v0

    .line 893
    :pswitch_0
    const/16 v0, 0x3ea

    goto :goto_0

    .line 889
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static notify(Ljava/lang/Object;IILjava/lang/String;)V
    .locals 4
    .parameter "thisReference"
    .parameter "uniqueId"
    .parameter "infoType"
    .parameter "message"

    .prologue
    .line 253
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/drm/DrmManagerClient;

    .line 255
    .local v0, instance:Landroid/drm/DrmManagerClient;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-eqz v2, :cond_0

    .line 256
    iget-object v2, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, p2, p3}, Landroid/drm/DrmManagerClient$InfoHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 258
    .local v1, m:Landroid/os/Message;
    iget-object v2, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient$InfoHandler;->sendMessage(Landroid/os/Message;)Z

    .line 260
    .end local v1           #m:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public static showConsume(Landroid/content/Context;Landroid/drm/DrmManagerClient$DrmOperationListener;)Landroid/app/Dialog;
    .locals 6
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 2018
    const-string v3, "DrmManagerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showConsume() within context: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    sget-object v3, Landroid/drm/DrmManagerClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p0}, Landroid/drm/DrmManagerClient;->checkCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 2021
    sget-object v3, Landroid/drm/DrmManagerClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p0}, Landroid/drm/DrmManagerClient;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v2

    .line 2022
    .local v2, result:Landroid/app/Dialog;
    if-eqz v2, :cond_0

    .line 2023
    const-string v3, "DrmManagerClient"

    const-string/jumbo v4, "showConsume(): use the existing one"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    .end local v2           #result:Landroid/app/Dialog;
    :goto_0
    return-object v2

    .line 2027
    .restart local v2       #result:Landroid/app/Dialog;
    :cond_0
    new-instance v0, Landroid/drm/DrmManagerClient$CustomAlertDialog;

    sget-object v3, Landroid/drm/DrmManagerClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2028
    .local v0, dialog:Landroid/drm/DrmManagerClient$CustomAlertDialog;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2030
    .local v1, res:Landroid/content/res/Resources;
    const/4 v3, -0x1

    const v4, 0x104000a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/drm/DrmManagerClient$5;

    invoke-direct {v5, p1}, Landroid/drm/DrmManagerClient$5;-><init>(Landroid/drm/DrmManagerClient$DrmOperationListener;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2041
    const/4 v3, -0x2

    const/high16 v4, 0x104

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/drm/DrmManagerClient$6;

    invoke-direct {v5, p1}, Landroid/drm/DrmManagerClient$6;-><init>(Landroid/drm/DrmManagerClient$DrmOperationListener;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2051
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setIcon(I)V

    .line 2052
    const v3, 0x20500c8

    invoke-virtual {v0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setTitle(I)V

    .line 2053
    const v3, 0x20500c9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2055
    new-instance v3, Landroid/drm/DrmManagerClient$7;

    invoke-direct {v3, p1}, Landroid/drm/DrmManagerClient$7;-><init>(Landroid/drm/DrmManagerClient$DrmOperationListener;)V

    invoke-virtual {v0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2064
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->show()V

    move-object v2, v0

    .line 2066
    goto :goto_0
.end method

.method public static showConsumeDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 6
    .parameter "context"
    .parameter "listener"
    .parameter "dismissListener"

    .prologue
    .line 1288
    const-string v3, "DrmManagerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showConsumeDialog() within context: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    sget-object v3, Landroid/drm/DrmManagerClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p0}, Landroid/drm/DrmManagerClient;->checkCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 1291
    sget-object v3, Landroid/drm/DrmManagerClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p0}, Landroid/drm/DrmManagerClient;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v2

    .line 1292
    .local v2, result:Landroid/app/Dialog;
    if-eqz v2, :cond_0

    .line 1293
    const-string v3, "DrmManagerClient"

    const-string/jumbo v4, "showConsumeDialog(): use the existing one"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    .end local v2           #result:Landroid/app/Dialog;
    :goto_0
    return-object v2

    .line 1297
    .restart local v2       #result:Landroid/app/Dialog;
    :cond_0
    new-instance v0, Landroid/drm/DrmManagerClient$CustomAlertDialog;

    sget-object v3, Landroid/drm/DrmManagerClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1298
    .local v0, dialog:Landroid/drm/DrmManagerClient$CustomAlertDialog;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1299
    .local v1, res:Landroid/content/res/Resources;
    const/4 v3, -0x1

    const v4, 0x104000a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, p1}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1302
    const/4 v3, -0x2

    const/high16 v4, 0x104

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, p1}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1305
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setIcon(I)V

    .line 1306
    const v3, 0x20500c8

    invoke-virtual {v0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setTitle(I)V

    .line 1307
    const v3, 0x20500c9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1308
    invoke-virtual {v0, p2}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1309
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->show()V

    move-object v2, v0

    .line 1311
    goto :goto_0
.end method

.method public static showSecureTimerInvalid(Landroid/content/Context;Landroid/drm/DrmManagerClient$DrmOperationListener;)Landroid/app/Dialog;
    .locals 6
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 2075
    const-string v3, "DrmManagerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showSecureTimerInvalid() within context: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    sget-object v3, Landroid/drm/DrmManagerClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p0}, Landroid/drm/DrmManagerClient;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v2

    .line 2078
    .local v2, result:Landroid/app/Dialog;
    if-eqz v2, :cond_0

    .line 2079
    const-string v3, "DrmManagerClient"

    const-string/jumbo v4, "showSecureTimerInvalid(): use the existing one"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    .end local v2           #result:Landroid/app/Dialog;
    :goto_0
    return-object v2

    .line 2083
    .restart local v2       #result:Landroid/app/Dialog;
    :cond_0
    new-instance v0, Landroid/drm/DrmManagerClient$CustomAlertDialog;

    sget-object v3, Landroid/drm/DrmManagerClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2084
    .local v0, dialog:Landroid/drm/DrmManagerClient$CustomAlertDialog;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2086
    .local v1, res:Landroid/content/res/Resources;
    const/4 v3, -0x1

    const v4, 0x104000a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/drm/DrmManagerClient$8;

    invoke-direct {v5}, Landroid/drm/DrmManagerClient$8;-><init>()V

    invoke-virtual {v0, v3, v4, v5}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2094
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setIcon(I)V

    .line 2095
    const v3, 0x20500c6

    invoke-virtual {v0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setTitle(I)V

    .line 2096
    const v3, 0x20500c7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2098
    new-instance v3, Landroid/drm/DrmManagerClient$9;

    invoke-direct {v3, p1}, Landroid/drm/DrmManagerClient$9;-><init>(Landroid/drm/DrmManagerClient$DrmOperationListener;)V

    invoke-virtual {v0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2108
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->show()V

    move-object v2, v0

    .line 2110
    goto :goto_0
.end method

.method public static showSecureTimerInvalidDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 6
    .parameter "context"
    .parameter "clickListener"
    .parameter "dismissListener"

    .prologue
    .line 1253
    const-string v3, "DrmManagerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showSecureTimerInvalidDialog() within context: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    sget-object v3, Landroid/drm/DrmManagerClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p0}, Landroid/drm/DrmManagerClient;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v2

    .line 1256
    .local v2, result:Landroid/app/Dialog;
    if-eqz v2, :cond_0

    .line 1257
    const-string v3, "DrmManagerClient"

    const-string/jumbo v4, "showSecureTimerInvalidDialog(): use the existing one"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    .end local v2           #result:Landroid/app/Dialog;
    :goto_0
    return-object v2

    .line 1261
    .restart local v2       #result:Landroid/app/Dialog;
    :cond_0
    new-instance v0, Landroid/drm/DrmManagerClient$CustomAlertDialog;

    sget-object v3, Landroid/drm/DrmManagerClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1262
    .local v0, dialog:Landroid/drm/DrmManagerClient$CustomAlertDialog;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1263
    .local v1, res:Landroid/content/res/Resources;
    const/4 v3, -0x1

    const v4, 0x104000a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, p1}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1266
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setIcon(I)V

    .line 1267
    const v3, 0x20500c6

    invoke-virtual {v0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setTitle(I)V

    .line 1268
    const v3, 0x20500c7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1269
    invoke-virtual {v0, p2}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1270
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->show()V

    move-object v2, v0

    .line 1272
    goto :goto_0
.end method

.method private toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;
    .locals 7
    .parameter "sec"

    .prologue
    .line 1988
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 1989
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 1990
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1991
    .local v2, str:Ljava/lang/String;
    return-object v2
.end method

.method private static validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;
    .locals 6
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/drm/DrmManagerClient$CustomAlertDialog;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .prologue
    .line 1105
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/DrmManagerClient$CustomAlertDialog;>;"
    const-string v3, "DrmManagerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "validateCustomAlertDialog(): validate within context: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const/4 v2, 0x0

    .line 1107
    .local v2, result:Landroid/app/Dialog;
    monitor-enter p0

    .line 1108
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1109
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/drm/DrmManagerClient$CustomAlertDialog;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/drm/DrmManagerClient$CustomAlertDialog;

    .line 1111
    .local v0, dialog:Landroid/drm/DrmManagerClient$CustomAlertDialog;
    const-string v3, "DrmManagerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "validateCustomAlertDialog(): stored dialog with creator context: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->getCreatorContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->getCreatorContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1113
    const-string v3, "DrmManagerClient"

    const-string/jumbo v4, "validateCustomAlertDialog(): context match"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    move-object v2, v0

    .line 1118
    .end local v0           #dialog:Landroid/drm/DrmManagerClient$CustomAlertDialog;
    :cond_1
    monitor-exit p0

    .line 1119
    return-object v2

    .line 1118
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/drm/DrmManagerClient$CustomAlertDialog;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;
    .locals 2
    .parameter "drmInfoRequest"

    .prologue
    .line 589
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/drm/DrmInfoRequest;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 590
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given drmInfoRequest is invalid/null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_acquireDrmInfo(ILandroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    return-object v0
.end method

.method public acquireRights(Landroid/drm/DrmInfoRequest;)I
    .locals 2
    .parameter "drmInfoRequest"

    .prologue
    .line 610
    invoke-virtual {p0, p1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 611
    .local v0, drmInfo:Landroid/drm/DrmInfo;
    if-nez v0, :cond_0

    .line 612
    const/16 v1, -0x7d0

    .line 614
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result v1

    goto :goto_0
.end method

.method public canHandle(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 2
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    .line 556
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 557
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri or the mimetype should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_2
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 541
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path or the mimetype should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_2
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_canHandle(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Landroid/net/Uri;)I
    .locals 2
    .parameter "uri"

    .prologue
    .line 727
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 728
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Landroid/net/Uri;I)I
    .locals 2
    .parameter "uri"
    .parameter "action"

    .prologue
    .line 766
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 767
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 769
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 716
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;I)I
    .locals 3
    .parameter "path"
    .parameter "action"

    .prologue
    .line 743
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 744
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Given path or action is not valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 748
    :cond_1
    iget v1, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v1, p1, p2}, Landroid/drm/DrmManagerClient;->_checkRightsStatus(ILjava/lang/String;I)I

    move-result v0

    .line 749
    .local v0, result:I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 750
    const-string v1, "DrmManagerClient"

    const-string v2, "checkRightsStatus() : secure timer indicates invalid state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const/4 v0, 0x1

    .line 753
    :cond_2
    return v0
.end method

.method public checkRightsStatusForTap(Landroid/net/Uri;I)I
    .locals 2
    .parameter "uri"
    .parameter "action"

    .prologue
    .line 1973
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 1974
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1976
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatusForTap(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public checkRightsStatusForTap(Ljava/lang/String;I)I
    .locals 4
    .parameter "path"
    .parameter "action"

    .prologue
    .line 1947
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1948
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Given path or action is not valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1950
    :cond_1
    const-string v1, "DrmManagerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRightsStatusForTap(): java api. path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    iget v1, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v1, p1, p2}, Landroid/drm/DrmManagerClient;->_checkRightsStatus(ILjava/lang/String;I)I

    move-result v0

    .line 1953
    .local v0, result:I
    const-string v1, "DrmManagerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRightsStatusForTap(): java api. the result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    return v0
.end method

.method public closeConvertSession(I)Landroid/drm/DrmConvertedStatus;
    .locals 1
    .parameter "convertId"

    .prologue
    .line 864
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_closeConvertSession(II)Landroid/drm/DrmConvertedStatus;

    move-result-object v0

    return-object v0
.end method

.method public consume(Landroid/net/Uri;I)I
    .locals 6
    .parameter "uri"
    .parameter "action"

    .prologue
    const/16 v2, -0x7d0

    .line 1211
    if-eqz p1, :cond_0

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v3, p1, :cond_0

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1212
    :cond_0
    const-string v3, "DrmManagerClient"

    const-string v4, "consume() : Given uri or action is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :goto_0
    return v2

    .line 1216
    :cond_1
    const/4 v1, 0x0

    .line 1218
    .local v1, path:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1223
    invoke-virtual {p0, v1, p2}, Landroid/drm/DrmManagerClient;->consume(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 1219
    :catch_0
    move-exception v0

    .line 1220
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "DrmManagerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "consume() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public consume(Ljava/lang/String;I)I
    .locals 2
    .parameter "path"
    .parameter "action"

    .prologue
    .line 1234
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1235
    :cond_0
    const-string v0, "DrmManagerClient"

    const-string v1, "consume() : Given path should be non null or action is not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const/16 v0, -0x7d0

    .line 1238
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_consume(ILjava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public convertData(I[B)Landroid/drm/DrmConvertedStatus;
    .locals 2
    .parameter "convertId"
    .parameter "inputData"

    .prologue
    .line 846
    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    .line 847
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given inputData should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 849
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_convertData(II[B)Landroid/drm/DrmConvertedStatus;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 332
    const-string v0, "DrmManagerClient"

    const-string v1, "finalize DrmManagerClient instance."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-boolean v0, p0, Landroid/drm/DrmManagerClient;->mReleased:Z

    if-nez v0, :cond_0

    .line 334
    const-string v0, "DrmManagerClient"

    const-string v1, "You should have called release()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p0}, Landroid/drm/DrmManagerClient;->release()V

    .line 337
    :cond_0
    return-void
.end method

.method public getAvailableDrmEngines()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 417
    iget v4, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v4}, Landroid/drm/DrmManagerClient;->_getAllSupportInfo(I)[Landroid/drm/DrmSupportInfo;

    move-result-object v3

    .line 418
    .local v3, supportInfos:[Landroid/drm/DrmSupportInfo;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v0, descriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 421
    aget-object v4, v3, v2

    invoke-virtual {v4}, Landroid/drm/DrmSupportInfo;->getDescriprition()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 425
    .local v1, drmEngines:[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public getConstraints(Landroid/net/Uri;I)Landroid/content/ContentValues;
    .locals 2
    .parameter "uri"
    .parameter "action"

    .prologue
    .line 470
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 471
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 2
    .parameter "path"
    .parameter "action"

    .prologue
    .line 439
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 440
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given usage or path is invalid/null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_getConstraints(ILjava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getContentIdFromRights(Landroid/drm/DrmRights;)Ljava/lang/String;
    .locals 1
    .parameter "drmRights"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1151
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_getContentIdFromRights(ILandroid/drm/DrmRights;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDrmObjectType(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    .line 645
    if-eqz p1, :cond_0

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v2, p1, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 646
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Uri or the mimetype should be non null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 648
    :cond_2
    const-string v1, ""

    .line 650
    .local v1, path:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 655
    :goto_0
    invoke-virtual {p0, v1, p2}, Landroid/drm/DrmManagerClient;->getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 651
    :catch_0
    move-exception v0

    .line 653
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DrmManagerClient"

    const-string v3, "Given Uri could not be found in media store"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 628
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 629
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path or the mimetype should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :cond_2
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_getDrmObjectType(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMetadata(Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 2
    .parameter "uri"

    .prologue
    .line 485
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 486
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2
    .parameter "path"

    .prologue
    .line 454
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given path is invalid/null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_getMetadata(ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getMethod(Landroid/net/Uri;)I
    .locals 2
    .parameter "uri"

    .prologue
    .line 1904
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 1905
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1907
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->getMethod(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMethod(Ljava/lang/String;)I
    .locals 4
    .parameter "path"

    .prologue
    .line 1918
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1919
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Given path should be non null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1922
    :cond_1
    invoke-virtual {p0, p1}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1923
    .local v0, cv:Landroid/content/ContentValues;
    if-eqz v0, :cond_2

    const-string v2, "drm_method"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1924
    const-string v2, "drm_method"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1925
    .local v1, m:Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 1926
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1929
    .end local v1           #m:Ljava/lang/Integer;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 702
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 703
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "path"

    .prologue
    .line 666
    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 667
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Given path should be non null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 670
    :cond_1
    const/4 v5, 0x0

    .line 672
    .local v5, mime:Ljava/lang/String;
    const/4 v3, 0x0

    .line 674
    .local v3, is:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 675
    .local v0, fd:Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 676
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 677
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    .end local v3           #is:Ljava/io/FileInputStream;
    .local v4, is:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    move-object v3, v4

    .line 680
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    :cond_2
    :try_start_2
    iget v6, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v6, p1, v0}, Landroid/drm/DrmManagerClient;->_getOriginalMimeType(ILjava/lang/String;Ljava/io/FileDescriptor;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    .line 684
    if-eqz v3, :cond_3

    .line 686
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 691
    .end local v1           #file:Ljava/io/File;
    :cond_3
    :goto_0
    return-object v5

    .line 681
    :catch_0
    move-exception v2

    .line 682
    .local v2, ioe:Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string v6, "DrmManagerClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOriginalMimeType: File I/O exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 684
    if-eqz v3, :cond_3

    .line 686
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 687
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v6

    goto :goto_0

    .line 684
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_4

    .line 686
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 684
    :cond_4
    :goto_3
    throw v6

    .line 687
    :catch_2
    move-exception v7

    goto :goto_3

    .line 684
    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v4       #is:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    goto :goto_2

    .line 681
    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public installDrmEngine(Ljava/lang/String;)V
    .locals 3
    .parameter "engineFilePath"

    .prologue
    .line 525
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given engineFilePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_installDrmEngine(ILjava/lang/String;)V

    .line 530
    return-void
.end method

.method public installDrmMsg(Landroid/net/Uri;)I
    .locals 6
    .parameter "uri"

    .prologue
    const/16 v2, -0x7d0

    .line 1162
    if-eqz p1, :cond_0

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v3, p1, :cond_1

    .line 1163
    :cond_0
    const-string v3, "DrmManagerClient"

    const-string v4, "installDrmMsg() : Given uri is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :goto_0
    return v2

    .line 1167
    :cond_1
    const/4 v1, 0x0

    .line 1169
    .local v1, path:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1174
    invoke-virtual {p0, v1}, Landroid/drm/DrmManagerClient;->installDrmMsg(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 1170
    :catch_0
    move-exception v0

    .line 1171
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "DrmManagerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installDrmMsg() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public installDrmMsg(Ljava/lang/String;)I
    .locals 8
    .parameter "path"

    .prologue
    const/4 v7, 0x1

    const/16 v4, -0x7d0

    const/4 v3, 0x0

    .line 1185
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1186
    :cond_0
    const-string v3, "DrmManagerClient"

    const-string v5, "installDrmMsg() : Given path should be non null"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1200
    :cond_1
    :goto_0
    return v3

    .line 1191
    :cond_2
    new-array v0, v7, [B

    .line 1192
    .local v0, data:[B
    aput-byte v3, v0, v3

    .line 1193
    new-instance v1, Landroid/drm/DrmInfo;

    const/16 v5, 0x7da

    const-string v6, "application/vnd.oma.drm.message"

    invoke-direct {v1, v5, v0, v6}, Landroid/drm/DrmInfo;-><init>(I[BLjava/lang/String;)V

    .line 1196
    .local v1, info:Landroid/drm/DrmInfo;
    const-string v5, "installDrmMsg"

    invoke-virtual {v1, v5, p1}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1199
    iget v5, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v5, v1}, Landroid/drm/DrmManagerClient;->_processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v2

    .line 1200
    .local v2, status:Landroid/drm/DrmInfoStatus;
    iget v5, v2, Landroid/drm/DrmInfoStatus;->statusCode:I

    if-eq v7, v5, :cond_1

    move v3, v4

    goto :goto_0
.end method

.method public openConvertSession(Ljava/lang/String;)I
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 826
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 827
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path or the mimeType should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 829
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_openConvertSession(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public overlayBitmap(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "res"
    .parameter "bgdBmpId"
    .parameter "frontId"

    .prologue
    .line 1780
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1781
    .local v0, bgdBmp:Landroid/graphics/Bitmap;
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1782
    .local v2, front:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0, v2}, Landroid/drm/DrmManagerClient;->overlayBitmap(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1783
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1784
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1785
    const/4 v0, 0x0

    .line 1787
    :cond_0
    return-object v1
.end method

.method public overlayBitmap(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bgdBmp"
    .parameter "front"

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 1748
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1749
    :cond_0
    const-string v8, "DrmManagerClient"

    const-string/jumbo v9, "overlayBitmap() : Given background / front pic is null."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 1767
    :goto_0
    return-object v0

    .line 1753
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1756
    .local v0, bMutable:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1757
    .local v3, overlayCanvas:Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1758
    invoke-virtual {v3, p1, v11, v11, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1760
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 1761
    .local v5, overlayWidth:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 1762
    .local v4, overlayHeight:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int v1, v7, v5

    .line 1763
    .local v1, left:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int v6, v7, v4

    .line 1764
    .local v6, top:I
    new-instance v2, Landroid/graphics/Rect;

    add-int v7, v1, v5

    add-int v8, v6, v4

    invoke-direct {v2, v1, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1765
    .local v2, newBounds:Landroid/graphics/Rect;
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1766
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public overlayBitmapSkew(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "res"
    .parameter "bgdBmpId"
    .parameter "frontId"

    .prologue
    .line 1729
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1730
    .local v0, bgdBmp:Landroid/graphics/Bitmap;
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1731
    .local v2, front:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0, v2}, Landroid/drm/DrmManagerClient;->overlayBitmapSkew(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1732
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1733
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1734
    const/4 v0, 0x0

    .line 1736
    :cond_0
    return-object v1
.end method

.method public overlayBitmapSkew(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "bgdBmp"
    .parameter "front"

    .prologue
    .line 1686
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1687
    :cond_0
    const-string v10, "DrmManagerClient"

    const-string/jumbo v11, "overlayBitmapSkew() : Given background / front pic is null."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    const/4 v0, 0x0

    .line 1716
    :goto_0
    return-object v0

    .line 1692
    :cond_1
    const/4 v5, 0x0

    .line 1693
    .local v5, offset:I
    iget-object v10, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    instance-of v10, v10, Landroid/app/Activity;

    if-eqz v10, :cond_3

    .line 1694
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1695
    .local v3, metric:Landroid/util/DisplayMetrics;
    iget-object v10, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    check-cast v10, Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1696
    iget v1, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1697
    .local v1, densityDpi:I
    const/16 v10, 0x3c0

    div-int v5, v10, v1

    .line 1702
    .end local v1           #densityDpi:I
    .end local v3           #metric:Landroid/util/DisplayMetrics;
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1705
    .local v0, bMutable:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1706
    .local v6, overlayCanvas:Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1707
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6, p1, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1709
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 1710
    .local v8, overlayWidth:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 1711
    .local v7, overlayHeight:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int v2, v10, v8

    .line 1712
    .local v2, left:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sub-int v9, v10, v7

    .line 1713
    .local v9, top:I
    new-instance v4, Landroid/graphics/Rect;

    add-int v10, v2, v8

    add-int v11, v9, v7

    invoke-direct {v4, v2, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1714
    .local v4, newBounds:Landroid/graphics/Rect;
    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1715
    invoke-virtual {p2, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1699
    .end local v0           #bMutable:Landroid/graphics/Bitmap;
    .end local v2           #left:I
    .end local v4           #newBounds:Landroid/graphics/Rect;
    .end local v6           #overlayCanvas:Landroid/graphics/Canvas;
    .end local v7           #overlayHeight:I
    .end local v8           #overlayWidth:I
    .end local v9           #top:I
    :cond_3
    const-string v10, "DrmManagerClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "overlayBitmapSkew() : Given mContext is not an Activity type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public overlayDrmIcon(Landroid/content/res/Resources;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "res"
    .parameter "path"
    .parameter "action"
    .parameter "bgdBmpId"

    .prologue
    .line 1887
    invoke-static {p1, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1888
    .local v0, bgdBmp:Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/drm/DrmManagerClient;->overlayDrmIcon(Landroid/content/res/Resources;Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1889
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1890
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1891
    const/4 v0, 0x0

    .line 1893
    :cond_0
    return-object v1
.end method

.method public overlayDrmIcon(Landroid/content/res/Resources;Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "res"
    .parameter "path"
    .parameter "action"
    .parameter "bgdBmp"

    .prologue
    .line 1854
    invoke-virtual {p0, p2}, Landroid/drm/DrmManagerClient;->getMethod(Ljava/lang/String;)I

    move-result v2

    .line 1855
    .local v2, method:I
    if-nez v2, :cond_0

    .line 1856
    const-string v4, "DrmManagerClient"

    const-string/jumbo v5, "overlayDrmIcon() : not set drm icon because of invalid method"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    .end local p4
    :goto_0
    return-object p4

    .line 1860
    .restart local p4
    :cond_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 1861
    const-string v4, "DrmManagerClient"

    const-string/jumbo v5, "overlayDrmIcon() : not set drm icon because method is FL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1865
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v3

    .line 1866
    .local v3, rightsStatus:I
    const/4 v1, -0x1

    .line 1867
    .local v1, lockId:I
    if-nez v3, :cond_2

    .line 1868
    const v1, 0x2020040

    .line 1872
    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1873
    .local v0, front:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p4, v0}, Landroid/drm/DrmManagerClient;->overlayBitmap(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p4

    goto :goto_0

    .line 1870
    .end local v0           #front:Landroid/graphics/drawable/Drawable;
    :cond_2
    const v1, 0x2020041

    goto :goto_1
.end method

.method public overlayDrmIconSkew(Landroid/content/res/Resources;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "res"
    .parameter "path"
    .parameter "action"
    .parameter "bgdBmpId"

    .prologue
    .line 1834
    invoke-static {p1, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1835
    .local v0, bgdBmp:Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/drm/DrmManagerClient;->overlayDrmIconSkew(Landroid/content/res/Resources;Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1836
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1837
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1838
    const/4 v0, 0x0

    .line 1840
    :cond_0
    return-object v1
.end method

.method public overlayDrmIconSkew(Landroid/content/res/Resources;Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "res"
    .parameter "path"
    .parameter "action"
    .parameter "bgdBmp"

    .prologue
    .line 1801
    invoke-virtual {p0, p2}, Landroid/drm/DrmManagerClient;->getMethod(Ljava/lang/String;)I

    move-result v2

    .line 1802
    .local v2, method:I
    if-nez v2, :cond_0

    .line 1803
    const-string v4, "DrmManagerClient"

    const-string/jumbo v5, "overlayDrmIconSkew() : not set drm icon because of invalid method"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    .end local p4
    :goto_0
    return-object p4

    .line 1807
    .restart local p4
    :cond_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 1808
    const-string v4, "DrmManagerClient"

    const-string/jumbo v5, "overlayDrmIconSkew() : not set drm icon because method is FL."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1812
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v3

    .line 1813
    .local v3, rightsStatus:I
    const/4 v1, -0x1

    .line 1814
    .local v1, lockId:I
    if-nez v3, :cond_2

    .line 1815
    const v1, 0x2020040

    .line 1819
    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1820
    .local v0, front:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p4, v0}, Landroid/drm/DrmManagerClient;->overlayBitmapSkew(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p4

    goto :goto_0

    .line 1817
    .end local v0           #front:Landroid/graphics/drawable/Drawable;
    :cond_2
    const v1, 0x2020041

    goto :goto_1
.end method

.method public processDrmInfo(Landroid/drm/DrmInfo;)I
    .locals 4
    .parameter "drmInfo"

    .prologue
    .line 569
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/drm/DrmInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 570
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Given drmInfo is invalid/null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 572
    :cond_1
    const/16 v1, -0x7d0

    .line 573
    .local v1, result:I
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-eqz v2, :cond_2

    .line 574
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3, p1}, Landroid/drm/DrmManagerClient$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 575
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    .line 577
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    return v1
.end method

.method public processExtraDrmInfo(Landroid/drm/DrmInfo;)I
    .locals 4
    .parameter "info"

    .prologue
    .line 875
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/drm/DrmInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 876
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Given extra drmInfo is invalid/null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 878
    :cond_1
    const/16 v1, -0x7d0

    .line 879
    .local v1, result:I
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-eqz v2, :cond_2

    .line 880
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    const/16 v3, 0x7d1

    invoke-virtual {v2, v3, p1}, Landroid/drm/DrmManagerClient$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 881
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    .line 883
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    return v1
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 347
    iget-boolean v0, p0, Landroid/drm/DrmManagerClient;->mReleased:Z

    if-eqz v0, :cond_0

    .line 348
    const-string v0, "DrmManagerClient"

    const-string v1, "You have already called release()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_0
    return-void

    .line 351
    :cond_0
    const-string v0, "DrmManagerClient"

    const-string/jumbo v1, "release event threads."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/drm/DrmManagerClient;->mReleased:Z

    .line 353
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-eqz v0, :cond_1

    .line 354
    const-string v0, "DrmManagerClient"

    const-string/jumbo v1, "quit event handler thread."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 356
    iput-object v2, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    .line 358
    :cond_1
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-eqz v0, :cond_2

    .line 359
    const-string v0, "DrmManagerClient"

    const-string/jumbo v1, "quit info handler thread."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 361
    iput-object v2, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    .line 363
    :cond_2
    iput-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    .line 364
    iput-object v2, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    .line 365
    iput-object v2, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    .line 366
    iput-object v2, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    .line 367
    iput-object v2, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 368
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0}, Landroid/drm/DrmManagerClient;->_release(I)V

    goto :goto_0
.end method

.method public removeAllRights()I
    .locals 4

    .prologue
    .line 807
    const/16 v1, -0x7d0

    .line 808
    .local v1, result:I
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-eqz v2, :cond_0

    .line 809
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/drm/DrmManagerClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 810
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 812
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return v1
.end method

.method public removeRights(Landroid/net/Uri;)I
    .locals 2
    .parameter "uri"

    .prologue
    .line 794
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 795
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 797
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->removeRights(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public removeRights(Ljava/lang/String;)I
    .locals 2
    .parameter "path"

    .prologue
    .line 780
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 781
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given path should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 783
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_removeRights(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public saveRights(Landroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "drmRights"
    .parameter "rightsPath"
    .parameter "contentPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/drm/DrmRights;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 509
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given drmRights or contentPath is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_1
    if-eqz p2, :cond_2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 512
    invoke-virtual {p1}, Landroid/drm/DrmRights;->getData()[B

    move-result-object v0

    invoke-static {p2, v0}, Landroid/drm/DrmUtils;->writeToFile(Ljava/lang/String;[B)V

    .line 514
    :cond_2
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/drm/DrmManagerClient;->_saveRights(ILandroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V
    .locals 1
    .parameter "errorListener"

    .prologue
    .line 404
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 405
    if-eqz p1, :cond_0

    .line 406
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    :cond_0
    monitor-exit p0

    return-void

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V
    .locals 1
    .parameter "eventListener"

    .prologue
    .line 391
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    .line 392
    if-eqz p1, :cond_0

    .line 393
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :cond_0
    monitor-exit p0

    return-void

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOnInfoListener(Landroid/drm/DrmManagerClient$OnInfoListener;)V
    .locals 1
    .parameter "infoListener"

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    .line 379
    if-eqz p1, :cond_0

    .line 380
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    :cond_0
    monitor-exit p0

    return-void

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showLicenseAcquisition(Landroid/content/Context;Landroid/net/Uri;Landroid/drm/DrmManagerClient$DrmOperationListener;)Landroid/app/Dialog;
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 2119
    sget-boolean v3, Landroid/drm/DrmManagerClient;->OMA_DRM_FL_ONLY:Z

    if-eqz v3, :cond_0

    .line 2120
    const-string v3, "DrmManagerClient"

    const-string/jumbo v4, "showLicenseAcquisition() : Forward-lock-only is set."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    :goto_0
    return-object v2

    .line 2123
    :cond_0
    if-eqz p2, :cond_1

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v3, p2, :cond_2

    .line 2124
    :cond_1
    const-string v3, "DrmManagerClient"

    const-string/jumbo v4, "showLicenseAcquisition() : Given uri is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2127
    :cond_2
    instance-of v3, p1, Landroid/app/Activity;

    if-nez v3, :cond_3

    .line 2128
    const-string v3, "DrmManagerClient"

    const-string/jumbo v4, "showLicenseAcquisition() : not an Activity context, give up"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2132
    :cond_3
    const/4 v1, 0x0

    .line 2134
    .local v1, path:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p2}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2139
    invoke-virtual {p0, p1, v1, p3}, Landroid/drm/DrmManagerClient;->showLicenseAcquisition(Landroid/content/Context;Ljava/lang/String;Landroid/drm/DrmManagerClient$DrmOperationListener;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 2135
    :catch_0
    move-exception v0

    .line 2136
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "DrmManagerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showLicenseAcquisition() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showLicenseAcquisition(Landroid/content/Context;Ljava/lang/String;Landroid/drm/DrmManagerClient$DrmOperationListener;)Landroid/app/Dialog;
    .locals 11
    .parameter "context"
    .parameter "path"
    .parameter "listener"

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 2148
    sget-boolean v7, Landroid/drm/DrmManagerClient;->OMA_DRM_FL_ONLY:Z

    if-eqz v7, :cond_0

    .line 2149
    const-string v7, "DrmManagerClient"

    const-string/jumbo v8, "showLicenseAcquisition() : Forward-lock-only is set."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 2232
    :goto_0
    return-object v4

    .line 2152
    :cond_0
    const-string v7, "DrmManagerClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "showLicenseAcquisition() within context: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    if-eqz p2, :cond_1

    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2155
    :cond_1
    const-string v7, "DrmManagerClient"

    const-string/jumbo v8, "showLicenseAcquisition() : Given path should be non null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 2156
    goto :goto_0

    .line 2158
    :cond_2
    instance-of v7, p1, Landroid/app/Activity;

    if-nez v7, :cond_3

    .line 2159
    const-string v7, "DrmManagerClient"

    const-string/jumbo v8, "showLicenseAcquisition() : not an Activity context, give up"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 2160
    goto :goto_0

    .line 2163
    :cond_3
    sget-object v7, Landroid/drm/DrmManagerClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-static {v7, p1}, Landroid/drm/DrmManagerClient;->checkCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 2164
    sget-object v7, Landroid/drm/DrmManagerClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-static {v7, p1}, Landroid/drm/DrmManagerClient;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v4

    .line 2165
    .local v4, result:Landroid/app/Dialog;
    if-eqz v4, :cond_4

    .line 2166
    const-string v7, "DrmManagerClient"

    const-string/jumbo v8, "showLicenseAcquisition(): use the existing one"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2171
    :cond_4
    invoke-virtual {p0, p2}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2172
    .local v0, cv:Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 2173
    .local v5, rightsIssuer:Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string v7, "drm_rights_issuer"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2174
    const-string v7, "drm_rights_issuer"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2178
    :cond_5
    if-eqz v5, :cond_6

    const-string v7, "http"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 2179
    :cond_6
    const v7, 0x20500c1

    invoke-static {p1, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 2182
    if-eqz p3, :cond_7

    .line 2183
    const/4 v7, 0x2

    invoke-interface {p3, v7}, Landroid/drm/DrmManagerClient$DrmOperationListener;->onOperated(I)V

    :cond_7
    move-object v4, v1

    .line 2185
    goto/16 :goto_0

    .line 2189
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2190
    .local v3, res:Landroid/content/res/Resources;
    const v7, 0x20500c0

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2193
    .local v2, message:Ljava/lang/String;
    move-object v6, v5

    .line 2195
    .local v6, rightsIssuerFinal:Ljava/lang/String;
    new-instance v1, Landroid/drm/DrmManagerClient$CustomAlertDialog;

    sget-object v7, Landroid/drm/DrmManagerClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v1, p1, v7}, Landroid/drm/DrmManagerClient$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2197
    .local v1, dialog:Landroid/drm/DrmManagerClient$CustomAlertDialog;
    const/4 v7, -0x1

    const v8, 0x20500be

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/drm/DrmManagerClient$10;

    invoke-direct {v9, p0, v6, p1}, Landroid/drm/DrmManagerClient$10;-><init>(Landroid/drm/DrmManagerClient;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v7, v8, v9}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2208
    const/4 v7, -0x2

    const/high16 v8, 0x104

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/drm/DrmManagerClient$11;

    invoke-direct {v9, p0}, Landroid/drm/DrmManagerClient$11;-><init>(Landroid/drm/DrmManagerClient;)V

    invoke-virtual {v1, v7, v8, v9}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2216
    const v7, 0x108009b

    invoke-virtual {v1, v7}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setIcon(I)V

    .line 2217
    const v7, 0x20500bf

    invoke-virtual {v1, v7}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setTitle(I)V

    .line 2218
    invoke-virtual {v1, v2}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2220
    new-instance v7, Landroid/drm/DrmManagerClient$12;

    invoke-direct {v7, p0, p3}, Landroid/drm/DrmManagerClient$12;-><init>(Landroid/drm/DrmManagerClient;Landroid/drm/DrmManagerClient$DrmOperationListener;)V

    invoke-virtual {v1, v7}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2230
    invoke-virtual {v1}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->show()V

    move-object v4, v1

    .line 2232
    goto/16 :goto_0
.end method

.method public showLicenseAcquisitionDialog(Landroid/content/Context;Landroid/net/Uri;)Landroid/app/Dialog;
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 1543
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/drm/DrmManagerClient;->showLicenseAcquisitionDialog(Landroid/content/Context;Landroid/net/Uri;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public showLicenseAcquisitionDialog(Landroid/content/Context;Landroid/net/Uri;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "dismissListener"

    .prologue
    const/4 v2, 0x0

    .line 1569
    sget-boolean v3, Landroid/drm/DrmManagerClient;->OMA_DRM_FL_ONLY:Z

    if-eqz v3, :cond_0

    .line 1570
    const-string v3, "DrmManagerClient"

    const-string/jumbo v4, "showLicenseAcquisitionDialog() : Forward-lock-only is set."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    :goto_0
    return-object v2

    .line 1573
    :cond_0
    if-eqz p2, :cond_1

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v3, p2, :cond_2

    .line 1574
    :cond_1
    const-string v3, "DrmManagerClient"

    const-string/jumbo v4, "showLicenseAcquisitionDialog() : Given uri is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1577
    :cond_2
    instance-of v3, p1, Landroid/app/Activity;

    if-nez v3, :cond_3

    .line 1578
    const-string v3, "DrmManagerClient"

    const-string/jumbo v4, "showLicenseAcquisitionDialog() : not an Activity context, give up"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1582
    :cond_3
    const/4 v1, 0x0

    .line 1584
    .local v1, path:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p2}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1589
    invoke-virtual {p0, p1, v1, p3}, Landroid/drm/DrmManagerClient;->showLicenseAcquisitionDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 1585
    :catch_0
    move-exception v0

    .line 1586
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "DrmManagerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showLicenseAcquisitionDialog() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showLicenseAcquisitionDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1
    .parameter "context"
    .parameter "path"

    .prologue
    .line 1555
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/drm/DrmManagerClient;->showLicenseAcquisitionDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public showLicenseAcquisitionDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 11
    .parameter "context"
    .parameter "path"
    .parameter "dismissListener"

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 1603
    sget-boolean v7, Landroid/drm/DrmManagerClient;->OMA_DRM_FL_ONLY:Z

    if-eqz v7, :cond_0

    .line 1604
    const-string v7, "DrmManagerClient"

    const-string/jumbo v8, "showLicenseAcquisitionDialog() : Forward-lock-only is set."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 1674
    :goto_0
    return-object v4

    .line 1607
    :cond_0
    const-string v7, "DrmManagerClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "showLicenseAcquisitionDialog() within context: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    if-eqz p2, :cond_1

    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1610
    :cond_1
    const-string v7, "DrmManagerClient"

    const-string/jumbo v8, "showLicenseAcquisitionDialog() : Given path should be non null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 1611
    goto :goto_0

    .line 1613
    :cond_2
    instance-of v7, p1, Landroid/app/Activity;

    if-nez v7, :cond_3

    .line 1614
    const-string v7, "DrmManagerClient"

    const-string/jumbo v8, "showLicenseAcquisitionDialog() : not an Activity context, give up"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 1615
    goto :goto_0

    .line 1618
    :cond_3
    sget-object v7, Landroid/drm/DrmManagerClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-static {v7, p1}, Landroid/drm/DrmManagerClient;->checkCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 1619
    sget-object v7, Landroid/drm/DrmManagerClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-static {v7, p1}, Landroid/drm/DrmManagerClient;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v4

    .line 1620
    .local v4, result:Landroid/app/Dialog;
    if-eqz v4, :cond_4

    .line 1621
    const-string v7, "DrmManagerClient"

    const-string/jumbo v8, "showLicenseAcquisitionDialog(): use the existing one"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1626
    :cond_4
    invoke-virtual {p0, p2}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1627
    .local v0, cv:Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 1628
    .local v5, rightsIssuer:Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string v7, "drm_rights_issuer"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1629
    const-string v7, "drm_rights_issuer"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1633
    :cond_5
    if-eqz v5, :cond_6

    const-string v7, "http"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1634
    :cond_6
    const v7, 0x20500c1

    invoke-static {p1, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    move-object v4, v1

    .line 1637
    goto :goto_0

    .line 1641
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1642
    .local v3, res:Landroid/content/res/Resources;
    const v7, 0x20500c0

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1645
    .local v2, message:Ljava/lang/String;
    move-object v6, v5

    .line 1647
    .local v6, rightsIssuerFinal:Ljava/lang/String;
    new-instance v1, Landroid/drm/DrmManagerClient$CustomAlertDialog;

    sget-object v7, Landroid/drm/DrmManagerClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v1, p1, v7}, Landroid/drm/DrmManagerClient$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1649
    .local v1, dialog:Landroid/drm/DrmManagerClient$CustomAlertDialog;
    const/4 v7, -0x1

    const v8, 0x20500be

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/drm/DrmManagerClient$3;

    invoke-direct {v9, p0, v6, p1}, Landroid/drm/DrmManagerClient$3;-><init>(Landroid/drm/DrmManagerClient;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v7, v8, v9}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1660
    const/4 v7, -0x2

    const/high16 v8, 0x104

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/drm/DrmManagerClient$4;

    invoke-direct {v9, p0}, Landroid/drm/DrmManagerClient$4;-><init>(Landroid/drm/DrmManagerClient;)V

    invoke-virtual {v1, v7, v8, v9}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1668
    const v7, 0x108009b

    invoke-virtual {v1, v7}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setIcon(I)V

    .line 1669
    const v7, 0x20500bf

    invoke-virtual {v1, v7}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setTitle(I)V

    .line 1670
    invoke-virtual {v1, v2}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1671
    invoke-virtual {v1, p3}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1672
    invoke-virtual {v1}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->show()V

    move-object v4, v1

    .line 1674
    goto/16 :goto_0
.end method

.method public showProtectionInfoDialog(Landroid/content/Context;Landroid/net/Uri;)Landroid/app/Dialog;
    .locals 6
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 1323
    if-eqz p2, :cond_0

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v3, p2, :cond_1

    .line 1324
    :cond_0
    const-string v3, "DrmManagerClient"

    const-string/jumbo v4, "showProtectionInfoDialog() : Given uri is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :goto_0
    return-object v2

    .line 1328
    :cond_1
    const/4 v1, 0x0

    .line 1330
    .local v1, path:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p2}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1335
    invoke-virtual {p0, p1, v1}, Landroid/drm/DrmManagerClient;->showProtectionInfoDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 1331
    :catch_0
    move-exception v0

    .line 1332
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "DrmManagerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showProtectionInfoDialog() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showProtectionInfoDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 33
    .parameter "context"
    .parameter "path"

    .prologue
    .line 1347
    const-string v29, "DrmManagerClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "showProtectionInfoDialog() withing context: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    if-eqz p2, :cond_0

    const-string v29, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 1350
    :cond_0
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : Given path should be non null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    const/16 v19, 0x0

    .line 1531
    :goto_0
    return-object v19

    .line 1354
    :cond_1
    sget-object v29, Landroid/drm/DrmManagerClient;->sProtectionInfoDialogQueue:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/drm/DrmManagerClient;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v19

    .line 1355
    .local v19, result:Landroid/app/Dialog;
    if-eqz v19, :cond_2

    .line 1356
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog(): use the existing one"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1360
    :cond_2
    const v29, 0x2070007

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    .line 1362
    .local v23, scrollView:Landroid/view/View;
    const v29, 0x20e0011

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1364
    .local v13, fileNameView:Landroid/widget/TextView;
    if-nez v13, :cond_3

    .line 1365
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : the TextView: fileNameView is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    const/16 v19, 0x0

    goto :goto_0

    .line 1369
    :cond_3
    const-string v29, "/"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v24

    .line 1370
    .local v24, start:I
    const-string v29, "."

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 1371
    .local v8, end:I
    add-int/lit8 v29, v24, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1372
    .local v12, fileNameStr:Ljava/lang/String;
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1374
    const v29, 0x20e0012

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1376
    .local v16, protectionInfoStatusView:Landroid/widget/TextView;
    if-nez v16, :cond_4

    .line 1377
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : the TextView: protectionInfoStatusView is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    const/16 v19, 0x0

    goto :goto_0

    .line 1381
    :cond_4
    const/16 v29, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v22

    .line 1382
    .local v22, rightsStatus:I
    if-nez v22, :cond_6

    .line 1383
    const v29, 0x20500b7

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1388
    :cond_5
    :goto_1
    const v29, 0x20e0013

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1390
    .local v5, beginView:Landroid/widget/TextView;
    if-nez v5, :cond_7

    .line 1391
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : the TextView: beginView is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1384
    .end local v5           #beginView:Landroid/widget/TextView;
    :cond_6
    const/16 v29, 0x1

    move/from16 v0, v22

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 1385
    const v29, 0x20500b8

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1394
    .restart local v5       #beginView:Landroid/widget/TextView;
    :cond_7
    const v29, 0x20e0015

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1396
    .local v11, endView:Landroid/widget/TextView;
    if-nez v11, :cond_8

    .line 1397
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : the TextView: endView is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1400
    :cond_8
    const v29, 0x20e0017

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 1402
    .local v27, useLeftView:Landroid/widget/TextView;
    if-nez v27, :cond_9

    .line 1403
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : the TextView: useLeftView is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1406
    :cond_9
    const v29, 0x20e0014

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1408
    .local v4, beginValueView:Landroid/widget/TextView;
    if-nez v4, :cond_a

    .line 1409
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : the TextView: beginValueView is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1412
    :cond_a
    const v29, 0x20e0016

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1414
    .local v10, endValueView:Landroid/widget/TextView;
    if-nez v10, :cond_b

    .line 1415
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : the TextView: endValueView is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1418
    :cond_b
    const v29, 0x20e0018

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 1420
    .local v26, useLeftValueView:Landroid/widget/TextView;
    if-nez v26, :cond_c

    .line 1421
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : the TextView: useLeftValueView is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1425
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1426
    .local v15, mime:Ljava/lang/String;
    if-nez v15, :cond_d

    .line 1427
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : failed to get the original mime type"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1432
    :cond_d
    new-instance v7, Landroid/drm/DrmManagerClient$CustomAlertDialog;

    sget-object v29, Landroid/drm/DrmManagerClient;->sProtectionInfoDialogQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-direct {v7, v0, v1}, Landroid/drm/DrmManagerClient$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1433
    .local v7, dialog:Landroid/drm/DrmManagerClient$CustomAlertDialog;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 1435
    .local v18, res:Landroid/content/res/Resources;
    invoke-static {v15}, Landroid/drm/DrmUtils;->getAction(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v28

    .line 1436
    .local v28, values:Landroid/content/ContentValues;
    if-eqz v28, :cond_e

    invoke-virtual/range {v28 .. v28}, Landroid/content/ContentValues;->size()I

    move-result v29

    if-nez v29, :cond_11

    .line 1437
    :cond_e
    const v29, 0x20500ba

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1438
    const-string v29, ""

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1439
    const-string v29, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1441
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v6

    .line 1442
    .local v6, cv:Landroid/content/ContentValues;
    const/16 v20, 0x0

    .line 1443
    .local v20, rightsIssuer:Ljava/lang/String;
    if-eqz v6, :cond_f

    const-string v29, "drm_rights_issuer"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 1444
    const-string v29, "drm_rights_issuer"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1448
    :cond_f
    move-object/from16 v21, v20

    .line 1449
    .local v21, rightsIssuerFinal:Ljava/lang/String;
    if-eqz v21, :cond_10

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_10

    .line 1450
    const/16 v29, -0x1

    const v30, 0x20500be

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    new-instance v31, Landroid/drm/DrmManagerClient$1;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/drm/DrmManagerClient$1;-><init>(Landroid/drm/DrmManagerClient;Ljava/lang/String;Landroid/content/Context;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v7, v0, v1, v2}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1519
    .end local v6           #cv:Landroid/content/ContentValues;
    .end local v20           #rightsIssuer:Ljava/lang/String;
    .end local v21           #rightsIssuerFinal:Ljava/lang/String;
    :cond_10
    :goto_2
    const/16 v29, -0x3

    const v30, 0x104000a

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    new-instance v31, Landroid/drm/DrmManagerClient$2;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/drm/DrmManagerClient$2;-><init>(Landroid/drm/DrmManagerClient;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v7, v0, v1, v2}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1527
    const v29, 0x2050062

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setTitle(I)V

    .line 1528
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->setView(Landroid/view/View;)V

    .line 1529
    invoke-virtual {v7}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->show()V

    move-object/from16 v19, v7

    .line 1531
    goto/16 :goto_0

    .line 1463
    :cond_11
    const-string v29, "license_start_time"

    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 1464
    const-string v29, "license_start_time"

    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v25

    .line 1465
    .local v25, startL:Ljava/lang/Long;
    if-nez v25, :cond_12

    .line 1466
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : startL is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1469
    :cond_12
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    const-wide/16 v31, -0x1

    cmp-long v29, v29, v31

    if-nez v29, :cond_13

    .line 1470
    const v29, 0x20500b9

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1478
    .end local v25           #startL:Ljava/lang/Long;
    :goto_3
    const-string v29, "license_expiry_time"

    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_17

    .line 1479
    const-string v29, "license_expiry_time"

    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 1480
    .local v9, endL:Ljava/lang/Long;
    if-nez v9, :cond_15

    .line 1481
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : endL is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1472
    .end local v9           #endL:Ljava/lang/Long;
    .restart local v25       #startL:Ljava/lang/Long;
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/drm/DrmManagerClient;->toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1475
    .end local v25           #startL:Ljava/lang/Long;
    :cond_14
    const v29, 0x20500b9

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 1484
    .restart local v9       #endL:Ljava/lang/Long;
    :cond_15
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    const-wide/16 v31, -0x1

    cmp-long v29, v29, v31

    if-nez v29, :cond_16

    .line 1485
    const v29, 0x20500b9

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1493
    .end local v9           #endL:Ljava/lang/Long;
    :goto_4
    const-string/jumbo v29, "remaining_repeat_count"

    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1c

    const-string/jumbo v29, "max_repeat_count"

    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1c

    .line 1495
    const-string/jumbo v29, "remaining_repeat_count"

    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    .line 1496
    .local v17, remainCount:Ljava/lang/Long;
    if-nez v17, :cond_18

    .line 1497
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : remainCount is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1487
    .end local v17           #remainCount:Ljava/lang/Long;
    .restart local v9       #endL:Ljava/lang/Long;
    :cond_16
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/drm/DrmManagerClient;->toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1490
    .end local v9           #endL:Ljava/lang/Long;
    :cond_17
    const v29, 0x20500b9

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 1501
    .restart local v17       #remainCount:Ljava/lang/Long;
    :cond_18
    const-string/jumbo v29, "max_repeat_count"

    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    .line 1502
    .local v14, maxCount:Ljava/lang/Long;
    if-nez v14, :cond_19

    .line 1503
    const-string v29, "DrmManagerClient"

    const-string/jumbo v30, "showProtectionInfoDialog() : maxCount is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1507
    :cond_19
    const-string v29, "DrmManagerClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "showProtectionInfoDialog() : remainCount="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", maxCount="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    const-wide/16 v31, -0x1

    cmp-long v29, v29, v31

    if-eqz v29, :cond_1a

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    const-wide/16 v31, -0x1

    cmp-long v29, v29, v31

    if-nez v29, :cond_1b

    .line 1509
    :cond_1a
    const v29, 0x20500b9

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 1511
    :cond_1b
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v14}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1514
    .end local v14           #maxCount:Ljava/lang/Long;
    .end local v17           #remainCount:Ljava/lang/Long;
    :cond_1c
    const v29, 0x20500b9

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2
.end method
