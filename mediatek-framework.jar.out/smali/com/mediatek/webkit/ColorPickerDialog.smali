.class public Lcom/mediatek/webkit/ColorPickerDialog;
.super Landroid/app/Dialog;
.source "ColorPickerDialog.java"

# interfaces
.implements Lcom/mediatek/webkit/ColorPickerView$OnColorChangedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/webkit/ColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private mColorPicker:Lcom/mediatek/webkit/ColorPickerView;

.field private mListener:Lcom/mediatek/webkit/ColorPickerDialog$OnColorChangedListener;

.field private mNewColor:Lcom/mediatek/webkit/ColorPickerPanelView;

.field private mOldColor:Lcom/mediatek/webkit/ColorPickerPanelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "initialColor"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-direct {p0, p2}, Lcom/mediatek/webkit/ColorPickerDialog;->init(I)V

    .line 51
    return-void
.end method

.method private init(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/mediatek/webkit/ColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/webkit/ColorPickerDialog;->setUp(I)V

    .line 62
    return-void
.end method

.method private setUp(I)V
    .locals 6
    .parameter "color"

    .prologue
    const/4 v5, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/mediatek/webkit/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 66
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x2070003

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 68
    .local v1, layout:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/mediatek/webkit/ColorPickerDialog;->setContentView(Landroid/view/View;)V

    .line 69
    const v2, 0x20500fc

    invoke-virtual {p0, v2}, Lcom/mediatek/webkit/ColorPickerDialog;->setTitle(I)V

    .line 71
    const v2, 0x20e0005

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mediatek/webkit/ColorPickerView;

    iput-object v2, p0, Lcom/mediatek/webkit/ColorPickerDialog;->mColorPicker:Lcom/mediatek/webkit/ColorPickerView;

    .line 72
    const v2, 0x20e0006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mediatek/webkit/ColorPickerPanelView;

    iput-object v2, p0, Lcom/mediatek/webkit/ColorPickerDialog;->mOldColor:Lcom/mediatek/webkit/ColorPickerPanelView;

    .line 73
    const v2, 0x20e0007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mediatek/webkit/ColorPickerPanelView;

    iput-object v2, p0, Lcom/mediatek/webkit/ColorPickerDialog;->mNewColor:Lcom/mediatek/webkit/ColorPickerPanelView;

    .line 75
    iget-object v2, p0, Lcom/mediatek/webkit/ColorPickerDialog;->mOldColor:Lcom/mediatek/webkit/ColorPickerPanelView;

    invoke-virtual {v2}, Lcom/mediatek/webkit/ColorPickerPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/mediatek/webkit/ColorPickerDialog;->mColorPicker:Lcom/mediatek/webkit/ColorPickerView;

    invoke-virtual {v3}, Lcom/mediatek/webkit/ColorPickerView;->getDrawingOffset()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/webkit/ColorPickerDialog;->mColorPicker:Lcom/mediatek/webkit/ColorPickerView;

    invoke-virtual {v4}, Lcom/mediatek/webkit/ColorPickerView;->getDrawingOffset()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 82
    iget-object v2, p0, Lcom/mediatek/webkit/ColorPickerDialog;->mOldColor:Lcom/mediatek/webkit/ColorPickerPanelView;

    invoke-virtual {v2, p0}, Lcom/mediatek/webkit/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v2, p0, Lcom/mediatek/webkit/ColorPickerDialog;->mNewColor:Lcom/mediatek/webkit/ColorPickerPanelView;

    invoke-virtual {v2, p0}, Lcom/mediatek/webkit/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v2, p0, Lcom/mediatek/webkit/ColorPickerDialog;->mColorPicker:Lcom/mediatek/webkit/ColorPickerView;

    invoke-virtual {v2, p0}, Lcom/mediatek/webkit/ColorPickerView;->setOnColorChangedListener(Lcom/mediatek/webkit/ColorPickerView$OnColorChangedListener;)V

    .line 85
    iget-object v2, p0, Lcom/mediatek/webkit/ColorPickerDialog;->mOldColor:Lcom/mediatek/webkit/ColorPickerPanelView;

    invoke-virtual {v2, p1}, Lcom/mediatek/webkit/ColorPickerPanelView;->setColor(I)V

    .line 86
    iget-object v2, p0, Lcom/mediatek/webkit/ColorPickerDialog;->mColorPicker:Lcom/mediatek/webkit/ColorPickerView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/mediatek/webkit/ColorPickerView;->setColor(IZ)V

    .line 87
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerDialog;->mColorPicker:Lcom/mediatek/webkit/ColorPickerView;

    invoke-virtual {v0}, Lcom/mediatek/webkit/ColorPickerView;->getColor()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x20e0007

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerDialog;->mListener:Lcom/mediatek/webkit/ColorPickerDialog$OnColorChangedListener;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerDialog;->mListener:Lcom/mediatek/webkit/ColorPickerDialog$OnColorChangedListener;

    iget-object v1, p0, Lcom/mediatek/webkit/ColorPickerDialog;->mNewColor:Lcom/mediatek/webkit/ColorPickerPanelView;

    invoke-virtual {v1}, Lcom/mediatek/webkit/ColorPickerPanelView;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mediatek/webkit/ColorPickerDialog$OnColorChangedListener;->onColorChanged(I)V

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/webkit/ColorPickerDialog;->dismiss()V

    .line 125
    return-void
.end method

.method public onColorChanged(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerDialog;->mNewColor:Lcom/mediatek/webkit/ColorPickerPanelView;

    invoke-virtual {v0, p1}, Lcom/mediatek/webkit/ColorPickerPanelView;->setColor(I)V

    .line 98
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 138
    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerDialog;->mOldColor:Lcom/mediatek/webkit/ColorPickerPanelView;

    const-string v1, "old_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/webkit/ColorPickerPanelView;->setColor(I)V

    .line 139
    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerDialog;->mColorPicker:Lcom/mediatek/webkit/ColorPickerView;

    const-string v1, "new_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/webkit/ColorPickerView;->setColor(IZ)V

    .line 140
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 130
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "old_color"

    iget-object v2, p0, Lcom/mediatek/webkit/ColorPickerDialog;->mOldColor:Lcom/mediatek/webkit/ColorPickerPanelView;

    invoke-virtual {v2}, Lcom/mediatek/webkit/ColorPickerPanelView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    const-string v1, "new_color"

    iget-object v2, p0, Lcom/mediatek/webkit/ColorPickerDialog;->mNewColor:Lcom/mediatek/webkit/ColorPickerPanelView;

    invoke-virtual {v2}, Lcom/mediatek/webkit/ColorPickerPanelView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    return-object v0
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerDialog;->mColorPicker:Lcom/mediatek/webkit/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/mediatek/webkit/ColorPickerView;->setAlphaSliderVisible(Z)V

    .line 102
    return-void
.end method

.method public setOnColorChangedListener(Lcom/mediatek/webkit/ColorPickerDialog$OnColorChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/mediatek/webkit/ColorPickerDialog;->mListener:Lcom/mediatek/webkit/ColorPickerDialog$OnColorChangedListener;

    .line 111
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 55
    return-void
.end method
