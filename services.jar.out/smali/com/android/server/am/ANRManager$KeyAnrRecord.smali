.class Lcom/android/server/am/ANRManager$KeyAnrRecord;
.super Ljava/lang/Object;
.source "ANRManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyAnrRecord"
.end annotation


# instance fields
.field mActivity:Lcom/android/server/am/ActivityRecord;

.field mAnnotation:Ljava/lang/String;

.field mApp:Lcom/android/server/am/ProcessRecord;

.field mParent:Lcom/android/server/am/ActivityRecord;

.field final synthetic this$0:Lcom/android/server/am/ANRManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/ANRManager;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "app"
    .parameter "activity"
    .parameter "parent"
    .parameter "annotation"

    .prologue
    .line 869
    iput-object p1, p0, Lcom/android/server/am/ANRManager$KeyAnrRecord;->this$0:Lcom/android/server/am/ANRManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 870
    iput-object p2, p0, Lcom/android/server/am/ANRManager$KeyAnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 871
    iput-object p3, p0, Lcom/android/server/am/ANRManager$KeyAnrRecord;->mActivity:Lcom/android/server/am/ActivityRecord;

    .line 872
    iput-object p4, p0, Lcom/android/server/am/ANRManager$KeyAnrRecord;->mParent:Lcom/android/server/am/ActivityRecord;

    .line 873
    iput-object p5, p0, Lcom/android/server/am/ANRManager$KeyAnrRecord;->mAnnotation:Ljava/lang/String;

    .line 874
    return-void
.end method
