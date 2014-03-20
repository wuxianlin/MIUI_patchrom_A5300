.class Lcom/android/server/WallpaperManagerService$LockScreenWallpaperObserver;
.super Landroid/os/FileObserver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockScreenWallpaperObserver"
.end annotation


# instance fields
.field final mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

.field final mWallpaperDir:Ljava/io/File;

.field final mWallpaperFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 3
    .parameter
    .parameter "wallpaper"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$LockScreenWallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    .line 180
    sget-object v0, Lcom/android/server/WallpaperManagerService;->LOCKSCREEN_WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x608

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 182
    sget-object v0, Lcom/android/server/WallpaperManagerService;->LOCKSCREEN_WALLPAPER_DIR:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$LockScreenWallpaperObserver;->mWallpaperDir:Ljava/io/File;

    .line 183
    iput-object p2, p0, Lcom/android/server/WallpaperManagerService$LockScreenWallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 184
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/WallpaperManagerService;->LOCKSCREEN_WALLPAPER_DIR:Ljava/io/File;

    const-string v2, "lockScreenWallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$LockScreenWallpaperObserver;->mWallpaperFile:Ljava/io/File;

    .line 185
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 8
    .parameter "event"
    .parameter "path"

    .prologue
    const/16 v7, 0x8

    .line 189
    if-nez p2, :cond_0

    .line 210
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$LockScreenWallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v5, v4, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 194
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 195
    .local v2, origId:J
    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$LockScreenWallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 196
    .local v0, bm:Landroid/app/backup/BackupManager;
    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 197
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$LockScreenWallpaperObserver;->mWallpaperDir:Ljava/io/File;

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    .local v1, changedFile:Ljava/io/File;
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$LockScreenWallpaperObserver;->mWallpaperFile:Ljava/io/File;

    invoke-virtual {v4, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 201
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$LockScreenWallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService$LockScreenWallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    #calls: Lcom/android/server/WallpaperManagerService;->notifyLockScreenCallbacksLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    invoke-static {v4, v6}, Lcom/android/server/WallpaperManagerService;->access$300(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 202
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$LockScreenWallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    if-ne p1, v7, :cond_1

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$LockScreenWallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-boolean v4, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    if-eqz v4, :cond_2

    .line 204
    :cond_1
    if-ne p1, v7, :cond_2

    .line 205
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$LockScreenWallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 209
    :cond_2
    monitor-exit v5

    goto :goto_0

    .end local v0           #bm:Landroid/app/backup/BackupManager;
    .end local v1           #changedFile:Ljava/io/File;
    .end local v2           #origId:J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
