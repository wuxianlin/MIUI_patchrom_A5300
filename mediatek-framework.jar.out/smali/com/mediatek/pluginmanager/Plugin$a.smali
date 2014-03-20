.class Lcom/mediatek/pluginmanager/Plugin$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/pluginmanager/Plugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/mediatek/pluginmanager/Plugin$a;->a:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lcom/mediatek/pluginmanager/Plugin$a;->b:Ljava/lang/ClassLoader;

    .line 104
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 108
    if-ne p0, p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    instance-of v2, p1, Lcom/mediatek/pluginmanager/Plugin$a;

    if-nez v2, :cond_2

    move v0, v1

    .line 112
    goto :goto_0

    .line 114
    :cond_2
    check-cast p1, Lcom/mediatek/pluginmanager/Plugin$a;

    .line 116
    iget-object v2, p0, Lcom/mediatek/pluginmanager/Plugin$a;->b:Ljava/lang/ClassLoader;

    iget-object v3, p1, Lcom/mediatek/pluginmanager/Plugin$a;->b:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 117
    goto :goto_0

    .line 119
    :cond_3
    iget-object v2, p0, Lcom/mediatek/pluginmanager/Plugin$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/mediatek/pluginmanager/Plugin$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 120
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/pluginmanager/Plugin$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 128
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/mediatek/pluginmanager/Plugin$a;->b:Ljava/lang/ClassLoader;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    return v0
.end method
