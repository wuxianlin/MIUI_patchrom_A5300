.class Lcom/android/stk/StkMenuActivityII$2;
.super Ljava/lang/Object;
.source "StkMenuActivityII.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkMenuActivityII;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkMenuActivityII;


# direct methods
.method constructor <init>(Lcom/android/stk/StkMenuActivityII;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/stk/StkMenuActivityII$2;->this$0:Lcom/android/stk/StkMenuActivityII;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v3, 0x0

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, helpVisible:Z
    iget-object v1, p0, Lcom/android/stk/StkMenuActivityII$2;->this$0:Lcom/android/stk/StkMenuActivityII;

    #getter for: Lcom/android/stk/StkMenuActivityII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;
    invoke-static {v1}, Lcom/android/stk/StkMenuActivityII;->access$000(Lcom/android/stk/StkMenuActivityII;)Lcom/android/stk/StkMenuInstance;

    move-result-object v1

    iget-object v1, v1, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/stk/StkMenuActivityII$2;->this$0:Lcom/android/stk/StkMenuActivityII;

    #getter for: Lcom/android/stk/StkMenuActivityII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;
    invoke-static {v1}, Lcom/android/stk/StkMenuActivityII;->access$000(Lcom/android/stk/StkMenuActivityII;)Lcom/android/stk/StkMenuInstance;

    move-result-object v1

    iget-object v1, v1, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v0, v1, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    .line 237
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 238
    const/4 v1, 0x3

    const v2, 0x7f060005

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 240
    :cond_1
    return-void
.end method
