.class public Landroid/app/SearchEngineManager;
.super Ljava/lang/Object;
.source "SearchEngineManager.java"


# static fields
.field public static final ACTION_SEARCH_ENGINE_CHANGED:Ljava/lang/String; = "com.mediatek.search.SEARCH_ENGINE_CHANGED"

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "SearchEngineManager"

.field private static mService:Landroid/app/ISearchEngineManager;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Landroid/app/SearchEngineManager;->mContext:Landroid/content/Context;

    .line 88
    const-string v0, "search_engine"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ISearchEngineManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ISearchEngineManager;

    move-result-object v0

    sput-object v0, Landroid/app/SearchEngineManager;->mService:Landroid/app/ISearchEngineManager;

    .line 90
    return-void
.end method


# virtual methods
.method public getAvailableSearchEngines()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/SearchEngineInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    :try_start_0
    sget-object v1, Landroid/app/SearchEngineManager;->mService:Landroid/app/ISearchEngineManager;

    invoke-interface {v1}, Landroid/app/ISearchEngineManager;->getAvailableSearchEngines()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 99
    :goto_0
    return-object v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SearchEngineManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSearchEngineInfos() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBestMatchSearchEngine(Ljava/lang/String;Ljava/lang/String;)Landroid/app/SearchEngineInfo;
    .locals 4
    .parameter "name"
    .parameter "favicon"

    .prologue
    .line 108
    :try_start_0
    sget-object v1, Landroid/app/SearchEngineManager;->mService:Landroid/app/ISearchEngineManager;

    invoke-interface {v1, p1, p2}, Landroid/app/ISearchEngineManager;->getBestMatchSearchEngine(Ljava/lang/String;Ljava/lang/String;)Landroid/app/SearchEngineInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 111
    :goto_0
    return-object v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SearchEngineManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBestMatchSearchEngine() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultSearchEngine()Landroid/app/SearchEngineInfo;
    .locals 4

    .prologue
    .line 146
    :try_start_0
    sget-object v1, Landroid/app/SearchEngineManager;->mService:Landroid/app/ISearchEngineManager;

    invoke-interface {v1}, Landroid/app/ISearchEngineManager;->getDefaultSearchEngine()Landroid/app/SearchEngineInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 149
    :goto_0
    return-object v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SearchEngineManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemDefaultSearchEngine() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSearchEngineBy(ILjava/lang/String;)Landroid/app/SearchEngineInfo;
    .locals 4
    .parameter "field"
    .parameter "name"

    .prologue
    .line 134
    :try_start_0
    sget-object v1, Landroid/app/SearchEngineManager;->mService:Landroid/app/ISearchEngineManager;

    invoke-interface {v1, p1, p2}, Landroid/app/ISearchEngineManager;->getSearchEngineBy(ILjava/lang/String;)Landroid/app/SearchEngineInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 137
    :goto_0
    return-object v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SearchEngineManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSearchEngineByName() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSearchEngineByFavicon(Ljava/lang/String;)Landroid/app/SearchEngineInfo;
    .locals 1
    .parameter "favicon"

    .prologue
    .line 119
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/app/SearchEngineManager;->getSearchEngineBy(ILjava/lang/String;)Landroid/app/SearchEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSearchEngineByName(Ljava/lang/String;)Landroid/app/SearchEngineInfo;
    .locals 1
    .parameter "name"

    .prologue
    .line 126
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/SearchEngineManager;->getSearchEngineBy(ILjava/lang/String;)Landroid/app/SearchEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultSearchEngine(Landroid/app/SearchEngineInfo;)Z
    .locals 4
    .parameter "engine"

    .prologue
    .line 158
    :try_start_0
    sget-object v1, Landroid/app/SearchEngineManager;->mService:Landroid/app/ISearchEngineManager;

    invoke-interface {v1, p1}, Landroid/app/ISearchEngineManager;->setDefaultSearchEngine(Landroid/app/SearchEngineInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 161
    :goto_0
    return v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SearchEngineManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemDefaultSearchEngine() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v1, 0x0

    goto :goto_0
.end method
