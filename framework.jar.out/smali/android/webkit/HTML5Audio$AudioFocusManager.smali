.class Landroid/webkit/HTML5Audio$AudioFocusManager;
.super Ljava/lang/Object;
.source "HTML5Audio.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioFocusManager"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mFocusStatus:I

.field private mListenerCount:I

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/webkit/HTML5Audio;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5Audio;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 404
    iput-object p1, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->this$0:Landroid/webkit/HTML5Audio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mListeners:Ljava/util/ArrayList;

    .line 405
    iput-object p2, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mContext:Landroid/content/Context;

    .line 406
    return-void
.end method

.method private isFocusing()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 409
    iget v1, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mFocusStatus:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mFocusStatus:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abandonFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 3
    .parameter "ofcl"

    .prologue
    .line 435
    const-string v1, "HTML5Audio "

    const-string v2, "abandonFocus"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget v1, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mListenerCount:I

    if-nez v1, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    iget-object v1, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 440
    iget v1, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mListenerCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mListenerCount:I

    .line 442
    iget v1, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mListenerCount:I

    if-nez v1, :cond_0

    .line 443
    iget-object v1, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 444
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 445
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mFocusStatus:I

    goto :goto_0
.end method

.method public onAudioFocusChange(I)V
    .locals 5
    .parameter "focusChange"

    .prologue
    .line 452
    const-string v2, "HTML5Audio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAudioFocusChange(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iput p1, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mFocusStatus:I

    .line 454
    iget v2, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mListenerCount:I

    if-nez v2, :cond_1

    .line 462
    :cond_0
    return-void

    .line 459
    :cond_1
    iget-object v2, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 460
    .local v1, ofcl:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-interface {v1, p1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    goto :goto_0
.end method

.method public requestFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 6
    .parameter "ofcl"

    .prologue
    const/4 v2, 0x1

    .line 414
    const-string v3, "HTML5Audio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestFocus():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mFocusStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget v3, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mListenerCount:I

    if-eqz v3, :cond_0

    invoke-direct {p0}, Landroid/webkit/HTML5Audio$AudioFocusManager;->isFocusing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 417
    :cond_0
    iget-object v3, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 418
    .local v0, am:Landroid/media/AudioManager;
    const/4 v3, 0x3

    invoke-virtual {v0, p0, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 420
    .local v1, result:I
    iput v1, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mFocusStatus:I

    .line 423
    .end local v0           #am:Landroid/media/AudioManager;
    .end local v1           #result:I
    :cond_1
    iget v3, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mFocusStatus:I

    if-ne v3, v2, :cond_2

    .line 424
    iget-object v3, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    iget v3, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mListenerCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mListenerCount:I

    .line 428
    :cond_2
    invoke-direct {p0}, Landroid/webkit/HTML5Audio$AudioFocusManager;->isFocusing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 431
    :goto_0
    return v2

    :cond_3
    iget v2, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mFocusStatus:I

    goto :goto_0
.end method
