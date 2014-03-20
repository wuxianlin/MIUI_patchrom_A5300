.class final enum Lcom/android/stk/StkAppService$InitiatedByUserAction;
.super Ljava/lang/Enum;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InitiatedByUserAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/stk/StkAppService$InitiatedByUserAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/stk/StkAppService$InitiatedByUserAction;

.field public static final enum unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

.field public static final enum yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 166
    new-instance v0, Lcom/android/stk/StkAppService$InitiatedByUserAction;

    const-string v1, "yes"

    invoke-direct {v0, v1, v2}, Lcom/android/stk/StkAppService$InitiatedByUserAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    .line 167
    new-instance v0, Lcom/android/stk/StkAppService$InitiatedByUserAction;

    const-string v1, "unknown"

    invoke-direct {v0, v1, v3}, Lcom/android/stk/StkAppService$InitiatedByUserAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/stk/StkAppService$InitiatedByUserAction;

    sget-object v1, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/stk/StkAppService$InitiatedByUserAction;->$VALUES:[Lcom/android/stk/StkAppService$InitiatedByUserAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/stk/StkAppService$InitiatedByUserAction;
    .locals 1
    .parameter "name"

    .prologue
    .line 165
    const-class v0, Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/stk/StkAppService$InitiatedByUserAction;

    return-object v0
.end method

.method public static values()[Lcom/android/stk/StkAppService$InitiatedByUserAction;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/android/stk/StkAppService$InitiatedByUserAction;->$VALUES:[Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-virtual {v0}, [Lcom/android/stk/StkAppService$InitiatedByUserAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/stk/StkAppService$InitiatedByUserAction;

    return-object v0
.end method
