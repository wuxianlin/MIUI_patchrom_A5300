.class Lcom/android/stk/NotificationAlertActivity$1;
.super Ljava/lang/Object;
.source "NotificationAlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/NotificationAlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/NotificationAlertActivity;


# direct methods
.method constructor <init>(Lcom/android/stk/NotificationAlertActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/stk/NotificationAlertActivity$1;->this$0:Lcom/android/stk/NotificationAlertActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 100
    const-string v0, "Stk-NA "

    const-string v1, "finished!"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/stk/NotificationAlertActivity$1;->this$0:Lcom/android/stk/NotificationAlertActivity;

    invoke-virtual {v0}, Lcom/android/stk/NotificationAlertActivity;->finish()V

    .line 102
    return-void
.end method
