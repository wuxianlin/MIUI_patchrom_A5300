.class public Landroid/text/TextPaint;
.super Landroid/graphics/Paint;
.source "TextPaint.java"


# instance fields
.field public baselineShift:I

.field public bgColor:I

.field public density:F

.field public drawableState:[I

.field public linkColor:I

.field public underlineColor:I

.field public underlineThickness:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 32
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    .line 32
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 32
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 54
    return-void
.end method


# virtual methods
.method public getFontMetricsInt(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)I
    .locals 3
    .parameter "text"
    .parameter "fm"

    .prologue
    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-super {p0, p2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    .line 120
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Landroid/text/TextPaint;->getFontMetricsInt(Ljava/lang/String;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    goto :goto_0
.end method

.method public getFontMetricsInt(Ljava/lang/String;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 3
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "fm"

    .prologue
    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 89
    .local v0, bounds:Landroid/graphics/Rect;
    if-gez p2, :cond_0

    .line 90
    const/4 p2, 0x0

    .line 92
    :cond_0
    if-gez p3, :cond_1

    .line 93
    const/4 p3, 0x0

    .line 95
    :cond_1
    if-nez p1, :cond_5

    .line 96
    const/4 p3, 0x0

    move p2, p3

    .line 100
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 101
    invoke-super {p0, p4}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 102
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    if-ge v1, v2, :cond_3

    .line 103
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 104
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 106
    :cond_3
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    if-le v1, v2, :cond_4

    .line 107
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 108
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 110
    :cond_4
    iget v1, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v2

    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    add-int/2addr v1, v2

    return v1

    .line 97
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, p3, :cond_2

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    goto :goto_0
.end method

.method public getFontMetricsInt([CLandroid/graphics/Paint$FontMetricsInt;)I
    .locals 3
    .parameter "text"
    .parameter "fm"

    .prologue
    .line 127
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 128
    :cond_0
    invoke-super {p0, p2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, v1, v2, p2}, Landroid/text/TextPaint;->getFontMetricsInt(Ljava/lang/String;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    goto :goto_0
.end method

.method public set(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "tp"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 63
    iget v0, p1, Landroid/text/TextPaint;->bgColor:I

    iput v0, p0, Landroid/text/TextPaint;->bgColor:I

    .line 64
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    iput v0, p0, Landroid/text/TextPaint;->baselineShift:I

    .line 65
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    iput v0, p0, Landroid/text/TextPaint;->linkColor:I

    .line 66
    iget-object v0, p1, Landroid/text/TextPaint;->drawableState:[I

    iput-object v0, p0, Landroid/text/TextPaint;->drawableState:[I

    .line 67
    iget v0, p1, Landroid/text/TextPaint;->density:F

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 68
    iget v0, p1, Landroid/text/TextPaint;->underlineColor:I

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 69
    iget v0, p1, Landroid/text/TextPaint;->underlineThickness:F

    iput v0, p0, Landroid/text/TextPaint;->underlineThickness:F

    .line 70
    return-void
.end method

.method public setUnderlineText(IF)V
    .locals 0
    .parameter "color"
    .parameter "thickness"

    .prologue
    .line 79
    iput p1, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 80
    iput p2, p0, Landroid/text/TextPaint;->underlineThickness:F

    .line 81
    return-void
.end method
