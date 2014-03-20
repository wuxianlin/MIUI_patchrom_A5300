.class public Lcom/android/stk/StkMenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "StkMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkMenuAdapter$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/internal/telephony/cat/Item;",
        ">;"
    }
.end annotation


# instance fields
.field private final SHOW_NEXTACTION:Z

.field private mIcosSelfExplanatory:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private m_NextActionIndicator:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;[BZ)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "nextActionIndicator"
    .parameter "icosSelfExplanatory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/Item;",
            ">;[BZ)V"
        }
    .end annotation

    .prologue
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/Item;>;"
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 72
    iput-boolean v0, p0, Lcom/android/stk/StkMenuAdapter;->mIcosSelfExplanatory:Z

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stk/StkMenuAdapter;->SHOW_NEXTACTION:Z

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 80
    iput-boolean p4, p0, Lcom/android/stk/StkMenuAdapter;->mIcosSelfExplanatory:Z

    .line 81
    iput-object p3, p0, Lcom/android/stk/StkMenuAdapter;->m_NextActionIndicator:[B

    .line 82
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/android/stk/StkMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/Item;

    .line 87
    .local v2, item:Lcom/android/internal/telephony/cat/Item;
    const/4 v4, 0x0

    .line 88
    .local v4, strId:I
    const/4 v0, 0x0

    .line 90
    .local v0, flag:Z
    iget-boolean v6, p0, Lcom/android/stk/StkMenuAdapter;->mIcosSelfExplanatory:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/stk/StkMenuAdapter;->mIcosSelfExplanatory:Z

    if-eqz v6, :cond_4

    iget-object v6, v2, Lcom/android/internal/telephony/cat/Item;->icon:Landroid/graphics/Bitmap;

    if-nez v6, :cond_4

    .line 91
    :cond_0
    iget-object v6, p0, Lcom/android/stk/StkMenuAdapter;->m_NextActionIndicator:[B

    if-eqz v6, :cond_1

    .line 92
    iget-object v6, p0, Lcom/android/stk/StkMenuAdapter;->m_NextActionIndicator:[B

    aget-byte v6, v6, p1

    invoke-static {v6}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v5

    .line 94
    .local v5, type:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-eqz v5, :cond_1

    .line 95
    const/4 v0, 0x1

    .line 96
    sget-object v6, Lcom/android/stk/StkMenuAdapter$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 218
    const/4 v0, 0x0

    .line 223
    .end local v5           #type:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 224
    invoke-virtual {p0}, Lcom/android/stk/StkMenuAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, str:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/stk/StkMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030003

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 227
    const v6, 0x7f07000b

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, v2, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    const v6, 0x7f07000c

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    .end local v3           #str:Ljava/lang/String;
    :goto_1
    const v6, 0x7f07000a

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 235
    .local v1, imageView:Landroid/widget/ImageView;
    iget-object v6, v2, Lcom/android/internal/telephony/cat/Item;->icon:Landroid/graphics/Bitmap;

    if-nez v6, :cond_3

    .line 236
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    :goto_2
    return-object p2

    .line 98
    .end local v1           #imageView:Landroid/widget/ImageView;
    .restart local v5       #type:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    :pswitch_0
    const v4, 0x7f060020

    .line 99
    goto :goto_0

    .line 101
    :pswitch_1
    const v4, 0x7f060013

    .line 102
    goto :goto_0

    .line 104
    :pswitch_2
    const v4, 0x7f060018

    .line 105
    goto :goto_0

    .line 107
    :pswitch_3
    const v4, 0x7f06001f

    .line 108
    goto :goto_0

    .line 110
    :pswitch_4
    const v4, 0x7f060016

    .line 111
    goto :goto_0

    .line 113
    :pswitch_5
    const v4, 0x7f060019

    .line 114
    goto :goto_0

    .line 116
    :pswitch_6
    const v4, 0x7f060015

    .line 117
    goto :goto_0

    .line 119
    :pswitch_7
    const v4, 0x7f060014

    .line 120
    goto :goto_0

    .line 122
    :pswitch_8
    const v4, 0x7f06001d

    .line 123
    goto :goto_0

    .line 125
    :pswitch_9
    const v4, 0x7f06001e

    .line 126
    goto :goto_0

    .line 128
    :pswitch_a
    const v4, 0x7f06001c

    .line 129
    goto :goto_0

    .line 131
    :pswitch_b
    const v4, 0x7f06001a

    .line 132
    goto :goto_0

    .line 134
    :pswitch_c
    const v4, 0x7f06001b

    .line 135
    goto :goto_0

    .line 137
    :pswitch_d
    const v4, 0x7f060017

    .line 138
    goto :goto_0

    .line 140
    :pswitch_e
    const v4, 0x7f060021

    .line 141
    goto :goto_0

    .line 143
    :pswitch_f
    const v4, 0x7f060022

    .line 144
    goto :goto_0

    .line 146
    :pswitch_10
    const v4, 0x7f060023

    .line 147
    goto/16 :goto_0

    .line 149
    :pswitch_11
    const v4, 0x7f060024

    .line 150
    goto/16 :goto_0

    .line 152
    :pswitch_12
    const v4, 0x7f060025

    .line 153
    goto/16 :goto_0

    .line 155
    :pswitch_13
    const v4, 0x7f060026

    .line 156
    goto/16 :goto_0

    .line 158
    :pswitch_14
    const v4, 0x7f060027

    .line 159
    goto/16 :goto_0

    .line 161
    :pswitch_15
    const v4, 0x7f060028

    .line 162
    goto/16 :goto_0

    .line 164
    :pswitch_16
    const v4, 0x7f060029

    .line 165
    goto/16 :goto_0

    .line 167
    :pswitch_17
    const v4, 0x7f06002a

    .line 168
    goto/16 :goto_0

    .line 170
    :pswitch_18
    const v4, 0x7f06002b

    .line 171
    goto/16 :goto_0

    .line 173
    :pswitch_19
    const v4, 0x7f06002c

    .line 174
    goto/16 :goto_0

    .line 176
    :pswitch_1a
    const v4, 0x7f06002d

    .line 177
    goto/16 :goto_0

    .line 179
    :pswitch_1b
    const v4, 0x7f06002e

    .line 180
    goto/16 :goto_0

    .line 182
    :pswitch_1c
    const v4, 0x7f06002f

    .line 183
    goto/16 :goto_0

    .line 185
    :pswitch_1d
    const v4, 0x7f060030

    .line 186
    goto/16 :goto_0

    .line 188
    :pswitch_1e
    const v4, 0x7f060031

    .line 189
    goto/16 :goto_0

    .line 191
    :pswitch_1f
    const v4, 0x7f060032

    .line 192
    goto/16 :goto_0

    .line 194
    :pswitch_20
    const v4, 0x7f060033

    .line 195
    goto/16 :goto_0

    .line 197
    :pswitch_21
    const v4, 0x7f060034

    .line 198
    goto/16 :goto_0

    .line 200
    :pswitch_22
    const v4, 0x7f060035

    .line 201
    goto/16 :goto_0

    .line 203
    :pswitch_23
    const v4, 0x7f060036

    .line 204
    goto/16 :goto_0

    .line 206
    :pswitch_24
    const v4, 0x7f060037

    .line 207
    goto/16 :goto_0

    .line 209
    :pswitch_25
    const v4, 0x7f060038

    .line 210
    goto/16 :goto_0

    .line 212
    :pswitch_26
    const v4, 0x7f060039

    .line 213
    goto/16 :goto_0

    .line 215
    :pswitch_27
    const v4, 0x7f06003a

    .line 216
    goto/16 :goto_0

    .line 230
    .end local v5           #type:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    :cond_2
    iget-object v6, p0, Lcom/android/stk/StkMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030002

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 232
    const v6, 0x7f07000b

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, v2, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 238
    .restart local v1       #imageView:Landroid/widget/ImageView;
    :cond_3
    iget-object v6, v2, Lcom/android/internal/telephony/cat/Item;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 239
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 243
    .end local v1           #imageView:Landroid/widget/ImageView;
    :cond_4
    iget-object v6, p0, Lcom/android/stk/StkMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030002

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 245
    const v6, 0x7f07000b

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    const v6, 0x7f07000a

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 247
    .restart local v1       #imageView:Landroid/widget/ImageView;
    iget-object v6, v2, Lcom/android/internal/telephony/cat/Item;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 248
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
    .end packed-switch
.end method
