.class public final Lcom/mediatek/stereo3d/JpsParser;
.super Ljava/lang/Object;
.source "JpsParser.java"

# interfaces
.implements Lcom/mediatek/common/stereo3d/IJpsParser;


# static fields
.field private static final HEADER_MAX_LENGTH:I = 0x28

.field private static final HEADER_MIN_LENGTH:I = 0xe

.field private static final MARKER_APP3:I = 0x3

.field private static final MARKER_APPN:I = 0x10

.field private static final MARKER_SOI:I = 0x0

.field public static final MONOSCOPIC:I = 0x0

.field public static final S3D_EYE_BOTH:I = 0x0

.field public static final S3D_EYE_LEFT:I = 0x1

.field public static final S3D_EYE_RIGHT:I = 0x2

.field public static final S3D_FULL_HEIGHT:I = 0x0

.field public static final S3D_FULL_WIDTH:I = 0x0

.field public static final S3D_HALF_HEIGHT:I = 0x1

.field public static final S3D_HALF_WIDTH:I = 0x1

.field public static final S3D_LAYOUT_ANAGLYPH:I = 0x4

.field public static final S3D_LAYOUT_INTERLEAVED:I = 0x1

.field public static final S3D_LAYOUT_SIDE_BY_SIDE:I = 0x2

.field public static final S3D_LAYOUT_TOP_AND_BOTTOM:I = 0x3

.field public static final S3D_LEFT_FIELD_FIRST:I = 0x1

.field public static final S3D_RIGHT_FIELD_FIRST:I = 0x0

.field public static final STEREOSCOPIC:I = 0x1

.field private static final TAG:Ljava/lang/String; = "JpsParser"


# instance fields
.field private mDisplay:I

.field private mFieldOrder:I

.field private mHeightType:I

.field private mLayout:I

.field private mType:I

.field private mWidthType:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput v0, p0, Lcom/mediatek/stereo3d/JpsParser;->mType:I

    .line 79
    iput v0, p0, Lcom/mediatek/stereo3d/JpsParser;->mDisplay:I

    .line 80
    iput v0, p0, Lcom/mediatek/stereo3d/JpsParser;->mLayout:I

    .line 81
    iput v0, p0, Lcom/mediatek/stereo3d/JpsParser;->mHeightType:I

    .line 82
    iput v0, p0, Lcom/mediatek/stereo3d/JpsParser;->mWidthType:I

    .line 83
    iput v0, p0, Lcom/mediatek/stereo3d/JpsParser;->mFieldOrder:I

    .line 87
    return-void
.end method

