.class public Landroid/text/style/URLSpan;
.super Landroid/text/style/ClickableSpan;
.source "URLSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/URLSpan;->mURL:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/text/style/URLSpan;->mURL:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0xb

    return v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/text/style/URLSpan;->mURL:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "widget"

    .prologue
    const/4 v10, 0x1

    .line 63
    invoke-virtual {p0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 65
    .local v9, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 66
    .local v3, context:Landroid/content/Context;
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v5, v11, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 67
    .local v5, intent:Landroid/content/Intent;
    const-string v11, "com.android.browser.application_id"

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    :try_start_0
    instance-of v11, p1, Landroid/widget/TextView;

    if-eqz v11, :cond_4

    .line 70
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v8, v0

    .line 71
    .local v8, textView:Landroid/widget/TextView;
    const/4 v6, 0x0

    .line 72
    .local v6, isWebURL:Z
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, scheme:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 74
    const-string v11, "http"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "https"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string/jumbo v11, "rtsp"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_0
    move v6, v10

    .line 78
    :cond_1
    :goto_0
    invoke-virtual {v8}, Landroid/widget/TextView;->isEnableShowUrlDialog()Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz v6, :cond_3

    .line 79
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 80
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v10, 0x20500d2

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 81
    const v10, 0x20500d3

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 82
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 84
    const v10, 0x104000a

    new-instance v11, Landroid/text/style/URLSpan$1;

    invoke-direct {v11, p0, v3, v5}, Landroid/text/style/URLSpan$1;-><init>(Landroid/text/style/URLSpan;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    const/high16 v10, 0x104

    new-instance v11, Landroid/text/style/URLSpan$2;

    invoke-direct {v11, p0}, Landroid/text/style/URLSpan$2;-><init>(Landroid/text/style/URLSpan;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 109
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v6           #isWebURL:Z
    .end local v7           #scheme:Ljava/lang/String;
    .end local v8           #textView:Landroid/widget/TextView;
    :goto_1
    return-void

    .line 74
    .restart local v6       #isWebURL:Z
    .restart local v7       #scheme:Ljava/lang/String;
    .restart local v8       #textView:Landroid/widget/TextView;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {v3, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 104
    .end local v6           #isWebURL:Z
    .end local v7           #scheme:Ljava/lang/String;
    .end local v8           #textView:Landroid/widget/TextView;
    :catch_0
    move-exception v4

    .line 105
    .local v4, e:Landroid/content/ActivityNotFoundException;
    const/4 v10, 0x0

    invoke-static {v5, v10}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .line 106
    .local v2, chooserIntent:Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 102
    .end local v2           #chooserIntent:Landroid/content/Intent;
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    :cond_4
    :try_start_1
    invoke-virtual {v3, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 54
    iget-object v0, p0, Landroid/text/style/URLSpan;->mURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    return-void
.end method
