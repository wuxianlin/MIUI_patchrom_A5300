.class public Lcom/android/stk/StkAppService$StkContext;
.super Ljava/lang/Object;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StkContext"
.end annotation


# instance fields
.field protected isUserAccessed:Z

.field protected lastSelectedItem:Ljava/lang/String;

.field protected launchBrowser:Z

.field protected mAvailable:I

.field protected mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

.field protected mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field protected mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

.field protected mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field protected mDialogIsVisible:Z

.field protected mInputIsVisible:Z

.field protected mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field protected mMenuIsVisible:Z

.field protected mNotified:Z

.field protected mSetUpMenuHandled:Z

.field protected mSetupCallInProcess:Z

.field protected mSetupMenuCalled:Z

.field protected responseNeeded:Z

.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method protected constructor <init>(Lcom/android/stk/StkAppService;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 126
    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object v2, p0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 128
    iput-object v2, p0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 129
    iput-object v2, p0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 130
    iput-object v2, p0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 131
    iput-object v2, p0, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    .line 132
    iput-boolean v1, p0, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    .line 133
    iput-boolean v1, p0, Lcom/android/stk/StkAppService$StkContext;->mInputIsVisible:Z

    .line 134
    iput-boolean v1, p0, Lcom/android/stk/StkAppService$StkContext;->mDialogIsVisible:Z

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stk/StkAppService$StkContext;->responseNeeded:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/stk/StkAppService$StkContext;->launchBrowser:Z

    .line 137
    iput-object v2, p0, Lcom/android/stk/StkAppService$StkContext;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 138
    iput-boolean v1, p0, Lcom/android/stk/StkAppService$StkContext;->mSetupMenuCalled:Z

    .line 139
    iput-boolean v1, p0, Lcom/android/stk/StkAppService$StkContext;->mSetUpMenuHandled:Z

    .line 140
    iput-boolean v1, p0, Lcom/android/stk/StkAppService$StkContext;->mNotified:Z

    .line 141
    iput-boolean v1, p0, Lcom/android/stk/StkAppService$StkContext;->isUserAccessed:Z

    .line 142
    iput-boolean v1, p0, Lcom/android/stk/StkAppService$StkContext;->mSetupCallInProcess:Z

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/stk/StkAppService$StkContext;->mAvailable:I

    return-void
.end method