.method private findMarker([BII)Z
    .locals 5
    .parameter "fileBytes"
    .parameter "offset"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 277
    const/4 v0, 0x0

    .line 279
    .local v0, result:Z
    sparse-switch p3, :sswitch_data_0

    .line 294
    :goto_0
    return v0

    .line 281
    :sswitch_0
    aget-byte v3, p1, p2

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    const/16 v4, -0x28

    if-ne v3, v4, :cond_0

    move v0, v1

    .line 282
    :goto_1
    goto :goto_0

    :cond_0
    move v0, v2

    .line 281
    goto :goto_1

    .line 284
    :sswitch_1
    aget-byte v3, p1, p2

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    const/16 v4, -0x1d

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 285
    :goto_2
    goto :goto_0

    :cond_1
    move v0, v2

    .line 284
    goto :goto_2

    .line 287
    :sswitch_2
    aget-byte v3, p1, p2

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    const/16 v4, -0x1f

    if-lt v3, v4, :cond_2

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    const/16 v4, -0x11

    if-gt v3, v4, :cond_2

    move v0, v1

    .line 289
    :goto_3
    goto :goto_0

    :cond_2
    move v0, v2

    .line 287
    goto :goto_3

    .line 279
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method private findStartOfImageMarker([BILcom/mediatek/stereo3d/MarkerPair;)V
    .locals 4
    .parameter "fileBytes"
    .parameter "startOffset"
    .parameter "pair"

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x3

    .line 203
    move v0, p2

    .line 205
    .local v0, offset:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 206
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/stereo3d/JpsParser;->findMarker([BII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    add-int/lit8 v1, v0, 0x2

    invoke-direct {p0, p1, v1, v2}, Lcom/mediatek/stereo3d/JpsParser;->findMarker([BII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    invoke-virtual {p3, v2}, Lcom/mediatek/stereo3d/MarkerPair;->setMarker(I)V

    .line 209
    invoke-virtual {p3, v0}, Lcom/mediatek/stereo3d/MarkerPair;->setOffset(I)V

    .line 220
    :cond_0
    :goto_1
    return-void

    .line 211
    :cond_1
    add-int/lit8 v1, v0, 0x2

    invoke-direct {p0, p1, v1, v3}, Lcom/mediatek/stereo3d/JpsParser;->findMarker([BII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    invoke-virtual {p3, v3}, Lcom/mediatek/stereo3d/MarkerPair;->setMarker(I)V

    .line 213
    invoke-virtual {p3, v0}, Lcom/mediatek/stereo3d/MarkerPair;->setOffset(I)V

    goto :goto_1

    .line 218
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private getBlockLength([BI)I
    .locals 2
    .parameter "fileBytes"
    .parameter "offset"

    .prologue
    .line 231
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    mul-int/lit16 v0, v0, 0x100

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method public static parse(Ljava/io/File;)Lcom/mediatek/stereo3d/JpsParser;
    .locals 10
    .parameter "file"

    .prologue
    const/4 v9, 0x3

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, foundApp3:Z
    const/4 v3, 0x0

    .line 139
    .local v3, offset:I
    new-instance v5, Lcom/mediatek/stereo3d/JpsParser;

    invoke-direct {v5}, Lcom/mediatek/stereo3d/JpsParser;-><init>()V

    .line 142
    .local v5, parser:Lcom/mediatek/stereo3d/JpsParser;
    invoke-direct {v5, p0}, Lcom/mediatek/stereo3d/JpsParser;->readBytesFromFileHeader(Ljava/io/File;)[B

    move-result-object v1

    .line 144
    .local v1, imgBytes:[B
    if-eqz v1, :cond_3

    .line 145
    const-string v6, "JpsParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parse JPS header with image size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v4, Lcom/mediatek/stereo3d/MarkerPair;

    invoke-direct {v4}, Lcom/mediatek/stereo3d/MarkerPair;-><init>()V

    .line 150
    .local v4, pair:Lcom/mediatek/stereo3d/MarkerPair;
    :cond_0
    array-length v6, v1

    if-ge v3, v6, :cond_1

    .line 151
    invoke-direct {v5, v1, v3, v4}, Lcom/mediatek/stereo3d/JpsParser;->findStartOfImageMarker([BILcom/mediatek/stereo3d/MarkerPair;)V

    .line 153
    invoke-virtual {v4}, Lcom/mediatek/stereo3d/MarkerPair;->getMarker()I

    move-result v6

    if-ne v6, v9, :cond_4

    .line 155
    invoke-virtual {v4}, Lcom/mediatek/stereo3d/MarkerPair;->getOffset()I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    invoke-direct {v5, v1, v6}, Lcom/mediatek/stereo3d/JpsParser;->processStereoscopicDescriptor([BI)V

    .line 156
    const/4 v0, 0x1

    .line 174
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 175
    :cond_2
    array-length v6, v1

    if-ge v3, v6, :cond_3

    .line 176
    invoke-direct {v5, v1, v3, v9}, Lcom/mediatek/stereo3d/JpsParser;->findMarker([BII)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 178
    add-int/lit8 v6, v3, 0x4

    invoke-direct {v5, v1, v6}, Lcom/mediatek/stereo3d/JpsParser;->processStereoscopicDescriptor([BI)V

    .line 192
    .end local v4           #pair:Lcom/mediatek/stereo3d/MarkerPair;
    :cond_3
    :goto_1
    return-object v5

    .line 158
    .restart local v4       #pair:Lcom/mediatek/stereo3d/MarkerPair;
    :cond_4
    invoke-virtual {v4}, Lcom/mediatek/stereo3d/MarkerPair;->getMarker()I

    move-result v6

    const/16 v7, 0x10

    if-ne v6, v7, :cond_5

    .line 160
    invoke-virtual {v4}, Lcom/mediatek/stereo3d/MarkerPair;->getOffset()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-direct {v5, v1, v6}, Lcom/mediatek/stereo3d/JpsParser;->getBlockLength([BI)I

    move-result v2

    .line 161
    .local v2, length:I
    invoke-virtual {v4}, Lcom/mediatek/stereo3d/MarkerPair;->getOffset()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    add-int v3, v6, v2

    .line 162
    goto :goto_0

    .line 165
    .end local v2           #length:I
    :cond_5
    add-int/lit8 v3, v3, 0x4

    .line 167
    const/16 v6, 0x28

    if-le v3, v6, :cond_0

    .line 168
    const-string v6, "JpsParser"

    const-string v7, "Break marker searching"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    :cond_6
    add-int/lit8 v3, v3, 0x2

    .line 184
    const/16 v6, 0x32

    if-le v3, v6, :cond_2

    .line 185
    const-string v6, "JpsParser"

    const-string v7, "Break marker APP3 searching"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private processStereoscopicDescriptor([BI)V
    .locals 8
    .parameter "fileBytes"
    .parameter "pos"

    .prologue
    const/16 v7, 0x5f

    const/16 v6, 0x53

    const/16 v5, 0x50

    const/16 v4, 0x4a

    .line 243
    move v0, p2

    .line 245
    .local v0, offset:I
    add-int/lit8 v2, v0, 0xe

    array-length v3, p1

    if-gt v2, v3, :cond_0

    .line 246
    aget-byte v2, p1, v0

    if-ne v2, v7, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_0

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p1, v2

    if-ne v2, v5, :cond_0

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p1, v2

    if-ne v2, v6, :cond_0

    add-int/lit8 v2, v0, 0x4

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_0

    add-int/lit8 v2, v0, 0x5

    aget-byte v2, p1, v2

    if-ne v2, v5, :cond_0

    add-int/lit8 v2, v0, 0x6

    aget-byte v2, p1, v2

    if-ne v2, v6, :cond_0

    add-int/lit8 v2, v0, 0x7

    aget-byte v2, p1, v2

    if-ne v2, v7, :cond_0

    .line 251
    add-int/lit8 v0, v0, 0x8

    .line 252
    add-int/lit8 v0, v0, 0x2

    .line 254
    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .local v1, offset:I
    aget-byte v2, p1, v0

    invoke-direct {p0, v2}, Lcom/mediatek/stereo3d/JpsParser;->setType(B)V

    .line 256
    iget v2, p0, Lcom/mediatek/stereo3d/JpsParser;->mType:I

    if-nez v2, :cond_1

    .line 257
    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    aget-byte v2, p1, v1

    invoke-direct {p0, v2}, Lcom/mediatek/stereo3d/JpsParser;->setDisplay(B)V

    .line 262
    :goto_0
    aget-byte v2, p1, v0

    invoke-direct {p0, v2}, Lcom/mediatek/stereo3d/JpsParser;->setMiscFlags(B)V

    .line 265
    :cond_0
    return-void

    .line 258
    .end local v0           #offset:I
    .restart local v1       #offset:I
    :cond_1
    iget v2, p0, Lcom/mediatek/stereo3d/JpsParser;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 259
    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    aget-byte v2, p1, v1

    invoke-direct {p0, v2}, Lcom/mediatek/stereo3d/JpsParser;->setLayout(B)V

    goto :goto_0

    .end local v0           #offset:I
    .restart local v1       #offset:I
    :cond_2
    move v0, v1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    goto :goto_0
.end method

.method private readBytesFromFileHeader(Ljava/io/File;)[B
    .locals 10
    .parameter "imgFile"

    .prologue
    .line 97
    const/4 v4, 0x0

    .line 98
    .local v4, in:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 101
    .local v3, imgBytes:[B
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 103
    .end local v4           #in:Ljava/io/FileInputStream;
    .local v5, in:Ljava/io/FileInputStream;
    if-eqz v5, :cond_1

    .line 104
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 105
    .local v0, bout:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v1, v7, [B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 108
    .local v1, buffer:[B
    const/4 v6, 0x0

    .line 109
    .local v6, readBytes:I
    :try_start_2
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 110
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 112
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 113
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 118
    :goto_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .end local v0           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v1           #buffer:[B
    .end local v6           #readBytes:I
    :cond_1
    move-object v4, v5

    .line 125
    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :goto_1
    return-object v3

    .line 114
    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v0       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #buffer:[B
    .restart local v5       #in:Ljava/io/FileInputStream;
    .restart local v6       #readBytes:I
    :catch_0
    move-exception v2

    .line 115
    .local v2, ex:Ljava/io/IOException;
    const-string v7, "JpsParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 120
    .end local v0           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v1           #buffer:[B
    .end local v2           #ex:Ljava/io/IOException;
    .end local v6           #readBytes:I
    :catch_1
    move-exception v2

    move-object v4, v5

    .line 121
    .end local v5           #in:Ljava/io/FileInputStream;
    .local v2, ex:Ljava/io/FileNotFoundException;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :goto_2
    const-string v7, "JpsParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 122
    .end local v2           #ex:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 123
    .local v2, ex:Ljava/io/IOException;
    :goto_3
    const-string v7, "JpsParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 122
    .end local v2           #ex:Ljava/io/IOException;
    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/FileInputStream;
    :catch_3
    move-exception v2

    move-object v4, v5

    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    goto :goto_3

    .line 120
    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method private setDisplay(B)V
    .locals 2
    .parameter "b"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 338
    if-nez p1, :cond_1

    .line 339
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/stereo3d/JpsParser;->mDisplay:I

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    if-ne p1, v0, :cond_2

    .line 341
    iput v0, p0, Lcom/mediatek/stereo3d/JpsParser;->mDisplay:I

    goto :goto_0

    .line 342
    :cond_2
    if-ne p1, v1, :cond_0

    .line 343
    iput v1, p0, Lcom/mediatek/stereo3d/JpsParser;->mDisplay:I

    goto :goto_0
.end method

.method private setLayout(B)V
    .locals 4
    .parameter "b"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 319
    if-ne p1, v0, :cond_1

    .line 320
    iput v0, p0, Lcom/mediatek/stereo3d/JpsParser;->mLayout:I

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    if-ne p1, v1, :cond_2

    .line 322
    iput v1, p0, Lcom/mediatek/stereo3d/JpsParser;->mLayout:I

    goto :goto_0

    .line 323
    :cond_2
    if-ne p1, v2, :cond_3

    .line 324
    iput v2, p0, Lcom/mediatek/stereo3d/JpsParser;->mLayout:I

    goto :goto_0

    .line 325
    :cond_3
    if-ne p1, v3, :cond_0

    .line 326
    iput v3, p0, Lcom/mediatek/stereo3d/JpsParser;->mLayout:I

    goto :goto_0
.end method

.method private setMiscFlags(B)V
    .locals 4
    .parameter "b"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 355
    shr-int/lit8 v1, p1, 0x0

    and-int/lit8 v0, v1, 0x1

    .line 356
    .local v0, bit:I
    if-nez v0, :cond_0

    .line 357
    iput v2, p0, Lcom/mediatek/stereo3d/JpsParser;->mHeightType:I

    .line 363
    :goto_0
    shr-int/lit8 v1, p1, 0x1

    and-int/lit8 v0, v1, 0x1

    .line 364
    if-nez v0, :cond_1

    .line 365
    iput v2, p0, Lcom/mediatek/stereo3d/JpsParser;->mWidthType:I

    .line 371
    :goto_1
    shr-int/lit8 v1, p1, 0x2

    and-int/lit8 v0, v1, 0x1

    .line 372
    if-nez v0, :cond_2

    .line 373
    iput v2, p0, Lcom/mediatek/stereo3d/JpsParser;->mFieldOrder:I

    .line 377
    :goto_2
    return-void

    .line 359
    :cond_0
    iput v3, p0, Lcom/mediatek/stereo3d/JpsParser;->mHeightType:I

    goto :goto_0

    .line 367
    :cond_1
    iput v3, p0, Lcom/mediatek/stereo3d/JpsParser;->mWidthType:I

    goto :goto_1

    .line 375
    :cond_2
    iput v3, p0, Lcom/mediatek/stereo3d/JpsParser;->mFieldOrder:I

    goto :goto_2
.end method

.method private setType(B)V
    .locals 1
    .parameter "b"

    .prologue
    const/4 v0, 0x1

    .line 304
    if-nez p1, :cond_1

    .line 305
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/stereo3d/JpsParser;->mType:I

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    if-ne p1, v0, :cond_0

    .line 307
    iput v0, p0, Lcom/mediatek/stereo3d/JpsParser;->mType:I

    goto :goto_0
.end method


# virtual methods
.method public getDisplay()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcom/mediatek/stereo3d/JpsParser;->mDisplay:I

    return v0
.end method

.method public getFieldOrder()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/mediatek/stereo3d/JpsParser;->mFieldOrder:I

    return v0
.end method

.method public getHeightType()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/mediatek/stereo3d/JpsParser;->mHeightType:I

    return v0
.end method

.method public getLayout()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/mediatek/stereo3d/JpsParser;->mLayout:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/mediatek/stereo3d/JpsParser;->mType:I

    return v0
.end method

.method public getWidthType()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/mediatek/stereo3d/JpsParser;->mWidthType:I

    return v0
.end method
