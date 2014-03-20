.class public Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;
.super Ljava/lang/Object;
.source "PhoneNumberFormatUtilEx.java"


# static fields
.field public static final AUSTRALIA_INTERNATIONAL_PREFIXS:[Ljava/lang/String; = null

.field public static final BRAZIL_INTERNATIONAL_PREFIXS:[Ljava/lang/String; = null

.field public static final DEBUG:Z = false

.field public static final FORMAT_AUSTRALIA:I = 0x15

.field public static final FORMAT_BRAZIL:I = 0x17

.field public static final FORMAT_CHINA_HONGKONG:I = 0x4

.field public static final FORMAT_CHINA_MACAU:I = 0x5

.field public static final FORMAT_CHINA_MAINLAND:I = 0x3

.field public static FORMAT_COUNTRY_CODES:[Ljava/lang/String; = null

.field public static final FORMAT_COUNTRY_NAMES:[Ljava/lang/String; = null

.field public static final FORMAT_ENGLAND:I = 0x7

.field public static final FORMAT_FRANCE:I = 0x8

.field public static final FORMAT_GERMANY:I = 0xa

.field public static final FORMAT_INDIA:I = 0xc

.field public static final FORMAT_INDONESIA:I = 0x10

.field public static final FORMAT_ITALY:I = 0x9

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_MALAYSIA:I = 0xe

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_NEW_ZEALAND:I = 0x16

.field public static final FORMAT_POLAND:I = 0x14

.field public static final FORMAT_PORTUGAL:I = 0x13

.field public static final FORMAT_RUSSIAN:I = 0xb

.field public static final FORMAT_SINGAPORE:I = 0xf

.field public static final FORMAT_SPAIN:I = 0xd

.field public static final FORMAT_TAIWAN:I = 0x6

.field public static final FORMAT_THAILAND:I = 0x11

.field public static final FORMAT_TURKEY:I = 0x18

.field public static final FORMAT_UNKNOWN:I = 0x0

.field public static final FORMAT_VIETNAM:I = 0x12

.field public static final FRANCE_INTERNATIONAL_PREFIXS:[Ljava/lang/String; = null

.field private static final Germany_FOUR_PART_REGION_CODES:[I = null

.field private static final Germany_THREE_PART_REGION_CODES:[I = null

.field public static final HONGKONG_INTERNATIONAL_PREFIXS:[Ljava/lang/String; = null

.field private static final INDIA_THREE_DIGIG_AREA_CODES:[I = null

.field public static final INDONESIA_INTERNATIONAL_PREFIXS:[Ljava/lang/String; = null

.field private static final ITALY_MOBILE_PREFIXS:[I = null

.field public static final JAPAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String; = null

.field private static final NANP_COUNTRIES:[Ljava/lang/String; = null

.field public static final NANP_INTERNATIONAL_PREFIXS:[Ljava/lang/String; = null

.field public static final SINGAPORE_INTERNATIONAL_PREFIXS:[Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "PhoneNumberFormatUtilEx"

.field public static final TAIWAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field public static final THAILAND_INTERNATIONAL_PREFIXS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "US"

    aput-object v1, v0, v3

    const-string v1, "CA"

    aput-object v1, v0, v4

    const-string v1, "AS"

    aput-object v1, v0, v5

    const-string v1, "AI"

    aput-object v1, v0, v6

    const-string v1, "AG"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "BS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "VG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GD"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GU"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MP"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "KN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "LC"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "VC"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TC"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "VI"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 122
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "011"

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->NANP_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 125
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "010"

    aput-object v1, v0, v3

    const-string v1, "001"

    aput-object v1, v0, v4

    const-string v1, "0041"

    aput-object v1, v0, v5

    const-string v1, "0061"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->JAPAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 138
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "001"

    aput-object v1, v0, v3

    const-string v1, "0080"

    aput-object v1, v0, v4

    const-string v1, "0082"

    aput-object v1, v0, v5

    const-string v1, "009"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->HONGKONG_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 152
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "002"

    aput-object v1, v0, v3

    const-string v1, "005"

    aput-object v1, v0, v4

    const-string v1, "006"

    aput-object v1, v0, v5

    const-string v1, "007"

    aput-object v1, v0, v6

    const-string v1, "009"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "019"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->TAIWAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 160
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "00"

    aput-object v1, v0, v3

    const-string v1, "40"

    aput-object v1, v0, v4

    const-string v1, "50"

    aput-object v1, v0, v5

    const-string v1, "70"

    aput-object v1, v0, v6

    const-string v1, "90"

    aput-object v1, v0, v7

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->FRANCE_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 181
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "001"

    aput-object v1, v0, v3

    const-string v1, "002"

    aput-object v1, v0, v4

    const-string v1, "008"

    aput-object v1, v0, v5

    const-string v1, "012"

    aput-object v1, v0, v6

    const-string v1, "013"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "018"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "019"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->SINGAPORE_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 188
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "001"

    aput-object v1, v0, v3

    const-string v1, "007"

    aput-object v1, v0, v4

    const-string v1, "008"

    aput-object v1, v0, v5

    const-string v1, "009"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->INDONESIA_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 195
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "001"

    aput-object v1, v0, v3

    const-string v1, "004"

    aput-object v1, v0, v4

    const-string v1, "005"

    aput-object v1, v0, v5

    const-string v1, "006"

    aput-object v1, v0, v6

    const-string v1, "007"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "008"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "009"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->THAILAND_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 208
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0011"

    aput-object v1, v0, v3

    const-string v1, "0014"

    aput-object v1, v0, v4

    const-string v1, "0015"

    aput-object v1, v0, v5

    const-string v1, "0016"

    aput-object v1, v0, v6

    const-string v1, "0018"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "0019"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->AUSTRALIA_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 218
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0012"

    aput-object v1, v0, v3

    const-string v1, "0014"

    aput-object v1, v0, v4

    const-string v1, "0015"

    aput-object v1, v0, v5

    const-string v1, "0021"

    aput-object v1, v0, v6

    const-string v1, "0023"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "0025"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "0031"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "0041"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->BRAZIL_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 227
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v3

    const-string v1, "81"

    aput-object v1, v0, v4

    const-string v1, "86"

    aput-object v1, v0, v5

    const-string v1, "852"

    aput-object v1, v0, v6

    const-string v1, "853"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "886"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "44"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "33"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "39"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "49"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "91"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "34"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "60"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "65"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "62"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "66"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "84"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "351"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "48"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "61"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "64"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "55"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "90"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->FORMAT_COUNTRY_CODES:[Ljava/lang/String;

    .line 241
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "US"

    aput-object v1, v0, v3

    const-string v1, "JP"

    aput-object v1, v0, v4

    const-string v1, "CN"

    aput-object v1, v0, v5

    const-string v1, "HK"

    aput-object v1, v0, v6

    const-string v1, "MO"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "TW"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "FR"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "IT"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "DE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "RU"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "IN"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ES"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "MY"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "SG"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ID"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "TH"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "VN"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "PT"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "PL"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "AU"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "NZ"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "BR"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "TR"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->FORMAT_COUNTRY_NAMES:[Ljava/lang/String;

    .line 1688
    const/16 v0, 0x9f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->INDIA_THREE_DIGIG_AREA_CODES:[I

    .line 1912
    const/16 v0, 0x2e

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->Germany_THREE_PART_REGION_CODES:[I

    .line 1922
    const/16 v0, 0xcc

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->Germany_FOUR_PART_REGION_CODES:[I

    .line 2077
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->ITALY_MOBILE_PREFIXS:[I

    return-void

    .line 1688
    nop

    :array_0
    .array-data 0x4
        0x78t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x7ct 0x0t 0x0t 0x0t
        0x81t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0x83t 0x0t 0x0t 0x0t
        0x84t 0x0t 0x0t 0x0t
        0x87t 0x0t 0x0t 0x0t
        0x8dt 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0x91t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0x9at 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xa1t 0x0t 0x0t 0x0t
        0xa4t 0x0t 0x0t 0x0t
        0xabt 0x0t 0x0t 0x0t
        0xact 0x0t 0x0t 0x0t
        0xaft 0x0t 0x0t 0x0t
        0xb1t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0xb7t 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0xbat 0x0t 0x0t 0x0t
        0xbft 0x0t 0x0t 0x0t
        0xc2t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xd7t 0x0t 0x0t 0x0t
        0xd9t 0x0t 0x0t 0x0t
        0xe6t 0x0t 0x0t 0x0t
        0xe7t 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
        0xf0t 0x0t 0x0t 0x0t
        0xf1t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
        0xfdt 0x0t 0x0t 0x0t
        0x1t 0x1t 0x0t 0x0t
        0x4t 0x1t 0x0t 0x0t
        0x5t 0x1t 0x0t 0x0t
        0x9t 0x1t 0x0t 0x0t
        0xct 0x1t 0x0t 0x0t
        0x16t 0x1t 0x0t 0x0t
        0x19t 0x1t 0x0t 0x0t
        0x1dt 0x1t 0x0t 0x0t
        0x1et 0x1t 0x0t 0x0t
        0x20t 0x1t 0x0t 0x0t
        0x23t 0x1t 0x0t 0x0t
        0x26t 0x1t 0x0t 0x0t
        0x46t 0x1t 0x0t 0x0t
        0x55t 0x1t 0x0t 0x0t
        0x56t 0x1t 0x0t 0x0t
        0x57t 0x1t 0x0t 0x0t
        0x61t 0x1t 0x0t 0x0t
        0x62t 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
        0x69t 0x1t 0x0t 0x0t
        0x6ct 0x1t 0x0t 0x0t
        0x70t 0x1t 0x0t 0x0t
        0x71t 0x1t 0x0t 0x0t
        0x72t 0x1t 0x0t 0x0t
        0x74t 0x1t 0x0t 0x0t
        0x75t 0x1t 0x0t 0x0t
        0x76t 0x1t 0x0t 0x0t
        0x78t 0x1t 0x0t 0x0t
        0x7dt 0x1t 0x0t 0x0t
        0x81t 0x1t 0x0t 0x0t
        0x85t 0x1t 0x0t 0x0t
        0x9dt 0x1t 0x0t 0x0t
        0xa0t 0x1t 0x0t 0x0t
        0xa5t 0x1t 0x0t 0x0t
        0xa6t 0x1t 0x0t 0x0t
        0xa7t 0x1t 0x0t 0x0t
        0xa8t 0x1t 0x0t 0x0t
        0xabt 0x1t 0x0t 0x0t
        0xaft 0x1t 0x0t 0x0t
        0xb3t 0x1t 0x0t 0x0t
        0xc3t 0x1t 0x0t 0x0t
        0xc4t 0x1t 0x0t 0x0t
        0xcdt 0x1t 0x0t 0x0t
        0xcet 0x1t 0x0t 0x0t
        0xd4t 0x1t 0x0t 0x0t
        0xd5t 0x1t 0x0t 0x0t
        0xd6t 0x1t 0x0t 0x0t
        0xd7t 0x1t 0x0t 0x0t
        0xdat 0x1t 0x0t 0x0t
        0xdbt 0x1t 0x0t 0x0t
        0xdct 0x1t 0x0t 0x0t
        0xddt 0x1t 0x0t 0x0t
        0xdet 0x1t 0x0t 0x0t
        0xdft 0x1t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0xe1t 0x1t 0x0t 0x0t
        0xe3t 0x1t 0x0t 0x0t
        0xe4t 0x1t 0x0t 0x0t
        0xe5t 0x1t 0x0t 0x0t
        0xe7t 0x1t 0x0t 0x0t
        0xeat 0x1t 0x0t 0x0t
        0xebt 0x1t 0x0t 0x0t
        0xeet 0x1t 0x0t 0x0t
        0xeft 0x1t 0x0t 0x0t
        0xf0t 0x1t 0x0t 0x0t
        0xf1t 0x1t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x3t 0x2t 0x0t 0x0t
        0xat 0x2t 0x0t 0x0t
        0x14t 0x2t 0x0t 0x0t
        0x17t 0x2t 0x0t 0x0t
        0x1et 0x2t 0x0t 0x0t
        0x24t 0x2t 0x0t 0x0t
        0x27t 0x2t 0x0t 0x0t
        0x32t 0x2t 0x0t 0x0t
        0x35t 0x2t 0x0t 0x0t
        0x3bt 0x2t 0x0t 0x0t
        0x45t 0x2t 0x0t 0x0t
        0x4ft 0x2t 0x0t 0x0t
        0x53t 0x2t 0x0t 0x0t
        0x64t 0x2t 0x0t 0x0t
        0x6dt 0x2t 0x0t 0x0t
        0x77t 0x2t 0x0t 0x0t
        0x81t 0x2t 0x0t 0x0t
        0x8bt 0x2t 0x0t 0x0t
        0x91t 0x2t 0x0t 0x0t
        0x95t 0x2t 0x0t 0x0t
        0x97t 0x2t 0x0t 0x0t
        0x9ft 0x2t 0x0t 0x0t
        0xa2t 0x2t 0x0t 0x0t
        0xa8t 0x2t 0x0t 0x0t
        0xc8t 0x2t 0x0t 0x0t
        0xd1t 0x2t 0x0t 0x0t
        0xd4t 0x2t 0x0t 0x0t
        0xdbt 0x2t 0x0t 0x0t
        0xddt 0x2t 0x0t 0x0t
        0xdet 0x2t 0x0t 0x0t
        0xe8t 0x2t 0x0t 0x0t
        0xebt 0x2t 0x0t 0x0t
        0xeft 0x2t 0x0t 0x0t
        0xf3t 0x2t 0x0t 0x0t
        0xf9t 0x2t 0x0t 0x0t
        0x3t 0x3t 0x0t 0x0t
        0x14t 0x3t 0x0t 0x0t
        0x30t 0x3t 0x0t 0x0t
        0x34t 0x3t 0x0t 0x0t
        0x35t 0x3t 0x0t 0x0t
        0x38t 0x3t 0x0t 0x0t
        0x3ft 0x3t 0x0t 0x0t
        0x40t 0x3t 0x0t 0x0t
        0x44t 0x3t 0x0t 0x0t
        0x5dt 0x3t 0x0t 0x0t
        0x5ft 0x3t 0x0t 0x0t
        0x62t 0x3t 0x0t 0x0t
        0x66t 0x3t 0x0t 0x0t
        0x6dt 0x3t 0x0t 0x0t
        0x6et 0x3t 0x0t 0x0t
        0x73t 0x3t 0x0t 0x0t
        0x74t 0x3t 0x0t 0x0t
        0x7bt 0x3t 0x0t 0x0t
    .end array-data

    .line 1912
    :array_1
    .array-data 0x4
        0xcat 0x0t 0x0t 0x0t
        0xcbt 0x0t 0x0t 0x0t
        0xd0t 0x0t 0x0t 0x0t
        0xd1t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xd6t 0x0t 0x0t 0x0t
        0xddt 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
        0xeat 0x0t 0x0t 0x0t
        0xf9t 0x0t 0x0t 0x0t
        0x36t 0x1t 0x0t 0x0t
        0x4ft 0x1t 0x0t 0x0t
        0x54t 0x1t 0x0t 0x0t
        0x59t 0x1t 0x0t 0x0t
        0x6dt 0x1t 0x0t 0x0t
        0x77t 0x1t 0x0t 0x0t
        0x81t 0x1t 0x0t 0x0t
        0x8bt 0x1t 0x0t 0x0t
        0xc9t 0x1t 0x0t 0x0t
        0xcat 0x1t 0x0t 0x0t
        0xcbt 0x1t 0x0t 0x0t
        0xbct 0x2t 0x0t 0x0t
        0xc5t 0x2t 0x0t 0x0t
        0xc6t 0x2t 0x0t 0x0t
        0xd8t 0x2t 0x0t 0x0t
        0xd9t 0x2t 0x0t 0x0t
        0xedt 0x2t 0x0t 0x0t
        0xf7t 0x2t 0x0t 0x0t
        0x1t 0x3t 0x0t 0x0t
        0xat 0x3t 0x0t 0x0t
        0xbt 0x3t 0x0t 0x0t
        0x12t 0x3t 0x0t 0x0t
        0x13t 0x3t 0x0t 0x0t
        0x14t 0x3t 0x0t 0x0t
        0x15t 0x3t 0x0t 0x0t
        0x18t 0x3t 0x0t 0x0t
        0x1et 0x3t 0x0t 0x0t
        0x1ft 0x3t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
        0x68t 0x3t 0x0t 0x0t
        0x6bt 0x3t 0x0t 0x0t
        0x6ft 0x3t 0x0t 0x0t
        0x84t 0x3t 0x0t 0x0t
        0x86t 0x3t 0x0t 0x0t
        0x87t 0x3t 0x0t 0x0t
        0x8at 0x3t 0x0t 0x0t
    .end array-data

    .line 1922
    :array_2
    .array-data 0x4
        0xe5t 0xct 0x0t 0x0t
        0xe6t 0xct 0x0t 0x0t
        0xe7t 0xct 0x0t 0x0t
        0xe8t 0xct 0x0t 0x0t
        0xeat 0xct 0x0t 0x0t
        0xebt 0xct 0x0t 0x0t
        0xf9t 0xct 0x0t 0x0t
        0xfat 0xct 0x0t 0x0t
        0xfft 0xct 0x0t 0x0t
        0x0t 0xdt 0x0t 0x0t
        0x1t 0xdt 0x0t 0x0t
        0x3t 0xdt 0x0t 0x0t
        0x4t 0xdt 0x0t 0x0t
        0x6t 0xdt 0x0t 0x0t
        0x7t 0xdt 0x0t 0x0t
        0x9t 0xdt 0x0t 0x0t
        0xat 0xdt 0x0t 0x0t
        0xdt 0xdt 0x0t 0x0t
        0xet 0xdt 0x0t 0x0t
        0x10t 0xdt 0x0t 0x0t
        0x12t 0xdt 0x0t 0x0t
        0x21t 0xdt 0x0t 0x0t
        0x22t 0xdt 0x0t 0x0t
        0x24t 0xdt 0x0t 0x0t
        0x26t 0xdt 0x0t 0x0t
        0x2bt 0xdt 0x0t 0x0t
        0x2ct 0xdt 0x0t 0x0t
        0x2ft 0xdt 0x0t 0x0t
        0x31t 0xdt 0x0t 0x0t
        0x32t 0xdt 0x0t 0x0t
        0x33t 0xdt 0x0t 0x0t
        0x35t 0xdt 0x0t 0x0t
        0x36t 0xdt 0x0t 0x0t
        0x39t 0xdt 0x0t 0x0t
        0x3at 0xdt 0x0t 0x0t
        0x3ft 0xdt 0x0t 0x0t
        0x42t 0xdt 0x0t 0x0t
        0x43t 0xdt 0x0t 0x0t
        0x5dt 0xdt 0x0t 0x0t
        0x5ft 0xdt 0x0t 0x0t
        0x61t 0xdt 0x0t 0x0t
        0x67t 0xdt 0x0t 0x0t
        0x69t 0xdt 0x0t 0x0t
        0x6bt 0xdt 0x0t 0x0t
        0x6dt 0xdt 0x0t 0x0t
        0x71t 0xdt 0x0t 0x0t
        0x73t 0xdt 0x0t 0x0t
        0x75t 0xdt 0x0t 0x0t
        0x77t 0xdt 0x0t 0x0t
        0x78t 0xdt 0x0t 0x0t
        0x85t 0xdt 0x0t 0x0t
        0x86t 0xdt 0x0t 0x0t
        0x88t 0xdt 0x0t 0x0t
        0x8at 0xdt 0x0t 0x0t
        0x8ft 0xdt 0x0t 0x0t
        0x91t 0xdt 0x0t 0x0t
        0x93t 0xdt 0x0t 0x0t
        0x94t 0xdt 0x0t 0x0t
        0xa3t 0xdt 0x0t 0x0t
        0xa5t 0xdt 0x0t 0x0t
        0xa6t 0xdt 0x0t 0x0t
        0xa8t 0xdt 0x0t 0x0t
        0xadt 0xdt 0x0t 0x0t
        0xb0t 0xdt 0x0t 0x0t
        0xc1t 0xdt 0x0t 0x0t
        0xc2t 0xdt 0x0t 0x0t
        0xc3t 0xdt 0x0t 0x0t
        0xc5t 0xdt 0x0t 0x0t
        0xc8t 0xdt 0x0t 0x0t
        0xc9t 0xdt 0x0t 0x0t
        0xcbt 0xdt 0x0t 0x0t
        0xcdt 0xdt 0x0t 0x0t
        0xd1t 0xdt 0x0t 0x0t
        0xd5t 0xdt 0x0t 0x0t
        0xd6t 0xdt 0x0t 0x0t
        0xd8t 0xdt 0x0t 0x0t
        0xdat 0xdt 0x0t 0x0t
        0xe9t 0xdt 0x0t 0x0t
        0xeat 0xdt 0x0t 0x0t
        0xebt 0xdt 0x0t 0x0t
        0xect 0xdt 0x0t 0x0t
        0xf3t 0xdt 0x0t 0x0t
        0xf5t 0xdt 0x0t 0x0t
        0xf6t 0xdt 0x0t 0x0t
        0xf8t 0xdt 0x0t 0x0t
        0xfat 0xdt 0x0t 0x0t
        0xfdt 0xdt 0x0t 0x0t
        0xfft 0xdt 0x0t 0x0t
        0x1t 0xet 0x0t 0x0t
        0x2t 0xet 0x0t 0x0t
        0x4t 0xet 0x0t 0x0t
        0x7t 0xet 0x0t 0x0t
        0x8t 0xet 0x0t 0x0t
        0xat 0xet 0x0t 0x0t
        0xct 0xet 0x0t 0x0t
        0x11t 0xet 0x0t 0x0t
        0x13t 0xet 0x0t 0x0t
        0x15t 0xet 0x0t 0x0t
        0x16t 0xet 0x0t 0x0t
        0x25t 0xet 0x0t 0x0t
        0x26t 0xet 0x0t 0x0t
        0x27t 0xet 0x0t 0x0t
        0x28t 0xet 0x0t 0x0t
        0x2at 0xet 0x0t 0x0t
        0x2bt 0xet 0x0t 0x0t
        0x2ct 0xet 0x0t 0x0t
        0x2dt 0xet 0x0t 0x0t
        0x2ft 0xet 0x0t 0x0t
        0x30t 0xet 0x0t 0x0t
        0x32t 0xet 0x0t 0x0t
        0x33t 0xet 0x0t 0x0t
        0x34t 0xet 0x0t 0x0t
        0x39t 0xet 0x0t 0x0t
        0x3bt 0xet 0x0t 0x0t
        0x3ct 0xet 0x0t 0x0t
        0x3ft 0xet 0x0t 0x0t
        0x4dt 0xet 0x0t 0x0t
        0x4ft 0xet 0x0t 0x0t
        0x57t 0xet 0x0t 0x0t
        0x58t 0xet 0x0t 0x0t
        0x5bt 0xet 0x0t 0x0t
        0x5dt 0xet 0x0t 0x0t
        0x5ft 0xet 0x0t 0x0t
        0x60t 0xet 0x0t 0x0t
        0x61t 0xet 0x0t 0x0t
        0x62t 0xet 0x0t 0x0t
        0x63t 0xet 0x0t 0x0t
        0x65t 0xet 0x0t 0x0t
        0x66t 0xet 0x0t 0x0t
        0x6bt 0xet 0x0t 0x0t
        0x6dt 0xet 0x0t 0x0t
        0x6ft 0xet 0x0t 0x0t
        0x89t 0xet 0x0t 0x0t
        0x8at 0xet 0x0t 0x0t
        0x8bt 0xet 0x0t 0x0t
        0x8ct 0xet 0x0t 0x0t
        0x8dt 0xet 0x0t 0x0t
        0x8et 0xet 0x0t 0x0t
        0x8ft 0xet 0x0t 0x0t
        0x93t 0xet 0x0t 0x0t
        0x95t 0xet 0x0t 0x0t
        0x97t 0xet 0x0t 0x0t
        0x99t 0xet 0x0t 0x0t
        0x9dt 0xet 0x0t 0x0t
        0xa0t 0xet 0x0t 0x0t
        0xa1t 0xet 0x0t 0x0t
        0xb1t 0xet 0x0t 0x0t
        0xb2t 0xet 0x0t 0x0t
        0xb3t 0xet 0x0t 0x0t
        0xb4t 0xet 0x0t 0x0t
        0xb5t 0xet 0x0t 0x0t
        0xbbt 0xet 0x0t 0x0t
        0xbct 0xet 0x0t 0x0t
        0xbdt 0xet 0x0t 0x0t
        0xbet 0xet 0x0t 0x0t
        0xedt 0xet 0x0t 0x0t
        0xf7t 0xet 0x0t 0x0t
        0xfat 0xet 0x0t 0x0t
        0xfet 0xet 0x0t 0x0t
        0x1t 0xft 0x0t 0x0t
        0x3t 0xft 0x0t 0x0t
        0x4t 0xft 0x0t 0x0t
        0x7t 0xft 0x0t 0x0t
        0x1ft 0xft 0x0t 0x0t
        0x22t 0xft 0x0t 0x0t
        0x24t 0xft 0x0t 0x0t
        0x25t 0xft 0x0t 0x0t
        0x29t 0xft 0x0t 0x0t
        0x2bt 0xft 0x0t 0x0t
        0x2et 0xft 0x0t 0x0t
        0x3dt 0xft 0x0t 0x0t
        0x51t 0xft 0x0t 0x0t
        0x53t 0xft 0x0t 0x0t
        0x55t 0xft 0x0t 0x0t
        0x58t 0xft 0x0t 0x0t
        0x5bt 0xft 0x0t 0x0t
        0x5dt 0xft 0x0t 0x0t
        0x5ft 0xft 0x0t 0x0t
        0x61t 0xft 0x0t 0x0t
        0x65t 0xft 0x0t 0x0t
        0x66t 0xft 0x0t 0x0t
        0x67t 0xft 0x0t 0x0t
        0x68t 0xft 0x0t 0x0t
        0x6at 0xft 0x0t 0x0t
        0x6bt 0xft 0x0t 0x0t
        0x6dt 0xft 0x0t 0x0t
        0x79t 0xft 0x0t 0x0t
        0x7at 0xft 0x0t 0x0t
        0x7bt 0xft 0x0t 0x0t
        0x7ct 0xft 0x0t 0x0t
        0x7dt 0xft 0x0t 0x0t
        0x7et 0xft 0x0t 0x0t
        0x7ft 0xft 0x0t 0x0t
        0x80t 0xft 0x0t 0x0t
        0x81t 0xft 0x0t 0x0t
        0x83t 0xft 0x0t 0x0t
        0x85t 0xft 0x0t 0x0t
        0x88t 0xft 0x0t 0x0t
        0x8dt 0xft 0x0t 0x0t
        0x90t 0xft 0x0t 0x0t
        0x97t 0xft 0x0t 0x0t
        0x9at 0xft 0x0t 0x0t
        0x9ct 0xft 0x0t 0x0t
        0x9dt 0xft 0x0t 0x0t
    .end array-data

    .line 2077
    :array_3
    .array-data 0x4
        0x48t 0x1t 0x0t 0x0t
        0x49t 0x1t 0x0t 0x0t
        0x4at 0x1t 0x0t 0x0t
        0x4dt 0x1t 0x0t 0x0t
        0x4et 0x1t 0x0t 0x0t
        0x4ft 0x1t 0x0t 0x0t
        0x50t 0x1t 0x0t 0x0t
        0x51t 0x1t 0x0t 0x0t
        0x52t 0x1t 0x0t 0x0t
        0x53t 0x1t 0x0t 0x0t
        0x5bt 0x1t 0x0t 0x0t
        0x5ct 0x1t 0x0t 0x0t
        0x5dt 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
        0x70t 0x1t 0x0t 0x0t
        0x7ct 0x1t 0x0t 0x0t
        0x84t 0x1t 0x0t 0x0t
        0x85t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkIndiaNumber(CCCC)I
    .locals 11
    .parameter "c1"
    .parameter "c2"
    .parameter "c3"
    .parameter "c4"

    .prologue
    const/16 v10, 0x37

    const/16 v9, 0x31

    const/16 v8, 0x30

    const/16 v7, 0x32

    const/16 v6, 0x27

    .line 1717
    const/4 v1, -0x1

    .line 1718
    .local v1, result:I
    add-int/lit8 v4, p2, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v5, p3, -0x30

    add-int v3, v4, v5

    .line 1719
    .local v3, temp:I
    const/16 v4, 0x39

    if-ne p0, v4, :cond_1

    .line 1720
    const/4 v1, 0x0

    .line 1743
    :cond_0
    :goto_0
    if-nez v1, :cond_1f

    move v2, v1

    .line 1761
    .end local v1           #result:I
    .local v2, result:I
    :goto_1
    return v2

    .line 1721
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_1
    const/16 v4, 0x38

    if-ne p0, v4, :cond_b

    .line 1722
    if-ne p1, v8, :cond_3

    const/16 v4, 0x14

    if-lt v3, v4, :cond_a

    if-lt v3, v7, :cond_2

    const/16 v4, 0x3c

    if-le v3, v4, :cond_a

    :cond_2
    const/16 v4, 0x50

    if-ge v3, v4, :cond_a

    :cond_3
    if-ne p1, v9, :cond_5

    const/16 v4, 0xa

    if-lt v3, v4, :cond_a

    const/16 v4, 0x14

    if-lt v3, v4, :cond_4

    const/16 v4, 0x1d

    if-le v3, v4, :cond_a

    :cond_4
    const/16 v4, 0x28

    if-lt v3, v4, :cond_5

    if-le v3, v9, :cond_a

    :cond_5
    if-ne p1, v10, :cond_6

    const/16 v4, 0x5a

    if-ge v3, v4, :cond_a

    const/16 v4, 0x45

    if-eq v3, v4, :cond_a

    :cond_6
    const/16 v4, 0x38

    if-ne p1, v4, :cond_8

    const/16 v4, 0xa

    if-lt v3, v4, :cond_a

    const/16 v4, 0x11

    if-eq v3, v4, :cond_a

    const/16 v4, 0x19

    if-lt v3, v4, :cond_7

    const/16 v4, 0x1c

    if-le v3, v4, :cond_a

    :cond_7
    const/16 v4, 0x2c

    if-eq v3, v4, :cond_a

    const/16 v4, 0x35

    if-eq v3, v4, :cond_a

    const/16 v4, 0x5a

    if-ge v3, v4, :cond_a

    :cond_8
    const/16 v4, 0x39

    if-ne p2, v4, :cond_0

    const/16 v4, 0xa

    if-lt v3, v4, :cond_a

    const/16 v4, 0x17

    if-eq v3, v4, :cond_a

    if-eq v3, v6, :cond_a

    if-lt v3, v7, :cond_9

    const/16 v4, 0x3e

    if-le v3, v4, :cond_a

    :cond_9
    const/16 v4, 0x43

    if-eq v3, v4, :cond_a

    const/16 v4, 0x44

    if-eq v3, v4, :cond_a

    const/16 v4, 0x46

    if-lt v3, v4, :cond_0

    .line 1727
    :cond_a
    const/4 v1, 0x0

    goto :goto_0

    .line 1729
    :cond_b
    if-ne p0, v10, :cond_0

    .line 1731
    if-eq p1, v8, :cond_1e

    if-ne p1, v7, :cond_e

    if-eqz v3, :cond_1e

    const/4 v4, 0x4

    if-lt v3, v4, :cond_c

    const/16 v4, 0x9

    if-le v3, v4, :cond_1e

    :cond_c
    if-eq v3, v7, :cond_1e

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x4b

    if-lt v3, v4, :cond_d

    const/16 v4, 0x4e

    if-le v3, v4, :cond_1e

    :cond_d
    const/16 v4, 0x5d

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1e

    :cond_e
    const/16 v4, 0x33

    if-ne p1, v4, :cond_f

    const/16 v4, 0x49

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x4c

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x60

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x62

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x63

    if-eq v3, v4, :cond_1e

    :cond_f
    const/16 v4, 0x34

    if-ne p1, v4, :cond_11

    const/16 v4, 0xa

    if-lt v3, v4, :cond_1e

    const/16 v4, 0xb

    if-eq v3, v4, :cond_1e

    const/16 v4, 0xf

    if-lt v3, v4, :cond_10

    const/16 v4, 0x13

    if-le v3, v4, :cond_1e

    :cond_10
    const/16 v4, 0x1c

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x1d

    if-eq v3, v4, :cond_1e

    if-eq v3, v6, :cond_1e

    const/16 v4, 0x53

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x58

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x59

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x62

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x63

    if-eq v3, v4, :cond_1e

    :cond_11
    const/16 v4, 0x35

    if-ne p1, v4, :cond_14

    const/4 v4, 0x4

    if-le v3, v4, :cond_1e

    if-eq v3, v9, :cond_1e

    if-eq v3, v7, :cond_1e

    const/16 v4, 0x42

    if-lt v3, v4, :cond_12

    const/16 v4, 0x45

    if-le v3, v4, :cond_1e

    :cond_12
    const/16 v4, 0x4f

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x57

    if-lt v3, v4, :cond_13

    const/16 v4, 0x59

    if-le v3, v4, :cond_1e

    :cond_13
    const/16 v4, 0x61

    if-ge v3, v4, :cond_1e

    :cond_14
    const/16 v4, 0x36

    if-ne p1, v4, :cond_17

    if-eqz v3, :cond_1e

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1e

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x14

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x1f

    if-eq v3, v4, :cond_1e

    if-eq v3, v6, :cond_1e

    const/16 v4, 0x36

    if-eq v3, v4, :cond_1e

    if-eq v3, v10, :cond_1e

    const/16 v4, 0x41

    if-lt v3, v4, :cond_15

    const/16 v4, 0x45

    if-le v3, v4, :cond_1e

    :cond_15
    const/16 v4, 0x4c

    if-lt v3, v4, :cond_16

    const/16 v4, 0x4f

    if-le v3, v4, :cond_1e

    :cond_16
    const/16 v4, 0x60

    if-ge v3, v4, :cond_1e

    :cond_17
    if-ne p1, v10, :cond_19

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x23

    if-lt v3, v4, :cond_18

    if-le v3, v6, :cond_1e

    :cond_18
    const/16 v4, 0x2a

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x5f

    if-ge v3, v4, :cond_1e

    :cond_19
    const/16 v4, 0x38

    if-ne p1, v4, :cond_1c

    if-gt v3, v6, :cond_1c

    if-eqz v3, :cond_1e

    const/4 v4, 0x7

    if-lt v3, v4, :cond_1a

    const/16 v4, 0x9

    if-le v3, v4, :cond_1e

    :cond_1a
    const/16 v4, 0xe

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x1b

    if-lt v3, v4, :cond_1b

    const/16 v4, 0x1e

    if-le v3, v4, :cond_1e

    :cond_1b
    const/16 v4, 0x25

    if-lt v3, v4, :cond_1c

    if-le v3, v6, :cond_1e

    :cond_1c
    const/16 v4, 0x38

    if-ne p1, v4, :cond_0

    if-le v3, v6, :cond_0

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x45

    if-lt v3, v4, :cond_1d

    const/16 v4, 0x4f

    if-le v3, v4, :cond_1e

    :cond_1d
    const/16 v4, 0x5a

    if-lt v3, v4, :cond_0

    .line 1740
    :cond_1e
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1746
    :cond_1f
    if-ne p0, v9, :cond_20

    if-eq p1, v9, :cond_25

    :cond_20
    if-ne p0, v7, :cond_21

    if-eq p1, v8, :cond_25

    if-eq p1, v7, :cond_25

    :cond_21
    const/16 v4, 0x33

    if-ne p0, v4, :cond_22

    const/16 v4, 0x33

    if-eq p1, v4, :cond_25

    :cond_22
    const/16 v4, 0x34

    if-ne p0, v4, :cond_23

    if-eq p1, v8, :cond_25

    const/16 v4, 0x34

    if-eq p1, v4, :cond_25

    :cond_23
    if-ne p0, v10, :cond_24

    const/16 v4, 0x39

    if-eq p1, v4, :cond_25

    :cond_24
    const/16 v4, 0x38

    if-ne p0, v4, :cond_26

    if-ne p1, v8, :cond_26

    .line 1752
    :cond_25
    const/4 v1, 0x2

    :goto_2
    move v2, v1

    .line 1761
    .end local v1           #result:I
    .restart local v2       #result:I
    goto/16 :goto_1

    .line 1754
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_26
    add-int/lit8 v4, p0, -0x30

    mul-int/lit8 v4, v4, 0x64

    add-int/lit8 v5, p1, -0x30

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    add-int/lit8 v5, p2, -0x30

    add-int v0, v4, v5

    .line 1755
    .local v0, key:I
    sget-object v4, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->INDIA_THREE_DIGIG_AREA_CODES:[I

    invoke-static {v4, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    if-ltz v4, :cond_27

    .line 1756
    const/4 v1, 0x3

    goto :goto_2

    .line 1758
    :cond_27
    const/4 v1, 0x4

    goto :goto_2
.end method

.method static checkInputNormalNumber(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "text"

    .prologue
    .line 392
    const/4 v2, 0x1

    .line 394
    .local v2, result:Z
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 395
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 396
    .local v0, c:C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_0

    const/16 v3, 0x39

    if-le v0, v3, :cond_2

    :cond_0
    const/16 v3, 0x2a

    if-eq v0, v3, :cond_2

    const/16 v3, 0x23

    if-eq v0, v3, :cond_2

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_2

    const/16 v3, 0x20

    if-eq v0, v3, :cond_2

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_2

    .line 397
    const/4 v2, 0x0

    .line 401
    .end local v0           #c:C
    :cond_1
    return v2

    .line 394
    .restart local v0       #c:C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static formatAustraliaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 11
    .parameter "sb"
    .parameter "blankPosition"

    .prologue
    const/16 v9, 0x30

    .line 1258
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 1262
    .local v3, length:I
    const/4 v8, 0x2

    new-array v0, v8, [I

    .line 1263
    .local v0, dashPositions:[I
    const/4 v4, 0x0

    .line 1264
    .local v4, numDashes:I
    const/4 v8, -0x1

    if-ne p1, v8, :cond_3

    const/4 v6, 0x0

    .line 1266
    .local v6, phoneNumPosition:I
    :goto_0
    if-gtz v6, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_5

    .line 1267
    :cond_0
    move v2, v6

    .line 1268
    .local v2, index:I
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_1

    .line 1269
    add-int/lit8 v2, v2, 0x1

    .line 1272
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0x34

    if-ne v8, v9, :cond_4

    .line 1274
    add-int/lit8 v8, v2, 0x5

    if-le v3, v8, :cond_9

    .line 1275
    add-int/lit8 v5, v4, 0x1

    .end local v4           #numDashes:I
    .local v5, numDashes:I
    add-int/lit8 v8, v2, 0x3

    aput v8, v0, v4

    .line 1278
    :goto_1
    add-int/lit8 v8, v2, 0x8

    if-le v3, v8, :cond_6

    .line 1279
    add-int/lit8 v4, v5, 0x1

    .end local v5           #numDashes:I
    .restart local v4       #numDashes:I
    add-int/lit8 v8, v2, 0x6

    aput v8, v0, v5

    .line 1300
    .end local v2           #index:I
    :cond_2
    :goto_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v4, :cond_7

    .line 1301
    aget v7, v0, v1

    .line 1302
    .local v7, pos:I
    add-int v8, v7, v1

    add-int v9, v7, v1

    const-string v10, "-"

    invoke-virtual {p0, v8, v9, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1264
    .end local v1           #i:I
    .end local v6           #phoneNumPosition:I
    .end local v7           #pos:I
    :cond_3
    add-int/lit8 v6, p1, 0x1

    goto :goto_0

    .line 1283
    .restart local v2       #index:I
    .restart local v6       #phoneNumPosition:I
    :cond_4
    add-int/lit8 v8, v2, 0x4

    if-le v3, v8, :cond_8

    .line 1284
    add-int/lit8 v5, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v5       #numDashes:I
    add-int/lit8 v8, v2, 0x1

    aput v8, v0, v4

    .line 1287
    :goto_4
    add-int/lit8 v8, v2, 0x6

    if-le v3, v8, :cond_6

    .line 1288
    add-int/lit8 v4, v5, 0x1

    .end local v5           #numDashes:I
    .restart local v4       #numDashes:I
    add-int/lit8 v8, v2, 0x5

    aput v8, v0, v5

    goto :goto_2

    .line 1294
    .end local v2           #index:I
    :cond_5
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v3}, Ljava/io/PrintStream;->println(I)V

    .line 1295
    add-int/lit8 v8, v6, 0x8

    if-ne v3, v8, :cond_2

    .line 1296
    add-int/lit8 v5, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v5       #numDashes:I
    add-int/lit8 v8, v6, 0x4

    aput v8, v0, v4

    :cond_6
    move v4, v5

    .end local v5           #numDashes:I
    .restart local v4       #numDashes:I
    goto :goto_2

    .line 1304
    .restart local v1       #i:I
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .end local v1           #i:I
    .restart local v2       #index:I
    :cond_8
    move v5, v4

    .end local v4           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_4

    .end local v5           #numDashes:I
    .restart local v4       #numDashes:I
    :cond_9
    move v5, v4

    .end local v4           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_1
.end method

.method private static formatBrazilNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 11
    .parameter "sb"
    .parameter "blankPosition"

    .prologue
    const/16 v9, 0x30

    .line 1161
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 1165
    .local v3, length:I
    const/4 v8, 0x5

    new-array v0, v8, [I

    .line 1166
    .local v0, dashPositions:[I
    const/4 v4, 0x0

    .line 1167
    .local v4, numDashes:I
    const/4 v8, -0x1

    if-ne p1, v8, :cond_3

    const/4 v6, 0x0

    .line 1169
    .local v6, phoneNumPosition:I
    :goto_0
    if-gtz v6, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_6

    .line 1170
    :cond_0
    move v2, v6

    .line 1171
    .local v2, index:I
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_8

    .line 1172
    add-int/lit8 v5, v4, 0x1

    .end local v4           #numDashes:I
    .local v5, numDashes:I
    add-int/lit8 v8, v6, 0x1

    aput v8, v0, v4

    .line 1173
    add-int/lit8 v2, v2, 0x1

    .line 1175
    :goto_1
    add-int/lit8 v8, v2, 0x3

    if-le v3, v8, :cond_1

    .line 1176
    add-int/lit8 v4, v5, 0x1

    .end local v5           #numDashes:I
    .restart local v4       #numDashes:I
    add-int/lit8 v8, v2, 0x2

    aput v8, v0, v5

    move v5, v4

    .line 1178
    .end local v4           #numDashes:I
    .restart local v5       #numDashes:I
    :cond_1
    add-int/lit8 v8, v2, 0x7

    if-le v3, v8, :cond_4

    add-int/lit8 v8, v2, 0xa

    if-gt v3, v8, :cond_4

    .line 1179
    add-int/lit8 v4, v5, 0x1

    .end local v5           #numDashes:I
    .restart local v4       #numDashes:I
    add-int/lit8 v8, v2, 0x6

    aput v8, v0, v5

    .line 1188
    .end local v2           #index:I
    :cond_2
    :goto_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v4, :cond_7

    .line 1189
    aget v7, v0, v1

    .line 1190
    .local v7, pos:I
    add-int v8, v7, v1

    add-int v9, v7, v1

    const-string v10, "-"

    invoke-virtual {p0, v8, v9, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1167
    .end local v1           #i:I
    .end local v6           #phoneNumPosition:I
    .end local v7           #pos:I
    :cond_3
    add-int/lit8 v6, p1, 0x1

    goto :goto_0

    .line 1180
    .end local v4           #numDashes:I
    .restart local v2       #index:I
    .restart local v5       #numDashes:I
    .restart local v6       #phoneNumPosition:I
    :cond_4
    add-int/lit8 v8, v2, 0xa

    if-le v3, v8, :cond_5

    .line 1181
    add-int/lit8 v4, v5, 0x1

    .end local v5           #numDashes:I
    .restart local v4       #numDashes:I
    add-int/lit8 v8, v2, 0x4

    aput v8, v0, v5

    .line 1182
    add-int/lit8 v5, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v5       #numDashes:I
    add-int/lit8 v8, v2, 0x8

    aput v8, v0, v4

    .end local v2           #index:I
    :cond_5
    :goto_4
    move v4, v5

    .end local v5           #numDashes:I
    .restart local v4       #numDashes:I
    goto :goto_2

    .line 1184
    :cond_6
    add-int/lit8 v8, v6, 0x5

    if-le v3, v8, :cond_2

    .line 1185
    add-int/lit8 v5, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v5       #numDashes:I
    add-int/lit8 v8, v6, 0x4

    aput v8, v0, v4

    goto :goto_4

    .line 1192
    .end local v5           #numDashes:I
    .restart local v1       #i:I
    .restart local v4       #numDashes:I
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .end local v1           #i:I
    .restart local v2       #index:I
    :cond_8
    move v5, v4

    .end local v4           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_1
.end method

.method private static formatChinaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 14
    .parameter "sb"
    .parameter "blankPosition"

    .prologue
    const/16 v13, 0x32

    const/16 v12, 0x31

    const/16 v11, 0x30

    .line 812
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 816
    .local v5, length:I
    const/4 v10, 0x2

    new-array v2, v10, [I

    .line 817
    .local v2, dashPositions:[I
    const/4 v6, 0x0

    .line 818
    .local v6, numDashes:I
    const/4 v10, -0x1

    if-ne p1, v10, :cond_5

    const/4 v8, 0x0

    .line 820
    .local v8, phoneNumPosition:I
    :goto_0
    if-gtz v8, :cond_0

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, v11, :cond_9

    .line 821
    :cond_0
    move v4, v8

    .line 822
    .local v4, index:I
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, v11, :cond_1

    .line 823
    add-int/lit8 v4, v4, 0x1

    .line 825
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 826
    .local v0, c1:C
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 829
    .local v1, c2:C
    if-ne v0, v12, :cond_2

    if-eq v1, v11, :cond_3

    :cond_2
    if-ne v0, v13, :cond_6

    .line 830
    :cond_3
    add-int/lit8 v7, v6, 0x1

    .end local v6           #numDashes:I
    .local v7, numDashes:I
    add-int/lit8 v10, v4, 0x2

    aput v10, v2, v6

    move v6, v7

    .line 873
    .end local v4           #index:I
    .end local v7           #numDashes:I
    .restart local v6       #numDashes:I
    :cond_4
    :goto_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v6, :cond_d

    .line 874
    aget v9, v2, v3

    .line 875
    .local v9, pos:I
    add-int v10, v9, v3

    add-int v11, v9, v3

    const-string v12, "-"

    invoke-virtual {p0, v10, v11, v12}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 818
    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local v3           #i:I
    .end local v8           #phoneNumPosition:I
    .end local v9           #pos:I
    :cond_5
    add-int/lit8 v8, p1, 0x1

    goto :goto_0

    .line 831
    .restart local v0       #c1:C
    .restart local v1       #c2:C
    .restart local v4       #index:I
    .restart local v8       #phoneNumPosition:I
    :cond_6
    if-ne v0, v12, :cond_7

    .line 834
    add-int/lit8 v10, v4, 0x4

    if-le v5, v10, :cond_f

    .line 835
    add-int/lit8 v7, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v7       #numDashes:I
    add-int/lit8 v10, v4, 0x3

    aput v10, v2, v6

    .line 838
    :goto_3
    add-int/lit8 v10, v4, 0x8

    if-le v5, v10, :cond_8

    .line 839
    add-int/lit8 v6, v7, 0x1

    .end local v7           #numDashes:I
    .restart local v6       #numDashes:I
    add-int/lit8 v10, v4, 0x7

    aput v10, v2, v7

    goto :goto_1

    .line 842
    :cond_7
    add-int/lit8 v7, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v7       #numDashes:I
    add-int/lit8 v10, v4, 0x3

    aput v10, v2, v6

    .end local v4           #index:I
    :cond_8
    :goto_4
    move v6, v7

    .end local v7           #numDashes:I
    .restart local v6       #numDashes:I
    goto :goto_1

    .line 845
    .end local v0           #c1:C
    .end local v1           #c2:C
    :cond_9
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 846
    .restart local v0       #c1:C
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 847
    .restart local v1       #c2:C
    if-ne v0, v12, :cond_a

    if-eq v1, v11, :cond_a

    .line 850
    add-int/lit8 v10, v8, 0x4

    if-le v5, v10, :cond_e

    .line 851
    add-int/lit8 v7, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v7       #numDashes:I
    add-int/lit8 v10, v8, 0x3

    aput v10, v2, v6

    .line 854
    :goto_5
    add-int/lit8 v10, v8, 0x8

    if-le v5, v10, :cond_8

    .line 855
    add-int/lit8 v6, v7, 0x1

    .end local v7           #numDashes:I
    .restart local v6       #numDashes:I
    add-int/lit8 v10, v8, 0x7

    aput v10, v2, v7

    goto :goto_1

    .line 857
    :cond_a
    if-ne v0, v12, :cond_b

    if-ne v1, v11, :cond_b

    .line 859
    add-int/lit8 v10, v8, 0x3

    if-le v5, v10, :cond_4

    .line 860
    add-int/lit8 v7, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v7       #numDashes:I
    add-int/lit8 v10, v8, 0x2

    aput v10, v2, v6

    move v6, v7

    .end local v7           #numDashes:I
    .restart local v6       #numDashes:I
    goto :goto_1

    .line 864
    :cond_b
    add-int/lit8 v10, v8, 0x8

    if-le v5, v10, :cond_4

    .line 865
    if-ne v0, v13, :cond_c

    .line 866
    add-int/lit8 v7, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v7       #numDashes:I
    add-int/lit8 v10, v8, 0x2

    aput v10, v2, v6

    move v6, v7

    .end local v7           #numDashes:I
    .restart local v6       #numDashes:I
    goto :goto_1

    .line 868
    :cond_c
    add-int/lit8 v7, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v7       #numDashes:I
    add-int/lit8 v10, v8, 0x3

    aput v10, v2, v6

    goto :goto_4

    .line 877
    .end local v7           #numDashes:I
    .restart local v3       #i:I
    .restart local v6       #numDashes:I
    :cond_d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .end local v3           #i:I
    :cond_e
    move v7, v6

    .end local v6           #numDashes:I
    .restart local v7       #numDashes:I
    goto :goto_5

    .end local v7           #numDashes:I
    .restart local v4       #index:I
    .restart local v6       #numDashes:I
    :cond_f
    move v7, v6

    .end local v6           #numDashes:I
    .restart local v7       #numDashes:I
    goto :goto_3
.end method

.method private static formatEnglandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 20
    .parameter "sb"
    .parameter "blankPosition"

    .prologue
    .line 2284
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    .line 2288
    .local v12, length:I
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v8, v0, [I

    .line 2289
    .local v8, dashPositions:[I
    const/4 v13, 0x0

    .line 2290
    .local v13, numDashes:I
    const/16 v17, -0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    const/4 v15, 0x0

    .line 2291
    .local v15, phoneNumPosition:I
    :goto_0
    if-gtz v15, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v17

    const/16 v18, 0x30

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 2292
    :cond_0
    move v10, v15

    .line 2293
    .local v10, index:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v17

    const/16 v18, 0x30

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 2294
    add-int/lit8 v10, v10, 0x1

    .line 2296
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 2297
    .local v4, c1:C
    add-int/lit8 v17, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    .line 2298
    .local v5, c2:C
    add-int/lit8 v17, v10, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 2300
    .local v6, c3:C
    const/16 v17, 0x37

    move/from16 v0, v17

    if-ne v4, v0, :cond_4

    .line 2302
    add-int/lit8 v17, v10, 0x5

    move/from16 v0, v17

    if-le v12, v0, :cond_2

    .line 2303
    add-int/lit8 v14, v13, 0x1

    .end local v13           #numDashes:I
    .local v14, numDashes:I
    add-int/lit8 v17, v10, 0x4

    aput v17, v8, v13

    move v13, v14

    .line 2362
    .end local v4           #c1:C
    .end local v5           #c2:C
    .end local v6           #c3:C
    .end local v10           #index:I
    .end local v14           #numDashes:I
    .restart local v13       #numDashes:I
    :cond_2
    :goto_1
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    if-ge v9, v13, :cond_f

    .line 2363
    aget v16, v8, v9

    .line 2364
    .local v16, pos:I
    add-int v17, v16, v9

    add-int v18, v16, v9

    const-string v19, "-"

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2362
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2290
    .end local v9           #i:I
    .end local v15           #phoneNumPosition:I
    .end local v16           #pos:I
    :cond_3
    add-int/lit8 v15, p1, 0x1

    goto :goto_0

    .line 2305
    .restart local v4       #c1:C
    .restart local v5       #c2:C
    .restart local v6       #c3:C
    .restart local v10       #index:I
    .restart local v15       #phoneNumPosition:I
    :cond_4
    const/16 v17, 0x32

    move/from16 v0, v17

    if-ne v4, v0, :cond_5

    .line 2307
    add-int/lit8 v14, v13, 0x1

    .end local v13           #numDashes:I
    .restart local v14       #numDashes:I
    add-int/lit8 v17, v10, 0x2

    aput v17, v8, v13

    .line 2309
    add-int/lit8 v17, v10, 0x7

    move/from16 v0, v17

    if-le v12, v0, :cond_9

    .line 2310
    add-int/lit8 v13, v14, 0x1

    .end local v14           #numDashes:I
    .restart local v13       #numDashes:I
    add-int/lit8 v17, v10, 0x6

    aput v17, v8, v14

    goto :goto_1

    .line 2312
    :cond_5
    const/16 v17, 0x31

    move/from16 v0, v17

    if-ne v4, v0, :cond_a

    .line 2313
    add-int/lit8 v17, v10, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    .line 2314
    .local v7, c4:C
    add-int/lit8 v17, v4, -0x30

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    add-int/lit8 v18, v5, -0x30

    mul-int/lit8 v18, v18, 0x64

    add-int v17, v17, v18

    add-int/lit8 v18, v6, -0x30

    mul-int/lit8 v18, v18, 0xa

    add-int v17, v17, v18

    add-int v11, v17, v7

    .line 2315
    .local v11, key:I
    const/16 v17, 0x31

    move/from16 v0, v17

    if-eq v5, v0, :cond_6

    const/16 v17, 0x31

    move/from16 v0, v17

    if-ne v6, v0, :cond_7

    .line 2317
    :cond_6
    add-int/lit8 v17, v10, 0x4

    move/from16 v0, v17

    if-le v12, v0, :cond_11

    .line 2318
    add-int/lit8 v14, v13, 0x1

    .end local v13           #numDashes:I
    .restart local v14       #numDashes:I
    add-int/lit8 v17, v10, 0x3

    aput v17, v8, v13

    .line 2321
    :goto_3
    add-int/lit8 v17, v10, 0x7

    move/from16 v0, v17

    if-le v12, v0, :cond_9

    .line 2322
    add-int/lit8 v13, v14, 0x1

    .end local v14           #numDashes:I
    .restart local v13       #numDashes:I
    add-int/lit8 v17, v10, 0x6

    aput v17, v8, v14

    goto :goto_1

    .line 2324
    :cond_7
    const/16 v17, 0x56b

    move/from16 v0, v17

    if-eq v11, v0, :cond_8

    const/16 v17, 0x603

    move/from16 v0, v17

    if-eq v11, v0, :cond_8

    const/16 v17, 0x6a1

    move/from16 v0, v17

    if-eq v11, v0, :cond_8

    const/16 v17, 0x6e8

    move/from16 v0, v17

    if-eq v11, v0, :cond_8

    const/16 v17, 0x79a

    move/from16 v0, v17

    if-eq v11, v0, :cond_8

    .line 2327
    add-int/lit8 v17, v10, 0x5

    move/from16 v0, v17

    if-le v12, v0, :cond_2

    .line 2328
    add-int/lit8 v14, v13, 0x1

    .end local v13           #numDashes:I
    .restart local v14       #numDashes:I
    add-int/lit8 v17, v10, 0x4

    aput v17, v8, v13

    move v13, v14

    .end local v14           #numDashes:I
    .restart local v13       #numDashes:I
    goto/16 :goto_1

    .line 2332
    :cond_8
    add-int/lit8 v17, v10, 0x6

    move/from16 v0, v17

    if-le v12, v0, :cond_2

    .line 2333
    add-int/lit8 v14, v13, 0x1

    .end local v13           #numDashes:I
    .restart local v14       #numDashes:I
    add-int/lit8 v17, v10, 0x5

    aput v17, v8, v13

    .end local v4           #c1:C
    .end local v5           #c2:C
    .end local v6           #c3:C
    .end local v7           #c4:C
    .end local v10           #index:I
    .end local v11           #key:I
    :cond_9
    :goto_4
    move v13, v14

    .end local v14           #numDashes:I
    .restart local v13       #numDashes:I
    goto/16 :goto_1

    .line 2336
    .restart local v4       #c1:C
    .restart local v5       #c2:C
    .restart local v6       #c3:C
    .restart local v10       #index:I
    :cond_a
    const/16 v17, 0x33

    move/from16 v0, v17

    if-eq v4, v0, :cond_b

    const/16 v17, 0x38

    move/from16 v0, v17

    if-eq v4, v0, :cond_b

    const/16 v17, 0x39

    move/from16 v0, v17

    if-ne v4, v0, :cond_c

    .line 2338
    :cond_b
    add-int/lit8 v17, v10, 0x4

    move/from16 v0, v17

    if-le v12, v0, :cond_10

    .line 2339
    add-int/lit8 v14, v13, 0x1

    .end local v13           #numDashes:I
    .restart local v14       #numDashes:I
    add-int/lit8 v17, v10, 0x3

    aput v17, v8, v13

    .line 2342
    :goto_5
    add-int/lit8 v17, v10, 0x7

    move/from16 v0, v17

    if-le v12, v0, :cond_9

    .line 2343
    add-int/lit8 v13, v14, 0x1

    .end local v14           #numDashes:I
    .restart local v13       #numDashes:I
    add-int/lit8 v17, v10, 0x6

    aput v17, v8, v14

    goto/16 :goto_1

    .line 2348
    :cond_c
    add-int/lit8 v14, v13, 0x1

    .end local v13           #numDashes:I
    .restart local v14       #numDashes:I
    add-int/lit8 v17, v10, 0x2

    aput v17, v8, v13

    .line 2350
    add-int/lit8 v17, v10, 0x7

    move/from16 v0, v17

    if-le v12, v0, :cond_9

    .line 2351
    add-int/lit8 v13, v14, 0x1

    .end local v14           #numDashes:I
    .restart local v13       #numDashes:I
    add-int/lit8 v17, v10, 0x6

    aput v17, v8, v14

    goto/16 :goto_1

    .line 2355
    .end local v4           #c1:C
    .end local v5           #c2:C
    .end local v6           #c3:C
    .end local v10           #index:I
    :cond_d
    add-int/lit8 v17, v15, 0x4

    move/from16 v0, v17

    if-le v12, v0, :cond_e

    add-int/lit8 v17, v15, 0x8

    move/from16 v0, v17

    if-ge v12, v0, :cond_e

    .line 2356
    add-int/lit8 v14, v13, 0x1

    .end local v13           #numDashes:I
    .restart local v14       #numDashes:I
    add-int/lit8 v17, v15, 0x3

    aput v17, v8, v13

    move v13, v14

    .end local v14           #numDashes:I
    .restart local v13       #numDashes:I
    goto/16 :goto_1

    .line 2357
    :cond_e
    add-int/lit8 v17, v15, 0x8

    move/from16 v0, v17

    if-lt v12, v0, :cond_2

    .line 2358
    add-int/lit8 v14, v13, 0x1

    .end local v13           #numDashes:I
    .restart local v14       #numDashes:I
    add-int/lit8 v17, v15, 0x4

    aput v17, v8, v13

    goto :goto_4

    .line 2366
    .end local v14           #numDashes:I
    .restart local v9       #i:I
    .restart local v13       #numDashes:I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    return-object v17

    .end local v9           #i:I
    .restart local v4       #c1:C
    .restart local v5       #c2:C
    .restart local v6       #c3:C
    .restart local v10       #index:I
    :cond_10
    move v14, v13

    .end local v13           #numDashes:I
    .restart local v14       #numDashes:I
    goto :goto_5

    .end local v14           #numDashes:I
    .restart local v7       #c4:C
    .restart local v11       #key:I
    .restart local v13       #numDashes:I
    :cond_11
    move v14, v13

    .end local v13           #numDashes:I
    .restart local v14       #numDashes:I
    goto/16 :goto_3
.end method

.method private static formatFranceNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 12
    .parameter "sb"
    .parameter "blankPosition"

    .prologue
    .line 2207
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 2211
    .local v4, length:I
    const/4 v9, 0x4

    new-array v1, v9, [I

    .line 2212
    .local v1, dashPositions:[I
    const/4 v5, 0x0

    .line 2213
    .local v5, numDashes:I
    const/4 v9, -0x1

    if-ne p1, v9, :cond_7

    const/4 v7, 0x0

    .line 2214
    .local v7, phoneNumPosition:I
    :goto_0
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 2215
    .local v0, c:I
    if-gtz v7, :cond_0

    const/16 v9, 0x30

    if-eq v0, v9, :cond_0

    const/16 v9, 0x34

    if-eq v0, v9, :cond_0

    const/16 v9, 0x35

    if-eq v0, v9, :cond_0

    const/16 v9, 0x37

    if-eq v0, v9, :cond_0

    const/16 v9, 0x39

    if-ne v0, v9, :cond_6

    .line 2216
    :cond_0
    move v3, v7

    .line 2217
    .local v3, index:I
    if-nez v7, :cond_1

    const/16 v9, 0x30

    if-eq v0, v9, :cond_2

    const/16 v9, 0x34

    if-eq v0, v9, :cond_2

    const/16 v9, 0x35

    if-eq v0, v9, :cond_2

    const/16 v9, 0x37

    if-eq v0, v9, :cond_2

    const/16 v9, 0x39

    if-eq v0, v9, :cond_2

    :cond_1
    if-lez v7, :cond_3

    const/16 v9, 0x30

    if-ne v0, v9, :cond_3

    .line 2218
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 2221
    :cond_3
    add-int/lit8 v6, v5, 0x1

    .end local v5           #numDashes:I
    .local v6, numDashes:I
    add-int/lit8 v9, v3, 0x1

    aput v9, v1, v5

    .line 2223
    add-int/lit8 v9, v3, 0x4

    if-le v4, v9, :cond_4

    .line 2224
    add-int/lit8 v5, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    add-int/lit8 v9, v3, 0x3

    aput v9, v1, v6

    move v6, v5

    .line 2227
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :cond_4
    add-int/lit8 v9, v3, 0x6

    if-le v4, v9, :cond_5

    .line 2228
    add-int/lit8 v5, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    add-int/lit8 v9, v3, 0x5

    aput v9, v1, v6

    move v6, v5

    .line 2231
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :cond_5
    add-int/lit8 v9, v3, 0x8

    if-le v4, v9, :cond_9

    .line 2232
    add-int/lit8 v5, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    add-int/lit8 v9, v3, 0x7

    aput v9, v1, v6

    .line 2236
    .end local v3           #index:I
    :cond_6
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v5, :cond_8

    .line 2237
    aget v8, v1, v2

    .line 2238
    .local v8, pos:I
    add-int v9, v8, v2

    add-int v10, v8, v2

    const-string v11, "-"

    invoke-virtual {p0, v9, v10, v11}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2236
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2213
    .end local v0           #c:I
    .end local v2           #i:I
    .end local v7           #phoneNumPosition:I
    .end local v8           #pos:I
    :cond_7
    add-int/lit8 v7, p1, 0x1

    goto :goto_0

    .line 2240
    .restart local v0       #c:I
    .restart local v2       #i:I
    .restart local v7       #phoneNumPosition:I
    :cond_8
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .end local v2           #i:I
    .end local v5           #numDashes:I
    .restart local v3       #index:I
    .restart local v6       #numDashes:I
    :cond_9
    move v5, v6

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_1
.end method

.method private static formatGermanyNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 21
    .parameter "sb"
    .parameter "blankPosition"

    .prologue
    .line 1984
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    .line 1988
    .local v13, length:I
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v8, v0, [I

    .line 1989
    .local v8, dashPositions:[I
    const/4 v14, 0x0

    .line 1990
    .local v14, numDashes:I
    const/16 v18, -0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v16, 0x0

    .line 1992
    .local v16, phoneNumPosition:I
    :goto_0
    if-gtz v16, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v18

    const/16 v19, 0x30

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 1993
    :cond_0
    move/from16 v10, v16

    .line 1994
    .local v10, index:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v18

    const/16 v19, 0x30

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 1995
    add-int/lit8 v10, v10, 0x1

    .line 1997
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 1998
    .local v4, c1:C
    add-int/lit8 v18, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    .line 2000
    .local v5, c2:C
    const/16 v18, 0x31

    move/from16 v0, v18

    if-ne v4, v0, :cond_5

    .line 2002
    add-int/lit8 v18, v10, 0x4

    move/from16 v0, v18

    if-le v13, v0, :cond_16

    .line 2003
    add-int/lit8 v15, v14, 0x1

    .end local v14           #numDashes:I
    .local v15, numDashes:I
    add-int/lit8 v18, v10, 0x3

    aput v18, v8, v14

    .line 2006
    :goto_1
    const/16 v18, 0x35

    move/from16 v0, v18

    if-eq v5, v0, :cond_2

    const/16 v18, 0x36

    move/from16 v0, v18

    if-eq v5, v0, :cond_2

    const/16 v18, 0x37

    move/from16 v0, v18

    if-ne v5, v0, :cond_10

    .line 2008
    :cond_2
    add-int/lit8 v18, v10, 0xa

    move/from16 v0, v18

    if-le v13, v0, :cond_10

    .line 2009
    add-int/lit8 v14, v15, 0x1

    .end local v15           #numDashes:I
    .restart local v14       #numDashes:I
    add-int/lit8 v18, v10, 0x9

    aput v18, v8, v15

    .line 2064
    .end local v4           #c1:C
    .end local v5           #c2:C
    .end local v10           #index:I
    :cond_3
    :goto_2
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    if-ge v9, v14, :cond_11

    .line 2065
    aget v17, v8, v9

    .line 2066
    .local v17, pos:I
    add-int v18, v17, v9

    add-int v19, v17, v9

    const-string v20, "-"

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2064
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1990
    .end local v9           #i:I
    .end local v16           #phoneNumPosition:I
    .end local v17           #pos:I
    :cond_4
    add-int/lit8 v16, p1, 0x1

    goto/16 :goto_0

    .line 2013
    .restart local v4       #c1:C
    .restart local v5       #c2:C
    .restart local v10       #index:I
    .restart local v16       #phoneNumPosition:I
    :cond_5
    const/16 v18, 0x33

    move/from16 v0, v18

    if-ne v4, v0, :cond_6

    const/16 v18, 0x30

    move/from16 v0, v18

    if-eq v5, v0, :cond_9

    :cond_6
    const/16 v18, 0x34

    move/from16 v0, v18

    if-ne v4, v0, :cond_7

    const/16 v18, 0x30

    move/from16 v0, v18

    if-eq v5, v0, :cond_9

    :cond_7
    const/16 v18, 0x36

    move/from16 v0, v18

    if-ne v4, v0, :cond_8

    const/16 v18, 0x39

    move/from16 v0, v18

    if-eq v5, v0, :cond_9

    :cond_8
    const/16 v18, 0x38

    move/from16 v0, v18

    if-ne v4, v0, :cond_a

    const/16 v18, 0x39

    move/from16 v0, v18

    if-ne v5, v0, :cond_a

    .line 2016
    :cond_9
    add-int/lit8 v18, v10, 0x4

    move/from16 v0, v18

    if-le v13, v0, :cond_15

    .line 2017
    add-int/lit8 v15, v14, 0x1

    .end local v14           #numDashes:I
    .restart local v15       #numDashes:I
    add-int/lit8 v18, v10, 0x2

    aput v18, v8, v14

    .line 2020
    :goto_4
    add-int/lit8 v18, v10, 0x6

    move/from16 v0, v18

    if-le v13, v0, :cond_10

    .line 2021
    add-int/lit8 v14, v15, 0x1

    .end local v15           #numDashes:I
    .restart local v14       #numDashes:I
    add-int/lit8 v18, v10, 0x5

    aput v18, v8, v15

    goto :goto_2

    .line 2023
    :cond_a
    add-int/lit8 v18, v10, 0x3

    move/from16 v0, v18

    if-le v13, v0, :cond_3

    .line 2024
    add-int/lit8 v18, v10, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 2025
    .local v6, c3:C
    add-int/lit8 v18, v10, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    .line 2026
    .local v7, c4:C
    add-int/lit8 v18, v4, -0x30

    mul-int/lit8 v18, v18, 0x64

    add-int/lit8 v19, v5, -0x30

    mul-int/lit8 v19, v19, 0xa

    add-int v18, v18, v19

    add-int/lit8 v19, v6, -0x30

    add-int v11, v18, v19

    .line 2027
    .local v11, key3:I
    mul-int/lit8 v18, v11, 0xa

    add-int/lit8 v19, v7, -0x30

    add-int v12, v18, v19

    .line 2029
    .local v12, key4:I
    const/16 v18, 0x31

    move/from16 v0, v18

    if-eq v6, v0, :cond_b

    sget-object v18, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->Germany_THREE_PART_REGION_CODES:[I

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v18

    if-ltz v18, :cond_c

    const/16 v18, 0xd4

    move/from16 v0, v18

    if-ne v11, v0, :cond_b

    const/16 v18, 0xd4

    move/from16 v0, v18

    if-ne v11, v0, :cond_c

    const/16 v18, 0x39

    move/from16 v0, v18

    if-eq v7, v0, :cond_c

    .line 2031
    :cond_b
    add-int/lit8 v18, v10, 0x4

    move/from16 v0, v18

    if-le v13, v0, :cond_14

    .line 2032
    add-int/lit8 v15, v14, 0x1

    .end local v14           #numDashes:I
    .restart local v15       #numDashes:I
    add-int/lit8 v18, v10, 0x3

    aput v18, v8, v14

    .line 2035
    :goto_5
    add-int/lit8 v18, v10, 0x7

    move/from16 v0, v18

    if-le v13, v0, :cond_10

    .line 2036
    add-int/lit8 v14, v15, 0x1

    .end local v15           #numDashes:I
    .restart local v14       #numDashes:I
    add-int/lit8 v18, v10, 0x6

    aput v18, v8, v15

    goto/16 :goto_2

    .line 2039
    :cond_c
    const/16 v18, 0x33

    move/from16 v0, v18

    if-ne v4, v0, :cond_d

    const/16 v18, 0x33

    move/from16 v0, v18

    if-ne v4, v0, :cond_e

    sget-object v18, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->Germany_FOUR_PART_REGION_CODES:[I

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v18

    if-ltz v18, :cond_e

    .line 2041
    :cond_d
    add-int/lit8 v18, v10, 0x5

    move/from16 v0, v18

    if-le v13, v0, :cond_13

    .line 2042
    add-int/lit8 v15, v14, 0x1

    .end local v14           #numDashes:I
    .restart local v15       #numDashes:I
    add-int/lit8 v18, v10, 0x4

    aput v18, v8, v14

    .line 2045
    :goto_6
    add-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    if-le v13, v0, :cond_10

    .line 2046
    add-int/lit8 v14, v15, 0x1

    .end local v15           #numDashes:I
    .restart local v14       #numDashes:I
    add-int/lit8 v18, v10, 0x7

    aput v18, v8, v15

    goto/16 :goto_2

    .line 2051
    :cond_e
    add-int/lit8 v18, v10, 0x6

    move/from16 v0, v18

    if-le v13, v0, :cond_12

    .line 2052
    add-int/lit8 v15, v14, 0x1

    .end local v14           #numDashes:I
    .restart local v15       #numDashes:I
    add-int/lit8 v18, v10, 0x5

    aput v18, v8, v14

    .line 2055
    :goto_7
    add-int/lit8 v18, v10, 0x9

    move/from16 v0, v18

    if-le v13, v0, :cond_10

    .line 2056
    add-int/lit8 v14, v15, 0x1

    .end local v15           #numDashes:I
    .restart local v14       #numDashes:I
    add-int/lit8 v18, v10, 0x8

    aput v18, v8, v15

    goto/16 :goto_2

    .line 2060
    .end local v4           #c1:C
    .end local v5           #c2:C
    .end local v6           #c3:C
    .end local v7           #c4:C
    .end local v10           #index:I
    .end local v11           #key3:I
    .end local v12           #key4:I
    :cond_f
    add-int/lit8 v18, v16, 0x6

    move/from16 v0, v18

    if-lt v13, v0, :cond_3

    add-int/lit8 v18, v16, 0x8

    move/from16 v0, v18

    if-gt v13, v0, :cond_3

    .line 2061
    add-int/lit8 v15, v14, 0x1

    .end local v14           #numDashes:I
    .restart local v15       #numDashes:I
    add-int/lit8 v18, v16, 0x3

    aput v18, v8, v14

    :cond_10
    move v14, v15

    .end local v15           #numDashes:I
    .restart local v14       #numDashes:I
    goto/16 :goto_2

    .line 2068
    .restart local v9       #i:I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18

    .end local v9           #i:I
    .restart local v4       #c1:C
    .restart local v5       #c2:C
    .restart local v6       #c3:C
    .restart local v7       #c4:C
    .restart local v10       #index:I
    .restart local v11       #key3:I
    .restart local v12       #key4:I
    :cond_12
    move v15, v14

    .end local v14           #numDashes:I
    .restart local v15       #numDashes:I
    goto :goto_7

    .end local v15           #numDashes:I
    .restart local v14       #numDashes:I
    :cond_13
    move v15, v14

    .end local v14           #numDashes:I
    .restart local v15       #numDashes:I
    goto :goto_6

    .end local v15           #numDashes:I
    .restart local v14       #numDashes:I
    :cond_14
    move v15, v14

    .end local v14           #numDashes:I
    .restart local v15       #numDashes:I
    goto :goto_5

    .end local v6           #c3:C
    .end local v7           #c4:C
    .end local v11           #key3:I
    .end local v12           #key4:I
    .end local v15           #numDashes:I
    .restart local v14       #numDashes:I
    :cond_15
    move v15, v14

    .end local v14           #numDashes:I
    .restart local v15       #numDashes:I
    goto/16 :goto_4

    .end local v15           #numDashes:I
    .restart local v14       #numDashes:I
    :cond_16
    move v15, v14

    .end local v14           #numDashes:I
    .restart local v15       #numDashes:I
    goto/16 :goto_1
.end method

.method private static formatHeightLengthWithoutRegionCodeNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 9
    .parameter "sb"
    .parameter "blankPosition"

    .prologue
    .line 1020
    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 1021
    .local v0, dashPositions:[I
    const/4 v2, 0x0

    .line 1023
    .local v2, numDashes:I
    const/4 v6, -0x1

    if-ne p1, v6, :cond_1

    const/4 v4, 0x0

    .line 1025
    .local v4, phoneNumPosition:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v7, v4, 0x6

    if-lt v6, v7, :cond_0

    .line 1026
    add-int/lit8 v3, v2, 0x1

    .end local v2           #numDashes:I
    .local v3, numDashes:I
    add-int/lit8 v6, v4, 0x4

    aput v6, v0, v2

    move v2, v3

    .line 1028
    .end local v3           #numDashes:I
    .restart local v2       #numDashes:I
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1029
    aget v5, v0, v1

    .line 1030
    .local v5, pos:I
    add-int v6, v5, v1

    add-int v7, v5, v1

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1023
    .end local v1           #i:I
    .end local v4           #phoneNumPosition:I
    .end local v5           #pos:I
    :cond_1
    add-int/lit8 v4, p1, 0x1

    goto :goto_0

    .line 1032
    .restart local v1       #i:I
    .restart local v4       #phoneNumPosition:I
    :cond_2
    invoke-static {p0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->removeTrailingDashes(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static formatIndiaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 21
    .parameter "sb"
    .parameter "blankPosition"

    .prologue
    .line 1786
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    .line 1790
    .local v12, length:I
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v9, v0, [I

    .line 1791
    .local v9, dashPositions:[I
    const/4 v13, 0x0

    .line 1792
    .local v13, numDashes:I
    const/16 v18, -0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/4 v15, 0x0

    .line 1795
    .local v15, phoneNumPosition:I
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 1796
    .local v4, c:C
    if-lez v15, :cond_0

    const/16 v18, 0x30

    move/from16 v0, v18

    if-ne v4, v0, :cond_1

    :cond_0
    const/16 v18, 0x30

    move/from16 v0, v18

    if-ne v4, v0, :cond_9

    add-int/lit8 v18, v15, 0x4

    move/from16 v0, v18

    if-le v12, v0, :cond_9

    .line 1798
    :cond_1
    move v11, v15

    .line 1799
    .local v11, index:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v18

    const/16 v19, 0x30

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 1800
    add-int/lit8 v11, v11, 0x1

    .line 1802
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    .line 1803
    .local v5, c1:C
    add-int/lit8 v18, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 1804
    .local v6, c2:C
    add-int/lit8 v18, v11, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    .line 1805
    .local v7, c3:C
    add-int/lit8 v18, v11, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    .line 1807
    .local v8, c4:C
    invoke-static {v5, v6, v7, v8}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->checkIndiaNumber(CCCC)I

    move-result v17

    .line 1809
    .local v17, type:I
    if-nez v17, :cond_5

    .line 1810
    add-int/lit8 v14, v13, 0x1

    .end local v13           #numDashes:I
    .local v14, numDashes:I
    add-int/lit8 v18, v11, 0x2

    aput v18, v9, v13

    .line 1812
    add-int/lit8 v18, v11, 0x7

    move/from16 v0, v18

    if-le v12, v0, :cond_8

    .line 1813
    add-int/lit8 v13, v14, 0x1

    .end local v14           #numDashes:I
    .restart local v13       #numDashes:I
    add-int/lit8 v18, v11, 0x4

    aput v18, v9, v14

    .line 1833
    .end local v5           #c1:C
    .end local v6           #c2:C
    .end local v7           #c3:C
    .end local v8           #c4:C
    .end local v11           #index:I
    .end local v17           #type:I
    :cond_3
    :goto_1
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    if-ge v10, v13, :cond_a

    .line 1834
    aget v16, v9, v10

    .line 1835
    .local v16, pos:I
    add-int v18, v16, v10

    add-int v19, v16, v10

    const-string v20, "-"

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1833
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1792
    .end local v4           #c:C
    .end local v10           #i:I
    .end local v15           #phoneNumPosition:I
    .end local v16           #pos:I
    :cond_4
    add-int/lit8 v15, p1, 0x1

    goto/16 :goto_0

    .line 1815
    .restart local v4       #c:C
    .restart local v5       #c1:C
    .restart local v6       #c2:C
    .restart local v7       #c3:C
    .restart local v8       #c4:C
    .restart local v11       #index:I
    .restart local v15       #phoneNumPosition:I
    .restart local v17       #type:I
    :cond_5
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 1817
    add-int/lit8 v14, v13, 0x1

    .end local v13           #numDashes:I
    .restart local v14       #numDashes:I
    add-int/lit8 v18, v11, 0x2

    aput v18, v9, v13

    move v13, v14

    .end local v14           #numDashes:I
    .restart local v13       #numDashes:I
    goto :goto_1

    .line 1818
    :cond_6
    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1820
    add-int/lit8 v14, v13, 0x1

    .end local v13           #numDashes:I
    .restart local v14       #numDashes:I
    add-int/lit8 v18, v11, 0x3

    aput v18, v9, v13

    move v13, v14

    .end local v14           #numDashes:I
    .restart local v13       #numDashes:I
    goto :goto_1

    .line 1823
    :cond_7
    add-int/lit8 v18, v11, 0x5

    move/from16 v0, v18

    if-le v12, v0, :cond_3

    .line 1824
    add-int/lit8 v14, v13, 0x1

    .end local v13           #numDashes:I
    .restart local v14       #numDashes:I
    add-int/lit8 v18, v11, 0x4

    aput v18, v9, v13

    :cond_8
    move v13, v14

    .end local v14           #numDashes:I
    .restart local v13       #numDashes:I
    goto :goto_1

    .line 1827
    .end local v5           #c1:C
    .end local v6           #c2:C
    .end local v7           #c3:C
    .end local v8           #c4:C
    .end local v11           #index:I
    .end local v17           #type:I
    :cond_9
    add-int/lit8 v18, v15, 0x8

    move/from16 v0, v18

    if-le v12, v0, :cond_3

    .line 1829
    add-int/lit8 v14, v13, 0x1

    .end local v13           #numDashes:I
    .restart local v14       #numDashes:I
    add-int/lit8 v18, v15, 0x2

    aput v18, v9, v13

    .line 1830
    add-int/lit8 v13, v14, 0x1

    .end local v14           #numDashes:I
    .restart local v13       #numDashes:I
    add-int/lit8 v18, v15, 0x4

    aput v18, v9, v14

    goto :goto_1

    .line 1837
    .restart local v10       #i:I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18
.end method

.method private static formatIndonesiaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 14
    .parameter "sb"
    .parameter "blankPosition"

    .prologue
    .line 1474
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 1478
    .local v6, length:I
    const/4 v11, 0x2

    new-array v3, v11, [I

    .line 1479
    .local v3, dashPositions:[I
    const/4 v7, 0x0

    .line 1480
    .local v7, numDashes:I
    const/4 v11, -0x1

    if-ne p1, v11, :cond_4

    const/4 v9, 0x0

    .line 1482
    .local v9, phoneNumPosition:I
    :goto_0
    if-gtz v9, :cond_0

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    if-ne v11, v12, :cond_a

    .line 1483
    :cond_0
    move v5, v9

    .line 1484
    .local v5, index:I
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    if-ne v11, v12, :cond_1

    .line 1485
    add-int/lit8 v5, v5, 0x1

    .line 1487
    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 1488
    .local v0, c1:C
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 1489
    .local v1, c2:C
    add-int/lit8 v11, v5, 0x2

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 1491
    .local v2, c3:C
    const/16 v11, 0x38

    if-ne v0, v11, :cond_5

    .line 1493
    add-int/lit8 v11, v5, 0x5

    if-le v6, v11, :cond_12

    .line 1494
    add-int/lit8 v8, v7, 0x1

    .end local v7           #numDashes:I
    .local v8, numDashes:I
    add-int/lit8 v11, v5, 0x3

    aput v11, v3, v7

    .line 1497
    :goto_1
    add-int/lit8 v11, v5, 0x8

    if-lt v6, v11, :cond_2

    add-int/lit8 v11, v5, 0xa

    if-gt v6, v11, :cond_2

    .line 1498
    add-int/lit8 v7, v8, 0x1

    .end local v8           #numDashes:I
    .restart local v7       #numDashes:I
    add-int/lit8 v11, v5, 0x6

    aput v11, v3, v8

    move v8, v7

    .line 1501
    .end local v7           #numDashes:I
    .restart local v8       #numDashes:I
    :cond_2
    add-int/lit8 v11, v5, 0xa

    if-le v6, v11, :cond_f

    .line 1502
    add-int/lit8 v7, v8, 0x1

    .end local v8           #numDashes:I
    .restart local v7       #numDashes:I
    add-int/lit8 v11, v5, 0x7

    aput v11, v3, v8

    .line 1545
    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local v2           #c3:C
    .end local v5           #index:I
    :cond_3
    :goto_2
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v7, :cond_e

    .line 1546
    aget v10, v3, v4

    .line 1547
    .local v10, pos:I
    add-int v11, v10, v4

    add-int v12, v10, v4

    const-string v13, "-"

    invoke-virtual {p0, v11, v12, v13}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1480
    .end local v4           #i:I
    .end local v9           #phoneNumPosition:I
    .end local v10           #pos:I
    :cond_4
    add-int/lit8 v9, p1, 0x1

    goto :goto_0

    .line 1504
    .restart local v0       #c1:C
    .restart local v1       #c2:C
    .restart local v2       #c3:C
    .restart local v5       #index:I
    .restart local v9       #phoneNumPosition:I
    :cond_5
    const/16 v11, 0x32

    if-ne v0, v11, :cond_6

    const/16 v11, 0x31

    if-eq v1, v11, :cond_8

    const/16 v11, 0x32

    if-eq v1, v11, :cond_8

    const/16 v11, 0x34

    if-eq v1, v11, :cond_8

    :cond_6
    const/16 v11, 0x33

    if-ne v0, v11, :cond_7

    const/16 v11, 0x31

    if-eq v1, v11, :cond_8

    :cond_7
    const/16 v11, 0x36

    if-ne v0, v11, :cond_9

    const/16 v11, 0x31

    if-ne v1, v11, :cond_9

    const/16 v11, 0x39

    if-eq v2, v11, :cond_9

    .line 1509
    :cond_8
    add-int/lit8 v11, v5, 0x3

    if-le v6, v11, :cond_11

    .line 1510
    add-int/lit8 v8, v7, 0x1

    .end local v7           #numDashes:I
    .restart local v8       #numDashes:I
    add-int/lit8 v11, v5, 0x2

    aput v11, v3, v7

    .line 1513
    :goto_4
    add-int/lit8 v11, v5, 0x7

    if-le v6, v11, :cond_f

    .line 1514
    add-int/lit8 v7, v8, 0x1

    .end local v8           #numDashes:I
    .restart local v7       #numDashes:I
    add-int/lit8 v11, v5, 0x6

    aput v11, v3, v8

    goto :goto_2

    .line 1519
    :cond_9
    add-int/lit8 v11, v5, 0x4

    if-le v6, v11, :cond_10

    .line 1520
    add-int/lit8 v8, v7, 0x1

    .end local v7           #numDashes:I
    .restart local v8       #numDashes:I
    add-int/lit8 v11, v5, 0x3

    aput v11, v3, v7

    .line 1523
    :goto_5
    add-int/lit8 v11, v5, 0x7

    if-le v6, v11, :cond_f

    .line 1524
    add-int/lit8 v7, v8, 0x1

    .end local v8           #numDashes:I
    .restart local v7       #numDashes:I
    add-int/lit8 v11, v5, 0x6

    aput v11, v3, v8

    goto :goto_2

    .line 1529
    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local v2           #c3:C
    .end local v5           #index:I
    :cond_a
    add-int/lit8 v11, v9, 0x7

    if-ne v6, v11, :cond_b

    .line 1530
    add-int/lit8 v8, v7, 0x1

    .end local v7           #numDashes:I
    .restart local v8       #numDashes:I
    add-int/lit8 v11, v9, 0x3

    aput v11, v3, v7

    move v7, v8

    .end local v8           #numDashes:I
    .restart local v7       #numDashes:I
    goto :goto_2

    .line 1531
    :cond_b
    add-int/lit8 v11, v9, 0x8

    if-ne v6, v11, :cond_c

    .line 1533
    add-int/lit8 v8, v7, 0x1

    .end local v7           #numDashes:I
    .restart local v8       #numDashes:I
    add-int/lit8 v11, v9, 0x4

    aput v11, v3, v7

    move v7, v8

    .end local v8           #numDashes:I
    .restart local v7       #numDashes:I
    goto :goto_2

    .line 1534
    :cond_c
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    const/16 v12, 0x38

    if-ne v11, v12, :cond_3

    .line 1535
    add-int/lit8 v11, v9, 0x8

    if-le v6, v11, :cond_d

    add-int/lit8 v11, v9, 0xa

    if-gt v6, v11, :cond_d

    .line 1536
    add-int/lit8 v8, v7, 0x1

    .end local v7           #numDashes:I
    .restart local v8       #numDashes:I
    add-int/lit8 v11, v9, 0x3

    aput v11, v3, v7

    .line 1537
    add-int/lit8 v7, v8, 0x1

    .end local v8           #numDashes:I
    .restart local v7       #numDashes:I
    add-int/lit8 v11, v9, 0x6

    aput v11, v3, v8

    goto/16 :goto_2

    .line 1538
    :cond_d
    add-int/lit8 v11, v9, 0xa

    if-le v6, v11, :cond_3

    .line 1539
    add-int/lit8 v8, v7, 0x1

    .end local v7           #numDashes:I
    .restart local v8       #numDashes:I
    add-int/lit8 v11, v9, 0x3

    aput v11, v3, v7

    .line 1540
    add-int/lit8 v7, v8, 0x1

    .end local v8           #numDashes:I
    .restart local v7       #numDashes:I
    add-int/lit8 v11, v9, 0x7

    aput v11, v3, v8

    goto/16 :goto_2

    .line 1549
    .restart local v4       #i:I
    :cond_e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .end local v4           #i:I
    .end local v7           #numDashes:I
    .restart local v0       #c1:C
    .restart local v1       #c2:C
    .restart local v2       #c3:C
    .restart local v5       #index:I
    .restart local v8       #numDashes:I
    :cond_f
    move v7, v8

    .end local v8           #numDashes:I
    .restart local v7       #numDashes:I
    goto/16 :goto_2

    :cond_10
    move v8, v7

    .end local v7           #numDashes:I
    .restart local v8       #numDashes:I
    goto :goto_5

    .end local v8           #numDashes:I
    .restart local v7       #numDashes:I
    :cond_11
    move v8, v7

    .end local v7           #numDashes:I
    .restart local v8       #numDashes:I
    goto :goto_4

    .end local v8           #numDashes:I
    .restart local v7       #numDashes:I
    :cond_12
    move v8, v7

    .end local v7           #numDashes:I
    .restart local v8       #numDashes:I
    goto/16 :goto_1
.end method

.method private static formatItalyNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 16
    .parameter "sb"
    .parameter "blankPosition"

    .prologue
    .line 2108
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    .line 2112
    .local v8, length:I
    const/4 v13, 0x2

    new-array v4, v13, [I

    .line 2113
    .local v4, dashPositions:[I
    const/4 v9, 0x0

    .line 2114
    .local v9, numDashes:I
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_3

    const/4 v11, 0x0

    .line 2115
    .local v11, phoneNumPosition:I
    :goto_0
    if-gtz v11, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    const/16 v14, 0x30

    if-ne v13, v14, :cond_a

    .line 2116
    :cond_0
    move v6, v11

    .line 2117
    .local v6, index:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    const/16 v14, 0x30

    if-ne v13, v14, :cond_1

    .line 2118
    add-int/lit8 v6, v6, 0x1

    .line 2120
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 2121
    .local v1, c1:C
    add-int/lit8 v13, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 2122
    .local v2, c2:C
    add-int/lit8 v13, v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 2123
    .local v3, c3:C
    add-int/lit8 v13, v1, -0x30

    mul-int/lit8 v13, v13, 0x64

    add-int/lit8 v14, v2, -0x30

    mul-int/lit8 v14, v14, 0xa

    add-int/2addr v13, v14

    add-int/lit8 v14, v3, -0x30

    add-int v7, v13, v14

    .line 2125
    .local v7, key:I
    sget-object v13, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->ITALY_MOBILE_PREFIXS:[I

    invoke-static {v13, v7}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v13

    if-ltz v13, :cond_4

    .line 2127
    add-int/lit8 v13, v6, 0x5

    if-le v8, v13, :cond_d

    .line 2128
    add-int/lit8 v10, v9, 0x1

    .end local v9           #numDashes:I
    .local v10, numDashes:I
    add-int/lit8 v13, v6, 0x3

    aput v13, v4, v9

    .line 2131
    :goto_1
    add-int/lit8 v13, v6, 0x8

    if-le v8, v13, :cond_9

    .line 2132
    add-int/lit8 v9, v10, 0x1

    .end local v10           #numDashes:I
    .restart local v9       #numDashes:I
    add-int/lit8 v13, v6, 0x6

    aput v13, v4, v10

    .line 2173
    .end local v6           #index:I
    :cond_2
    :goto_2
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    if-ge v5, v9, :cond_b

    .line 2174
    aget v12, v4, v5

    .line 2175
    .local v12, pos:I
    add-int v13, v12, v5

    add-int v14, v12, v5

    const-string v15, "-"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2173
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2114
    .end local v1           #c1:C
    .end local v2           #c2:C
    .end local v3           #c3:C
    .end local v5           #i:I
    .end local v7           #key:I
    .end local v11           #phoneNumPosition:I
    .end local v12           #pos:I
    :cond_3
    add-int/lit8 v11, p1, 0x1

    goto :goto_0

    .line 2134
    .restart local v1       #c1:C
    .restart local v2       #c2:C
    .restart local v3       #c3:C
    .restart local v6       #index:I
    .restart local v7       #key:I
    .restart local v11       #phoneNumPosition:I
    :cond_4
    const/16 v13, 0x32

    if-eq v1, v13, :cond_5

    const/16 v13, 0x36

    if-ne v1, v13, :cond_6

    .line 2137
    :cond_5
    add-int/lit8 v10, v9, 0x1

    .end local v9           #numDashes:I
    .restart local v10       #numDashes:I
    add-int/lit8 v13, v6, 0x1

    aput v13, v4, v9

    move v9, v10

    .end local v10           #numDashes:I
    .restart local v9       #numDashes:I
    goto :goto_2

    .line 2138
    :cond_6
    const/16 v13, 0x30

    if-eq v2, v13, :cond_7

    const/16 v13, 0x31

    if-eq v2, v13, :cond_7

    const/16 v13, 0x35

    if-eq v2, v13, :cond_7

    const/16 v13, 0x39

    if-ne v2, v13, :cond_8

    .line 2147
    :cond_7
    add-int/lit8 v13, v6, 0x4

    if-le v8, v13, :cond_2

    .line 2148
    add-int/lit8 v10, v9, 0x1

    .end local v9           #numDashes:I
    .restart local v10       #numDashes:I
    add-int/lit8 v13, v6, 0x2

    aput v13, v4, v9

    move v9, v10

    .end local v10           #numDashes:I
    .restart local v9       #numDashes:I
    goto :goto_2

    .line 2152
    :cond_8
    add-int/lit8 v13, v6, 0x5

    if-le v8, v13, :cond_2

    .line 2153
    add-int/lit8 v10, v9, 0x1

    .end local v9           #numDashes:I
    .restart local v10       #numDashes:I
    add-int/lit8 v13, v6, 0x3

    aput v13, v4, v9

    .end local v6           #index:I
    :cond_9
    move v9, v10

    .end local v10           #numDashes:I
    .restart local v9       #numDashes:I
    goto :goto_2

    .line 2157
    .end local v1           #c1:C
    .end local v2           #c2:C
    .end local v3           #c3:C
    .end local v7           #key:I
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 2158
    .restart local v1       #c1:C
    add-int/lit8 v13, v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 2159
    .restart local v2       #c2:C
    add-int/lit8 v13, v11, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 2160
    .restart local v3       #c3:C
    add-int/lit8 v13, v1, -0x30

    mul-int/lit8 v13, v13, 0x64

    add-int/lit8 v14, v2, -0x30

    mul-int/lit8 v14, v14, 0xa

    add-int/2addr v13, v14

    add-int/lit8 v14, v3, -0x30

    add-int v7, v13, v14

    .line 2161
    .restart local v7       #key:I
    sget-object v13, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->ITALY_MOBILE_PREFIXS:[I

    invoke-static {v13, v7}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v13

    if-ltz v13, :cond_2

    .line 2163
    add-int/lit8 v13, v11, 0x5

    if-le v8, v13, :cond_c

    .line 2164
    add-int/lit8 v10, v9, 0x1

    .end local v9           #numDashes:I
    .restart local v10       #numDashes:I
    add-int/lit8 v13, v11, 0x3

    aput v13, v4, v9

    .line 2167
    :goto_4
    add-int/lit8 v13, v11, 0x7

    if-le v8, v13, :cond_9

    .line 2168
    add-int/lit8 v9, v10, 0x1

    .end local v10           #numDashes:I
    .restart local v9       #numDashes:I
    add-int/lit8 v13, v11, 0x6

    aput v13, v4, v10

    goto/16 :goto_2

    .line 2177
    .restart local v5       #i:I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13

    .end local v5           #i:I
    :cond_c
    move v10, v9

    .end local v9           #numDashes:I
    .restart local v10       #numDashes:I
    goto :goto_4

    .end local v10           #numDashes:I
    .restart local v6       #index:I
    .restart local v9       #numDashes:I
    :cond_d
    move v10, v9

    .end local v9           #numDashes:I
    .restart local v10       #numDashes:I
    goto/16 :goto_1
.end method

.method private static formatMacauNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 4
    .parameter "sb"
    .parameter "blankPosition"

    .prologue
    .line 992
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x0

    .line 994
    .local v0, phoneNumPosition:I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_1

    .line 995
    add-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v0, 0x2

    const-string v3, " "

    invoke-virtual {p0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    add-int/lit8 v1, p1, 0x3

    invoke-static {p0, v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatHeightLengthWithoutRegionCodeNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v1

    .line 998
    :goto_1
    return-object v1

    .line 992
    .end local v0           #phoneNumPosition:I
    :cond_0
    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    .line 998
    .restart local v0       #phoneNumPosition:I
    :cond_1
    invoke-static {p0, p1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatHeightLengthWithoutRegionCodeNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static formatMalaysiaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 13
    .parameter "sb"
    .parameter "blankPosition"

    .prologue
    const/16 v12, 0x32

    const/16 v11, 0x31

    const/16 v10, 0x30

    .line 1575
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 1579
    .local v4, length:I
    const/4 v9, 0x2

    new-array v1, v9, [I

    .line 1580
    .local v1, dashPositions:[I
    const/4 v5, 0x0

    .line 1581
    .local v5, numDashes:I
    const/4 v9, -0x1

    if-ne p1, v9, :cond_5

    const/4 v7, 0x0

    .line 1583
    .local v7, phoneNumPosition:I
    :goto_0
    if-gtz v7, :cond_0

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_9

    .line 1584
    :cond_0
    move v3, v7

    .line 1585
    .local v3, index:I
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_1

    .line 1586
    add-int/lit8 v3, v3, 0x1

    .line 1588
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 1590
    .local v0, c1:C
    const/16 v9, 0x33

    if-lt v0, v9, :cond_2

    const/16 v9, 0x37

    if-le v0, v9, :cond_3

    :cond_2
    const/16 v9, 0x39

    if-ne v0, v9, :cond_6

    .line 1592
    :cond_3
    add-int/lit8 v9, v3, 0x4

    if-le v4, v9, :cond_4

    .line 1593
    add-int/lit8 v6, v5, 0x1

    .end local v5           #numDashes:I
    .local v6, numDashes:I
    add-int/lit8 v9, v3, 0x1

    aput v9, v1, v5

    move v5, v6

    .line 1631
    .end local v0           #c1:C
    .end local v3           #index:I
    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    :cond_4
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v5, :cond_b

    .line 1632
    aget v8, v1, v2

    .line 1633
    .local v8, pos:I
    add-int v9, v8, v2

    add-int v10, v8, v2

    const-string v11, "-"

    invoke-virtual {p0, v9, v10, v11}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1581
    .end local v2           #i:I
    .end local v7           #phoneNumPosition:I
    .end local v8           #pos:I
    :cond_5
    add-int/lit8 v7, p1, 0x1

    goto :goto_0

    .line 1595
    .restart local v0       #c1:C
    .restart local v3       #index:I
    .restart local v7       #phoneNumPosition:I
    :cond_6
    const/16 v9, 0x38

    if-ne v0, v9, :cond_7

    .line 1597
    add-int/lit8 v9, v3, 0x4

    if-le v4, v9, :cond_4

    .line 1598
    add-int/lit8 v6, v5, 0x1

    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    add-int/lit8 v9, v3, 0x2

    aput v9, v1, v5

    move v5, v6

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_1

    .line 1600
    :cond_7
    if-ne v0, v11, :cond_8

    .line 1603
    add-int/lit8 v9, v3, 0x4

    if-le v4, v9, :cond_e

    .line 1604
    add-int/lit8 v6, v5, 0x1

    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    add-int/lit8 v9, v3, 0x2

    aput v9, v1, v5

    .line 1607
    :goto_3
    add-int/lit8 v9, v3, 0x6

    if-le v4, v9, :cond_c

    .line 1608
    add-int/lit8 v5, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    add-int/lit8 v9, v3, 0x5

    aput v9, v1, v6

    goto :goto_1

    .line 1610
    :cond_8
    if-ne v0, v12, :cond_4

    .line 1612
    add-int/lit8 v9, v3, 0x4

    if-le v4, v9, :cond_d

    .line 1613
    add-int/lit8 v6, v5, 0x1

    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    add-int/lit8 v9, v3, 0x1

    aput v9, v1, v5

    .line 1616
    :goto_4
    add-int/lit8 v9, v3, 0x7

    if-le v4, v9, :cond_c

    .line 1617
    add-int/lit8 v5, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    add-int/lit8 v9, v3, 0x5

    aput v9, v1, v6

    goto :goto_1

    .line 1620
    .end local v0           #c1:C
    .end local v3           #index:I
    :cond_9
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_a

    add-int/lit8 v9, v7, 0x8

    if-le v4, v9, :cond_a

    .line 1622
    add-int/lit8 v6, v5, 0x1

    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    add-int/lit8 v9, v7, 0x1

    aput v9, v1, v5

    .line 1624
    add-int/lit8 v5, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    add-int/lit8 v9, v7, 0x5

    aput v9, v1, v6

    goto :goto_1

    .line 1625
    :cond_a
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v11, :cond_4

    add-int/lit8 v9, v7, 0x8

    if-le v4, v9, :cond_4

    .line 1627
    add-int/lit8 v6, v5, 0x1

    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    add-int/lit8 v9, v7, 0x2

    aput v9, v1, v5

    .line 1628
    add-int/lit8 v5, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    add-int/lit8 v9, v7, 0x5

    aput v9, v1, v6

    goto :goto_1

    .line 1635
    .restart local v2       #i:I
    :cond_b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .end local v2           #i:I
    .end local v5           #numDashes:I
    .restart local v0       #c1:C
    .restart local v3       #index:I
    .restart local v6       #numDashes:I
    :cond_c
    move v5, v6

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto/16 :goto_1

    :cond_d
    move v6, v5

    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    goto :goto_4

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    :cond_e
    move v6, v5

    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    goto :goto_3
.end method

.method private static formatNewZealandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 11
    .parameter "sb"
    .parameter "blankPosition"

    .prologue
    const/16 v9, 0x30

    .line 1322
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 1326
    .local v3, length:I
    const/4 v8, 0x2

    new-array v0, v8, [I

    .line 1327
    .local v0, dashPositions:[I
    const/4 v4, 0x0

    .line 1328
    .local v4, numDashes:I
    const/4 v8, -0x1

    if-ne p1, v8, :cond_3

    const/4 v6, 0x0

    .line 1330
    .local v6, phoneNumPosition:I
    :goto_0
    if-gtz v6, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_5

    .line 1331
    :cond_0
    move v2, v6

    .line 1332
    .local v2, index:I
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_1

    .line 1333
    add-int/lit8 v2, v2, 0x1

    .line 1336
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0x32

    if-ne v8, v9, :cond_4

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0x34

    if-eq v8, v9, :cond_4

    .line 1338
    add-int/lit8 v8, v2, 0x4

    if-le v3, v8, :cond_9

    .line 1339
    add-int/lit8 v5, v4, 0x1

    .end local v4           #numDashes:I
    .local v5, numDashes:I
    add-int/lit8 v8, v2, 0x2

    aput v8, v0, v4

    .line 1342
    :goto_1
    add-int/lit8 v8, v2, 0x6

    if-le v3, v8, :cond_6

    .line 1343
    add-int/lit8 v4, v5, 0x1

    .end local v5           #numDashes:I
    .restart local v4       #numDashes:I
    add-int/lit8 v8, v2, 0x5

    aput v8, v0, v5

    .line 1364
    .end local v2           #index:I
    :cond_2
    :goto_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v4, :cond_7

    .line 1365
    aget v7, v0, v1

    .line 1366
    .local v7, pos:I
    add-int v8, v7, v1

    add-int v9, v7, v1

    const-string v10, "-"

    invoke-virtual {p0, v8, v9, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1328
    .end local v1           #i:I
    .end local v6           #phoneNumPosition:I
    .end local v7           #pos:I
    :cond_3
    add-int/lit8 v6, p1, 0x1

    goto :goto_0

    .line 1347
    .restart local v2       #index:I
    .restart local v6       #phoneNumPosition:I
    :cond_4
    add-int/lit8 v8, v2, 0x3

    if-le v3, v8, :cond_8

    .line 1348
    add-int/lit8 v5, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v5       #numDashes:I
    add-int/lit8 v8, v2, 0x1

    aput v8, v0, v4

    .line 1351
    :goto_4
    add-int/lit8 v8, v2, 0x6

    if-le v3, v8, :cond_6

    .line 1352
    add-int/lit8 v4, v5, 0x1

    .end local v5           #numDashes:I
    .restart local v4       #numDashes:I
    add-int/lit8 v8, v2, 0x4

    aput v8, v0, v5

    goto :goto_2

    .line 1358
    .end local v2           #index:I
    :cond_5
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v3}, Ljava/io/PrintStream;->println(I)V

    .line 1359
    add-int/lit8 v8, v6, 0x7

    if-ne v3, v8, :cond_2

    .line 1360
    add-int/lit8 v5, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v5       #numDashes:I
    add-int/lit8 v8, v6, 0x3

    aput v8, v0, v4

    :cond_6
    move v4, v5

    .end local v5           #numDashes:I
    .restart local v4       #numDashes:I
    goto :goto_2

    .line 1368
    .restart local v1       #i:I
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .end local v1           #i:I
    .restart local v2       #index:I
    :cond_8
    move v5, v4

    .end local v4           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_4

    .end local v5           #numDashes:I
    .restart local v4       #numDashes:I
    :cond_9
    move v5, v4

    .end local v4           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_1
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "source"

    .prologue
    .line 339
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 340
    .local v0, sCachedLocale:Ljava/util/Locale;
    invoke-static {v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .parameter "text"
    .parameter "defaultFormattingType"

    .prologue
    const/16 v6, 0x31

    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MTK Format Number:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->log(Ljava/lang/String;)V

    .line 412
    invoke-static {p0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->checkInputNormalNumber(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abnormal Number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", do nothing."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->log(Ljava/lang/String;)V

    move-object v1, p0

    .line 439
    :goto_0
    return-object v1

    .line 416
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->removeAllDash(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 417
    if-nez p1, :cond_2

    move v0, v2

    .line 418
    .local v0, formatType:I
    :goto_1
    move-object v1, p0

    .line 419
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_1

    .line 420
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_3

    .line 421
    const/4 v0, 0x1

    .line 429
    :cond_1
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "formatNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->log(Ljava/lang/String;)V

    .line 430
    packed-switch v0, :pswitch_data_0

    .line 436
    invoke-static {p0, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->mtkFormatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .end local v0           #formatType:I
    .end local v1           #result:Ljava/lang/String;
    :cond_2
    move v0, p1

    .line 417
    goto :goto_1

    .line 422
    .restart local v0       #formatType:I
    .restart local v1       #result:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x38

    if-ne v3, v4, :cond_4

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_4

    .line 423
    const/4 v0, 0x2

    goto :goto_2

    .line 424
    :cond_4
    if-eq v0, v2, :cond_5

    if-ne v0, v5, :cond_1

    .line 425
    :cond_5
    invoke-static {p0, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->mtkFormatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 426
    goto :goto_0

    .line 433
    :pswitch_0
    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 434
    goto :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .locals 10
    .parameter "text"
    .parameter "defaultFormattingType"

    .prologue
    const/16 v9, 0x2d

    const/16 v8, 0x20

    .line 355
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 356
    .local v5, result:Ljava/lang/String;
    if-eqz v5, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 358
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 359
    .local v4, oldIndex:I
    move v2, v4

    .line 360
    .local v2, digitCount:I
    const/4 v3, 0x0

    .line 362
    .local v3, i:I
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    .line 363
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 364
    .local v0, c:C
    if-eq v0, v8, :cond_0

    if-ne v0, v9, :cond_1

    .line 365
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 362
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 369
    .end local v0           #c:C
    :cond_2
    const/4 v6, 0x0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-interface {p0, v6, v7, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 372
    const/4 v1, 0x0

    .line 373
    .local v1, count:I
    const/4 v3, 0x0

    :goto_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v6

    if-ge v3, v6, :cond_4

    if-ge v1, v2, :cond_4

    .line 374
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 375
    .restart local v0       #c:C
    if-eq v0, v8, :cond_3

    if-eq v0, v9, :cond_3

    .line 376
    add-int/lit8 v1, v1, 0x1

    .line 373
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 379
    .end local v0           #c:C
    :cond_4
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 383
    .end local v1           #count:I
    .end local v2           #digitCount:I
    .end local v3           #i:I
    .end local v4           #oldIndex:I
    :cond_5
    return-void
.end method

.method private static formatPolandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 10
    .parameter "sb"
    .parameter "blankPosition"

    .prologue
    .line 1208
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 1212
    .local v2, length:I
    const/4 v7, 0x3

    new-array v0, v7, [I

    .line 1213
    .local v0, dashPositions:[I
    const/4 v3, 0x0

    .line 1214
    .local v3, numDashes:I
    const/4 v7, -0x1

    if-ne p1, v7, :cond_1

    const/4 v5, 0x0

    .line 1216
    .local v5, phoneNumPosition:I
    :goto_0
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0x35

    if-lt v7, v8, :cond_2

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0x38

    if-gt v7, v8, :cond_2

    .line 1217
    add-int/lit8 v7, v5, 0x4

    if-le v2, v7, :cond_6

    .line 1218
    add-int/lit8 v4, v3, 0x1

    .end local v3           #numDashes:I
    .local v4, numDashes:I
    add-int/lit8 v7, v5, 0x2

    aput v7, v0, v3

    .line 1220
    :goto_1
    add-int/lit8 v7, v5, 0x6

    if-le v2, v7, :cond_0

    .line 1221
    add-int/lit8 v3, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v3       #numDashes:I
    add-int/lit8 v7, v5, 0x5

    aput v7, v0, v4

    move v4, v3

    .line 1223
    .end local v3           #numDashes:I
    .restart local v4       #numDashes:I
    :cond_0
    add-int/lit8 v7, v5, 0x8

    if-le v2, v7, :cond_4

    .line 1224
    add-int/lit8 v3, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v3       #numDashes:I
    add-int/lit8 v7, v5, 0x7

    aput v7, v0, v4

    .line 1235
    :goto_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v3, :cond_3

    .line 1236
    aget v6, v0, v1

    .line 1237
    .local v6, pos:I
    add-int v7, v6, v1

    add-int v8, v6, v1

    const-string v9, "-"

    invoke-virtual {p0, v7, v8, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1214
    .end local v1           #i:I
    .end local v5           #phoneNumPosition:I
    .end local v6           #pos:I
    :cond_1
    add-int/lit8 v5, p1, 0x1

    goto :goto_0

    .line 1227
    .restart local v5       #phoneNumPosition:I
    :cond_2
    add-int/lit8 v7, v5, 0x5

    if-le v2, v7, :cond_5

    .line 1228
    add-int/lit8 v4, v3, 0x1

    .end local v3           #numDashes:I
    .restart local v4       #numDashes:I
    add-int/lit8 v7, v5, 0x3

    aput v7, v0, v3

    .line 1230
    :goto_4
    add-int/lit8 v7, v5, 0x8

    if-le v2, v7, :cond_4

    .line 1231
    add-int/lit8 v3, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v3       #numDashes:I
    add-int/lit8 v7, v5, 0x6

    aput v7, v0, v4

    goto :goto_2

    .line 1239
    .restart local v1       #i:I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .end local v1           #i:I
    .end local v3           #numDashes:I
    .restart local v4       #numDashes:I
    :cond_4
    move v3, v4

    .end local v4           #numDashes:I
    .restart local v3       #numDashes:I
    goto :goto_2

    :cond_5
    move v4, v3

    .end local v3           #numDashes:I
    .restart local v4       #numDashes:I
    goto :goto_4

    .end local v4           #numDashes:I
    .restart local v3       #numDashes:I
    :cond_6
    move v4, v3

    .end local v3           #numDashes:I
    .restart local v4       #numDashes:I
    goto :goto_1
.end method

.method private static formatPortugalNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 10
    .parameter "sb"
    .parameter "blankPosition"

    .prologue
    .line 1124
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 1128
    .local v2, length:I
    const/4 v7, 0x2

    new-array v0, v7, [I

    .line 1129
    .local v0, dashPositions:[I
    const/4 v3, 0x0

    .line 1130
    .local v3, numDashes:I
    const/4 v7, -0x1

    if-ne p1, v7, :cond_0

    const/4 v5, 0x0

    .line 1131
    .local v5, phoneNumPosition:I
    :goto_0
    add-int/lit8 v7, v5, 0x4

    if-le v2, v7, :cond_3

    .line 1132
    add-int/lit8 v4, v3, 0x1

    .end local v3           #numDashes:I
    .local v4, numDashes:I
    add-int/lit8 v7, v5, 0x2

    aput v7, v0, v3

    .line 1134
    :goto_1
    add-int/lit8 v7, v5, 0x8

    if-le v2, v7, :cond_2

    .line 1135
    add-int/lit8 v3, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v3       #numDashes:I
    add-int/lit8 v7, v5, 0x5

    aput v7, v0, v4

    .line 1137
    :goto_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v3, :cond_1

    .line 1138
    aget v6, v0, v1

    .line 1139
    .local v6, pos:I
    add-int v7, v6, v1

    add-int v8, v6, v1

    const-string v9, "-"

    invoke-virtual {p0, v7, v8, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1130
    .end local v1           #i:I
    .end local v5           #phoneNumPosition:I
    .end local v6           #pos:I
    :cond_0
    add-int/lit8 v5, p1, 0x1

    goto :goto_0

    .line 1141
    .restart local v1       #i:I
    .restart local v5       #phoneNumPosition:I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .end local v1           #i:I
    .end local v3           #numDashes:I
    .restart local v4       #numDashes:I
    :cond_2
    move v3, v4

    .end local v4           #numDashes:I
    .restart local v3       #numDashes:I
    goto :goto_2

    :cond_3
    move v4, v3

    .end local v3           #numDashes:I
    .restart local v4       #numDashes:I
    goto :goto_1
.end method

.method private static formatRussianNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 10
    .parameter "sb"
    .parameter "blankPosition"

    .prologue
    .line 1859
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 1863
    .local v2, length:I
    const/4 v7, 0x3

    new-array v0, v7, [I

    .line 1864
    .local v0, dashPositions:[I
    const/4 v3, 0x0

    .line 1865
    .local v3, numDashes:I
    const/4 v7, -0x1

    if-ne p1, v7, :cond_2

    const/4 v5, 0x0

    .line 1867
    .local v5, phoneNumPosition:I
    :goto_0
    if-lez v5, :cond_3

    .line 1869
    add-int/lit8 v7, v5, 0x5

    if-le v2, v7, :cond_8

    .line 1870
    add-int/lit8 v4, v3, 0x1

    .end local v3           #numDashes:I
    .local v4, numDashes:I
    add-int/lit8 v7, v5, 0x3

    aput v7, v0, v3

    .line 1873
    :goto_1
    add-int/lit8 v7, v5, 0x7

    if-le v2, v7, :cond_0

    .line 1874
    add-int/lit8 v3, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v3       #numDashes:I
    add-int/lit8 v7, v5, 0x6

    aput v7, v0, v4

    move v4, v3

    .line 1877
    .end local v3           #numDashes:I
    .restart local v4       #numDashes:I
    :cond_0
    add-int/lit8 v7, v5, 0x9

    if-le v2, v7, :cond_6

    .line 1878
    add-int/lit8 v3, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v3       #numDashes:I
    add-int/lit8 v7, v5, 0x8

    aput v7, v0, v4

    .line 1898
    :cond_1
    :goto_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v3, :cond_7

    .line 1899
    aget v6, v0, v1

    .line 1900
    .local v6, pos:I
    add-int v7, v6, v1

    add-int v8, v6, v1

    const-string v9, "-"

    invoke-virtual {p0, v7, v8, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1898
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1865
    .end local v1           #i:I
    .end local v5           #phoneNumPosition:I
    .end local v6           #pos:I
    :cond_2
    add-int/lit8 v5, p1, 0x1

    goto :goto_0

    .line 1880
    .restart local v5       #phoneNumPosition:I
    :cond_3
    add-int/lit8 v7, v5, 0x6

    if-ne v2, v7, :cond_4

    .line 1882
    add-int/lit8 v4, v3, 0x1

    .end local v3           #numDashes:I
    .restart local v4       #numDashes:I
    add-int/lit8 v7, v5, 0x2

    aput v7, v0, v3

    .line 1883
    add-int/lit8 v3, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v3       #numDashes:I
    add-int/lit8 v7, v5, 0x4

    aput v7, v0, v4

    goto :goto_2

    .line 1884
    :cond_4
    add-int/lit8 v7, v5, 0x7

    if-ne v2, v7, :cond_5

    .line 1886
    add-int/lit8 v4, v3, 0x1

    .end local v3           #numDashes:I
    .restart local v4       #numDashes:I
    add-int/lit8 v7, v5, 0x3

    aput v7, v0, v3

    .line 1887
    add-int/lit8 v3, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v3       #numDashes:I
    add-int/lit8 v7, v5, 0x5

    aput v7, v0, v4

    goto :goto_2

    .line 1888
    :cond_5
    add-int/lit8 v7, v5, 0x8

    if-lt v2, v7, :cond_1

    .line 1890
    add-int/lit8 v4, v3, 0x1

    .end local v3           #numDashes:I
    .restart local v4       #numDashes:I
    add-int/lit8 v7, v5, 0x3

    aput v7, v0, v3

    .line 1891
    add-int/lit8 v3, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v3       #numDashes:I
    add-int/lit8 v7, v5, 0x6

    aput v7, v0, v4

    .line 1893
    add-int/lit8 v7, v5, 0x9

    if-le v2, v7, :cond_1

    .line 1894
    add-int/lit8 v4, v3, 0x1

    .end local v3           #numDashes:I
    .restart local v4       #numDashes:I
    add-int/lit8 v7, v5, 0x8

    aput v7, v0, v3

    :cond_6
    move v3, v4

    .end local v4           #numDashes:I
    .restart local v3       #numDashes:I
    goto :goto_2

    .line 1902
    .restart local v1       #i:I
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .end local v1           #i:I
    :cond_8
    move v4, v3

    .end local v3           #numDashes:I
    .restart local v4       #numDashes:I
    goto :goto_1
.end method

.method private static formatSpainNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 10
    .parameter "sb"
    .parameter "blankPosition"

    .prologue
    .line 1652
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 1656
    .local v2, length:I
    const/4 v7, 0x2

    new-array v0, v7, [I

    .line 1657
    .local v0, dashPositions:[I
    const/4 v3, 0x0

    .line 1658
    .local v3, numDashes:I
    const/4 v7, -0x1

    if-ne p1, v7, :cond_0

    const/4 v5, 0x0

    .line 1660
    .local v5, phoneNumPosition:I
    :goto_0
    add-int/lit8 v7, v5, 0x5

    if-le v2, v7, :cond_3

    .line 1661
    add-int/lit8 v4, v3, 0x1

    .end local v3           #numDashes:I
    .local v4, numDashes:I
    add-int/lit8 v7, v5, 0x3

    aput v7, v0, v3

    .line 1664
    :goto_1
    add-int/lit8 v7, v5, 0x7

    if-le v2, v7, :cond_2

    .line 1665
    add-int/lit8 v3, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v3       #numDashes:I
    add-int/lit8 v7, v5, 0x6

    aput v7, v0, v4

    .line 1668
    :goto_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v3, :cond_1

    .line 1669
    aget v6, v0, v1

    .line 1670
    .local v6, pos:I
    add-int v7, v6, v1

    add-int v8, v6, v1

    const-string v9, "-"

    invoke-virtual {p0, v7, v8, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1658
    .end local v1           #i:I
    .end local v5           #phoneNumPosition:I
    .end local v6           #pos:I
    :cond_0
    add-int/lit8 v5, p1, 0x1

    goto :goto_0

    .line 1672
    .restart local v1       #i:I
    .restart local v5       #phoneNumPosition:I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .end local v1           #i:I
    .end local v3           #numDashes:I
    .restart local v4       #numDashes:I
    :cond_2
    move v3, v4

    .end local v4           #numDashes:I
    .restart local v3       #numDashes:I
    goto :goto_2

    :cond_3
    move v4, v3

    .end local v3           #numDashes:I
    .restart local v4       #numDashes:I
    goto :goto_1
.end method

.method private static formatTaiwanNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 14
    .parameter "sb"
    .parameter "blankPosition"

    .prologue
    .line 907
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 911
    .local v6, length:I
    const/4 v11, 0x2

    new-array v3, v11, [I

    .line 912
    .local v3, dashPositions:[I
    const/4 v7, 0x0

    .line 913
    .local v7, numDashes:I
    const/4 v11, -0x1

    if-ne p1, v11, :cond_3

    const/4 v9, 0x0

    .line 915
    .local v9, phoneNumPosition:I
    :goto_0
    if-gtz v9, :cond_0

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    if-ne v11, v12, :cond_f

    .line 916
    :cond_0
    move v5, v9

    .line 917
    .local v5, index:I
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    if-ne v11, v12, :cond_1

    .line 918
    add-int/lit8 v5, v5, 0x1

    .line 920
    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 921
    .local v0, c1:C
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 922
    .local v1, c2:C
    add-int/lit8 v11, v5, 0x2

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 924
    .local v2, c3:C
    const/16 v11, 0x39

    if-ne v0, v11, :cond_4

    .line 930
    add-int/lit8 v11, v5, 0x4

    if-le v6, v11, :cond_14

    .line 931
    add-int/lit8 v8, v7, 0x1

    .end local v7           #numDashes:I
    .local v8, numDashes:I
    add-int/lit8 v11, v5, 0x3

    aput v11, v3, v7

    .line 933
    :goto_1
    add-int/lit8 v11, v5, 0x7

    if-le v6, v11, :cond_11

    .line 934
    add-int/lit8 v7, v8, 0x1

    .end local v8           #numDashes:I
    .restart local v7       #numDashes:I
    add-int/lit8 v11, v5, 0x6

    aput v11, v3, v8

    .line 971
    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local v2           #c3:C
    .end local v5           #index:I
    :cond_2
    :goto_2
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v7, :cond_12

    .line 972
    aget v10, v3, v4

    .line 973
    .local v10, pos:I
    add-int v11, v10, v4

    add-int v12, v10, v4

    const-string v13, "-"

    invoke-virtual {p0, v11, v12, v13}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 913
    .end local v4           #i:I
    .end local v9           #phoneNumPosition:I
    .end local v10           #pos:I
    :cond_3
    add-int/lit8 v9, p1, 0x1

    goto :goto_0

    .line 936
    .restart local v0       #c1:C
    .restart local v1       #c2:C
    .restart local v2       #c3:C
    .restart local v5       #index:I
    .restart local v9       #phoneNumPosition:I
    :cond_4
    const/16 v11, 0x38

    if-ne v0, v11, :cond_5

    const/16 v11, 0x32

    if-ne v1, v11, :cond_5

    const/16 v11, 0x36

    if-eq v2, v11, :cond_6

    :cond_5
    const/16 v11, 0x38

    if-ne v0, v11, :cond_7

    const/16 v11, 0x33

    if-ne v1, v11, :cond_7

    const/16 v11, 0x36

    if-ne v2, v11, :cond_7

    .line 938
    :cond_6
    add-int/lit8 v11, v5, 0x4

    if-le v6, v11, :cond_13

    .line 939
    add-int/lit8 v8, v7, 0x1

    .end local v7           #numDashes:I
    .restart local v8       #numDashes:I
    add-int/lit8 v11, v5, 0x3

    aput v11, v3, v7

    .line 942
    :goto_4
    add-int/lit8 v11, v5, 0x7

    if-le v6, v11, :cond_11

    .line 943
    add-int/lit8 v7, v8, 0x1

    .end local v8           #numDashes:I
    .restart local v7       #numDashes:I
    add-int/lit8 v11, v5, 0x6

    aput v11, v3, v8

    goto :goto_2

    .line 945
    :cond_7
    const/16 v11, 0x33

    if-ne v0, v11, :cond_8

    const/16 v11, 0x37

    if-eq v1, v11, :cond_b

    :cond_8
    const/16 v11, 0x34

    if-ne v0, v11, :cond_9

    const/16 v11, 0x39

    if-eq v1, v11, :cond_b

    :cond_9
    const/16 v11, 0x38

    if-ne v0, v11, :cond_a

    const/16 v11, 0x39

    if-eq v1, v11, :cond_b

    :cond_a
    const/16 v11, 0x38

    if-ne v0, v11, :cond_d

    const/16 v11, 0x32

    if-ne v1, v11, :cond_d

    .line 947
    :cond_b
    add-int/lit8 v8, v7, 0x1

    .end local v7           #numDashes:I
    .restart local v8       #numDashes:I
    add-int/lit8 v11, v5, 0x2

    aput v11, v3, v7

    .line 949
    add-int/lit8 v11, v5, 0x6

    if-le v6, v11, :cond_c

    add-int/lit8 v11, v5, 0xa

    if-ge v6, v11, :cond_c

    .line 950
    add-int/lit8 v7, v8, 0x1

    .end local v8           #numDashes:I
    .restart local v7       #numDashes:I
    add-int/lit8 v11, v5, 0x5

    aput v11, v3, v8

    goto :goto_2

    .line 951
    .end local v7           #numDashes:I
    .restart local v8       #numDashes:I
    :cond_c
    add-int/lit8 v11, v5, 0xa

    if-lt v6, v11, :cond_11

    .line 952
    add-int/lit8 v7, v8, 0x1

    .end local v8           #numDashes:I
    .restart local v7       #numDashes:I
    add-int/lit8 v11, v5, 0x6

    aput v11, v3, v8

    goto :goto_2

    .line 956
    :cond_d
    add-int/lit8 v8, v7, 0x1

    .end local v7           #numDashes:I
    .restart local v8       #numDashes:I
    add-int/lit8 v11, v5, 0x1

    aput v11, v3, v7

    .line 958
    add-int/lit8 v11, v5, 0x6

    if-le v6, v11, :cond_e

    add-int/lit8 v11, v5, 0x9

    if-ge v6, v11, :cond_e

    .line 959
    add-int/lit8 v7, v8, 0x1

    .end local v8           #numDashes:I
    .restart local v7       #numDashes:I
    add-int/lit8 v11, v5, 0x4

    aput v11, v3, v8

    goto/16 :goto_2

    .line 960
    .end local v7           #numDashes:I
    .restart local v8       #numDashes:I
    :cond_e
    add-int/lit8 v11, v5, 0x9

    if-lt v6, v11, :cond_11

    .line 961
    add-int/lit8 v7, v8, 0x1

    .end local v8           #numDashes:I
    .restart local v7       #numDashes:I
    add-int/lit8 v11, v5, 0x5

    aput v11, v3, v8

    goto/16 :goto_2

    .line 965
    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local v2           #c3:C
    .end local v5           #index:I
    :cond_f
    add-int/lit8 v11, v9, 0x4

    if-le v6, v11, :cond_10

    add-int/lit8 v11, v9, 0x8

    if-ge v6, v11, :cond_10

    .line 966
    add-int/lit8 v8, v7, 0x1

    .end local v7           #numDashes:I
    .restart local v8       #numDashes:I
    add-int/lit8 v11, v9, 0x3

    aput v11, v3, v7

    move v7, v8

    .end local v8           #numDashes:I
    .restart local v7       #numDashes:I
    goto/16 :goto_2

    .line 967
    :cond_10
    add-int/lit8 v11, v9, 0x8

    if-lt v6, v11, :cond_2

    .line 968
    add-int/lit8 v8, v7, 0x1

    .end local v7           #numDashes:I
    .restart local v8       #numDashes:I
    add-int/lit8 v11, v9, 0x4

    aput v11, v3, v7

    :cond_11
    move v7, v8

    .end local v8           #numDashes:I
    .restart local v7       #numDashes:I
    goto/16 :goto_2

    .line 975
    .restart local v4       #i:I
    :cond_12
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .end local v4           #i:I
    .restart local v0       #c1:C
    .restart local v1       #c2:C
    .restart local v2       #c3:C
    .restart local v5       #index:I
    :cond_13
    move v8, v7

    .end local v7           #numDashes:I
    .restart local v8       #numDashes:I
    goto/16 :goto_4

    .end local v8           #numDashes:I
    .restart local v7       #numDashes:I
    :cond_14
    move v8, v7

    .end local v7           #numDashes:I
    .restart local v8       #numDashes:I
    goto/16 :goto_1
.end method

.method private static formatThailandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 11
    .parameter "sb"
    .parameter "blankPosition"

    .prologue
    const/16 v9, 0x30

    .line 1388
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 1392
    .local v3, length:I
    const/4 v8, 0x2

    new-array v0, v8, [I

    .line 1393
    .local v0, dashPositions:[I
    const/4 v4, 0x0

    .line 1394
    .local v4, numDashes:I
    const/4 v8, -0x1

    if-ne p1, v8, :cond_3

    const/4 v6, 0x0

    .line 1396
    .local v6, phoneNumPosition:I
    :goto_0
    if-gtz v6, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_2

    .line 1397
    :cond_0
    move v2, v6

    .line 1398
    .local v2, index:I
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_1

    .line 1399
    add-int/lit8 v2, v2, 0x1

    .line 1402
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0x38

    if-ne v8, v9, :cond_4

    .line 1404
    add-int/lit8 v8, v2, 0x4

    if-le v3, v8, :cond_a

    .line 1405
    add-int/lit8 v5, v4, 0x1

    .end local v4           #numDashes:I
    .local v5, numDashes:I
    add-int/lit8 v8, v2, 0x2

    aput v8, v0, v4

    .line 1408
    :goto_1
    add-int/lit8 v8, v2, 0x6

    if-le v3, v8, :cond_7

    .line 1409
    add-int/lit8 v4, v5, 0x1

    .end local v5           #numDashes:I
    .restart local v4       #numDashes:I
    add-int/lit8 v8, v2, 0x5

    aput v8, v0, v5

    .line 1441
    .end local v2           #index:I
    :cond_2
    :goto_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v4, :cond_6

    .line 1442
    aget v7, v0, v1

    .line 1443
    .local v7, pos:I
    add-int v8, v7, v1

    add-int v9, v7, v1

    const-string v10, "-"

    invoke-virtual {p0, v8, v9, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1441
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1394
    .end local v1           #i:I
    .end local v6           #phoneNumPosition:I
    .end local v7           #pos:I
    :cond_3
    add-int/lit8 v6, p1, 0x1

    goto :goto_0

    .line 1411
    .restart local v2       #index:I
    .restart local v6       #phoneNumPosition:I
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0x32

    if-ne v8, v9, :cond_5

    .line 1413
    add-int/lit8 v8, v2, 0x3

    if-le v3, v8, :cond_9

    .line 1414
    add-int/lit8 v5, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v5       #numDashes:I
    add-int/lit8 v8, v2, 0x1

    aput v8, v0, v4

    .line 1417
    :goto_4
    add-int/lit8 v8, v2, 0x6

    if-le v3, v8, :cond_7

    .line 1418
    add-int/lit8 v4, v5, 0x1

    .end local v5           #numDashes:I
    .restart local v4       #numDashes:I
    add-int/lit8 v8, v2, 0x4

    aput v8, v0, v5

    goto :goto_2

    .line 1422
    :cond_5
    add-int/lit8 v8, v2, 0x4

    if-le v3, v8, :cond_8

    .line 1423
    add-int/lit8 v5, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v5       #numDashes:I
    add-int/lit8 v8, v2, 0x2

    aput v8, v0, v4

    .line 1426
    :goto_5
    add-int/lit8 v8, v2, 0x6

    if-le v3, v8, :cond_7

    .line 1427
    add-int/lit8 v4, v5, 0x1

    .end local v5           #numDashes:I
    .restart local v4       #numDashes:I
    add-int/lit8 v8, v2, 0x5

    aput v8, v0, v5

    goto :goto_2

    .line 1445
    .end local v2           #index:I
    .restart local v1       #i:I
    :cond_6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .end local v1           #i:I
    .end local v4           #numDashes:I
    .restart local v2       #index:I
    .restart local v5       #numDashes:I
    :cond_7
    move v4, v5

    .end local v5           #numDashes:I
    .restart local v4       #numDashes:I
    goto :goto_2

    :cond_8
    move v5, v4

    .end local v4           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_5

    .end local v5           #numDashes:I
    .restart local v4       #numDashes:I
    :cond_9
    move v5, v4

    .end local v4           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_4

    .end local v5           #numDashes:I
    .restart local v4       #numDashes:I
    :cond_a
    move v5, v4

    .end local v4           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_1
.end method

.method private static formatTurkeyNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 11
    .parameter "sb"
    .parameter "blankPosition"

    .prologue
    const/16 v9, 0x30

    .line 2383
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 2387
    .local v3, length:I
    const/4 v8, 0x2

    new-array v0, v8, [I

    .line 2388
    .local v0, dashPositions:[I
    const/4 v4, 0x0

    .line 2389
    .local v4, numDashes:I
    const/4 v8, -0x1

    if-ne p1, v8, :cond_3

    const/4 v6, 0x0

    .line 2390
    .local v6, phoneNumPosition:I
    :goto_0
    if-gtz v6, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_4

    .line 2391
    :cond_0
    move v2, v6

    .line 2392
    .local v2, index:I
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_1

    .line 2393
    add-int/lit8 v2, v2, 0x1

    .line 2396
    :cond_1
    add-int/lit8 v8, v2, 0x4

    if-le v3, v8, :cond_7

    .line 2397
    add-int/lit8 v5, v4, 0x1

    .end local v4           #numDashes:I
    .local v5, numDashes:I
    add-int/lit8 v8, v2, 0x3

    aput v8, v0, v4

    .line 2400
    :goto_1
    add-int/lit8 v8, v2, 0x7

    if-le v3, v8, :cond_5

    .line 2401
    add-int/lit8 v4, v5, 0x1

    .end local v5           #numDashes:I
    .restart local v4       #numDashes:I
    add-int/lit8 v8, v2, 0x6

    aput v8, v0, v5

    .line 2410
    .end local v2           #index:I
    :cond_2
    :goto_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v4, :cond_6

    .line 2411
    aget v7, v0, v1

    .line 2412
    .local v7, pos:I
    add-int v8, v7, v1

    add-int v9, v7, v1

    const-string v10, "-"

    invoke-virtual {p0, v8, v9, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2410
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2389
    .end local v1           #i:I
    .end local v6           #phoneNumPosition:I
    .end local v7           #pos:I
    :cond_3
    add-int/lit8 v6, p1, 0x1

    goto :goto_0

    .line 2405
    .restart local v6       #phoneNumPosition:I
    :cond_4
    add-int/lit8 v8, v6, 0x4

    if-le v3, v8, :cond_2

    .line 2406
    add-int/lit8 v5, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v5       #numDashes:I
    add-int/lit8 v8, v6, 0x3

    aput v8, v0, v4

    :cond_5
    move v4, v5

    .end local v5           #numDashes:I
    .restart local v4       #numDashes:I
    goto :goto_2

    .line 2414
    .restart local v1       #i:I
    :cond_6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .end local v1           #i:I
    .restart local v2       #index:I
    :cond_7
    move v5, v4

    .end local v4           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_1
.end method

.method private static formatVietnamNubmer(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 13
    .parameter "sb"
    .parameter "blankPosition"

    .prologue
    .line 1056
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 1060
    .local v5, length:I
    const/4 v10, 0x2

    new-array v2, v10, [I

    .line 1061
    .local v2, dashPositions:[I
    const/4 v6, 0x0

    .line 1062
    .local v6, numDashes:I
    const/4 v10, -0x1

    if-ne p1, v10, :cond_4

    const/4 v8, 0x0

    .line 1064
    .local v8, phoneNumPosition:I
    :goto_0
    if-gtz v8, :cond_0

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-ne v10, v11, :cond_3

    .line 1065
    :cond_0
    move v4, v8

    .line 1066
    .local v4, index:I
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-ne v10, v11, :cond_1

    .line 1067
    add-int/lit8 v4, v4, 0x1

    .line 1069
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 1070
    .local v0, c1:C
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 1072
    .local v1, c2:C
    const/16 v10, 0x34

    if-eq v0, v10, :cond_2

    const/16 v10, 0x38

    if-ne v0, v10, :cond_5

    .line 1073
    :cond_2
    add-int/lit8 v7, v6, 0x1

    .end local v6           #numDashes:I
    .local v7, numDashes:I
    add-int/lit8 v10, v4, 0x1

    aput v10, v2, v6

    move v6, v7

    .line 1103
    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local v4           #index:I
    .end local v7           #numDashes:I
    .restart local v6       #numDashes:I
    :cond_3
    :goto_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v6, :cond_e

    .line 1104
    aget v9, v2, v3

    .line 1105
    .local v9, pos:I
    add-int v10, v9, v3

    add-int v11, v9, v3

    const-string v12, "-"

    invoke-virtual {p0, v10, v11, v12}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1062
    .end local v3           #i:I
    .end local v8           #phoneNumPosition:I
    .end local v9           #pos:I
    :cond_4
    add-int/lit8 v8, p1, 0x1

    goto :goto_0

    .line 1074
    .restart local v0       #c1:C
    .restart local v1       #c2:C
    .restart local v4       #index:I
    .restart local v8       #phoneNumPosition:I
    :cond_5
    const/16 v10, 0x32

    if-ne v0, v10, :cond_6

    const/16 v10, 0x31

    if-eq v1, v10, :cond_9

    const/16 v10, 0x33

    if-eq v1, v10, :cond_9

    const/16 v10, 0x34

    if-eq v1, v10, :cond_9

    const/16 v10, 0x38

    if-eq v1, v10, :cond_9

    :cond_6
    const/16 v10, 0x33

    if-ne v0, v10, :cond_7

    const/16 v10, 0x32

    if-eq v1, v10, :cond_9

    const/16 v10, 0x35

    if-eq v1, v10, :cond_9

    :cond_7
    const/16 v10, 0x36

    if-ne v0, v10, :cond_8

    const/16 v10, 0x35

    if-eq v1, v10, :cond_9

    :cond_8
    const/16 v10, 0x37

    if-ne v0, v10, :cond_a

    const/16 v10, 0x31

    if-eq v1, v10, :cond_9

    const/16 v10, 0x38

    if-ne v1, v10, :cond_a

    .line 1079
    :cond_9
    add-int/lit8 v10, v4, 0x4

    if-le v5, v10, :cond_3

    .line 1080
    add-int/lit8 v7, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v7       #numDashes:I
    add-int/lit8 v10, v4, 0x3

    aput v10, v2, v6

    move v6, v7

    .end local v7           #numDashes:I
    .restart local v6       #numDashes:I
    goto :goto_1

    .line 1082
    :cond_a
    const/16 v10, 0x39

    if-ne v0, v10, :cond_b

    .line 1084
    add-int/lit8 v7, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v7       #numDashes:I
    add-int/lit8 v10, v4, 0x2

    aput v10, v2, v6

    .line 1086
    add-int/lit8 v10, v4, 0x6

    if-le v5, v10, :cond_d

    .line 1087
    add-int/lit8 v6, v7, 0x1

    .end local v7           #numDashes:I
    .restart local v6       #numDashes:I
    add-int/lit8 v10, v4, 0x5

    aput v10, v2, v7

    goto :goto_1

    .line 1089
    :cond_b
    const/16 v10, 0x31

    if-ne v0, v10, :cond_c

    .line 1091
    add-int/lit8 v10, v4, 0x4

    if-le v5, v10, :cond_f

    .line 1092
    add-int/lit8 v7, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v7       #numDashes:I
    add-int/lit8 v10, v4, 0x3

    aput v10, v2, v6

    .line 1095
    :goto_3
    add-int/lit8 v10, v4, 0x7

    if-le v5, v10, :cond_d

    .line 1096
    add-int/lit8 v6, v7, 0x1

    .end local v7           #numDashes:I
    .restart local v6       #numDashes:I
    add-int/lit8 v10, v4, 0x6

    aput v10, v2, v7

    goto/16 :goto_1

    .line 1100
    :cond_c
    add-int/lit8 v7, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v7       #numDashes:I
    add-int/lit8 v10, v4, 0x2

    aput v10, v2, v6

    :cond_d
    move v6, v7

    .end local v7           #numDashes:I
    .restart local v6       #numDashes:I
    goto/16 :goto_1

    .line 1107
    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local v4           #index:I
    .restart local v3       #i:I
    :cond_e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .end local v3           #i:I
    .restart local v0       #c1:C
    .restart local v1       #c2:C
    .restart local v4       #index:I
    :cond_f
    move v7, v6

    .end local v6           #numDashes:I
    .restart local v7       #numDashes:I
    goto :goto_3
.end method

.method static getDefaultSimCountryIso()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 272
    const/4 v0, 0x0

    .line 274
    .local v0, iso:Ljava/lang/String;
    const-string v2, "persist.radio.default_sim"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 275
    .local v1, simId:I
    if-ne v1, v3, :cond_0

    .line 276
    const/4 v1, 0x0

    .line 278
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->hasIccCardGemini(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 279
    xor-int/lit8 v1, v1, 0x1

    .line 281
    :cond_1
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v0

    .line 285
    return-object v0
.end method

.method private static getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I
    .locals 12
    .parameter "text"
    .parameter "prefixs"

    .prologue
    const/4 v11, 0x0

    .line 629
    const/4 v7, 0x0

    .line 630
    .local v7, result:I
    const/4 v2, 0x0

    .line 631
    .local v2, index:I
    const/4 v8, 0x0

    .line 632
    .local v8, startIndex:I
    const/4 v9, 0x2

    new-array v4, v9, [I

    .line 634
    .local v4, match:[I
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2b

    if-ne v9, v10, :cond_3

    .line 635
    const/4 v8, 0x1

    .line 646
    :cond_0
    :goto_0
    if-lez v8, :cond_1

    .line 647
    sget-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->FORMAT_COUNTRY_CODES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v5, v0, v1

    .line 648
    .local v5, pattern:Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 649
    invoke-virtual {p0, v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 650
    move v7, v2

    .line 651
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    .line 656
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v5           #pattern:Ljava/lang/String;
    :cond_1
    if-nez v7, :cond_2

    .line 657
    const/4 v8, 0x0

    .line 659
    :cond_2
    aput v8, v4, v11

    .line 660
    const/4 v9, 0x1

    aput v7, v4, v9

    .line 661
    return-object v4

    .line 638
    :cond_3
    move-object v0, p1

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_2
    if-ge v1, v3, :cond_0

    aget-object v6, v0, v1

    .line 639
    .local v6, prefix:Ljava/lang/String;
    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 640
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    .line 641
    goto :goto_0

    .line 638
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 647
    .end local v6           #prefix:Ljava/lang/String;
    .restart local v5       #pattern:Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static getFormatTypeByCommonPrefix(Ljava/lang/String;)[I
    .locals 13
    .parameter "text"

    .prologue
    const/16 v12, 0x30

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 592
    const/4 v6, 0x0

    .line 593
    .local v6, result:I
    const/4 v2, 0x0

    .line 594
    .local v2, index:I
    const/4 v7, 0x0

    .line 595
    .local v7, startIndex:I
    const/4 v8, 0x2

    new-array v4, v8, [I

    .line 597
    .local v4, match:[I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2b

    if-ne v8, v9, :cond_3

    .line 598
    const/4 v7, 0x1

    .line 602
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 603
    sget-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->FORMAT_COUNTRY_CODES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v5, v0, v1

    .line 604
    .local v5, pattern:Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 605
    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 606
    move v6, v2

    .line 607
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    .line 612
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v5           #pattern:Ljava/lang/String;
    :cond_1
    if-nez v6, :cond_2

    .line 613
    const/4 v7, 0x0

    .line 615
    :cond_2
    aput v7, v4, v10

    .line 616
    aput v6, v4, v11

    .line 617
    return-object v4

    .line 599
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v11, :cond_0

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v12, :cond_0

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v12, :cond_0

    .line 600
    const/4 v7, 0x2

    goto :goto_0

    .line 603
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #pattern:Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .locals 3
    .parameter "locale"

    .prologue
    .line 258
    invoke-static {}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getDefaultSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, simIso:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFormatTypeForLocale Get sim sio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->log(Ljava/lang/String;)V

    .line 260
    invoke-static {v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .locals 8
    .parameter "country"

    .prologue
    .line 309
    const/4 v5, 0x0

    .line 310
    .local v5, type:I
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 311
    invoke-static {p0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatTypeFromCountryCodeInternal(Ljava/lang/String;)I

    move-result v5

    .line 313
    if-nez v5, :cond_1

    .line 314
    const/4 v2, 0x0

    .line 315
    .local v2, index:I
    sget-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->FORMAT_COUNTRY_NAMES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 316
    .local v4, name:Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 317
    invoke-virtual {v4, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 318
    move v5, v2

    .line 323
    .end local v4           #name:Ljava/lang/String;
    :cond_0
    if-nez v5, :cond_1

    const-string v6, "UK"

    invoke-virtual {v6, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 324
    const/4 v5, 0x7

    .line 328
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #index:I
    .end local v3           #len$:I
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get Format Type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->log(Ljava/lang/String;)V

    .line 329
    return v5

    .line 315
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #index:I
    .restart local v3       #len$:I
    .restart local v4       #name:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getFormatTypeFromCountryCodeInternal(Ljava/lang/String;)I
    .locals 3
    .parameter "country"

    .prologue
    .line 291
    sget-object v2, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    .line 292
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 293
    sget-object v2, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 294
    const/4 v2, 0x1

    .line 300
    :goto_1
    return v2

    .line 292
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_1
    const-string v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 298
    const/4 v2, 0x2

    goto :goto_1

    .line 300
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getFormatTypeFromNumber(Ljava/lang/String;I)[I
    .locals 2
    .parameter "text"
    .parameter "defaultFormatType"

    .prologue
    .line 675
    const/4 v0, 0x0

    .line 676
    .local v0, match:[I
    packed-switch p1, :pswitch_data_0

    .line 725
    :goto_0
    return-object v0

    .line 692
    :pswitch_0
    invoke-static {p0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatTypeByCommonPrefix(Ljava/lang/String;)[I

    move-result-object v0

    .line 693
    goto :goto_0

    .line 695
    :pswitch_1
    sget-object v1, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->TAIWAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 696
    goto :goto_0

    .line 698
    :pswitch_2
    sget-object v1, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->HONGKONG_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 699
    goto :goto_0

    .line 701
    :pswitch_3
    sget-object v1, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->NANP_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 702
    goto :goto_0

    .line 704
    :pswitch_4
    sget-object v1, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->JAPAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 705
    goto :goto_0

    .line 707
    :pswitch_5
    sget-object v1, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->FRANCE_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 708
    goto :goto_0

    .line 710
    :pswitch_6
    sget-object v1, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->SINGAPORE_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 711
    goto :goto_0

    .line 713
    :pswitch_7
    sget-object v1, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->INDONESIA_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 714
    goto :goto_0

    .line 716
    :pswitch_8
    sget-object v1, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->THAILAND_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 717
    goto :goto_0

    .line 719
    :pswitch_9
    sget-object v1, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->AUSTRALIA_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 720
    goto :goto_0

    .line 722
    :pswitch_a
    sget-object v1, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->BRAZIL_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_0

    .line 676
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method

.method public static log(Ljava/lang/String;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 2424
    return-void
.end method

.method static mtkFormatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 13
    .parameter "text"
    .parameter "defaultFormatType"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 450
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MTK Format Number:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->log(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 452
    .local v2, length:I
    const/4 v9, 0x6

    if-ge v2, v9, :cond_1

    .line 581
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 459
    .restart local p0
    :cond_1
    const-string v9, "*"

    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "#"

    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "@"

    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 460
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->removeAllDash(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 463
    :cond_3
    move v1, p1

    .line 465
    .local v1, formatType:I
    invoke-static {p0, p1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatTypeFromNumber(Ljava/lang/String;I)[I

    move-result-object v3

    .line 466
    .local v3, match:[I
    const/4 v8, 0x0

    .line 467
    .local v8, startIndex:I
    if-eqz v3, :cond_4

    aget v9, v3, v12

    if-eqz v9, :cond_4

    .line 468
    aget v1, v3, v12

    .line 469
    aget v8, v3, v11

    .line 473
    :cond_4
    add-int/lit8 v9, v8, 0x4

    if-lt v2, v9, :cond_0

    .line 475
    add-int/lit8 v9, v8, 0xf

    if-gt v2, v9, :cond_0

    .line 478
    move-object v4, p0

    .line 479
    .local v4, result:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v0, -0x1

    .line 482
    .local v0, blankPosition:I
    invoke-static {v5, v8}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->removeAllDashAndFormatBlank(Ljava/lang/StringBuilder;I)I

    move-result v0

    .line 484
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v10, v8, 0x4

    if-lt v9, v10, :cond_5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v10, v8, 0x4

    if-ne v9, v10, :cond_6

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-ne v9, v10, :cond_6

    .line 485
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 488
    :cond_6
    packed-switch v1, :pswitch_data_0

    .line 579
    invoke-static {v5}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->removeAllDash(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object p0, v4

    .line 581
    goto :goto_0

    .line 490
    :pswitch_0
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatChinaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 491
    goto :goto_1

    .line 494
    :pswitch_1
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatHeightLengthWithoutRegionCodeNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 495
    goto :goto_1

    .line 497
    :pswitch_2
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatMacauNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 498
    goto :goto_1

    .line 500
    :pswitch_3
    const/4 v6, 0x0

    .line 501
    .local v6, ssb:Landroid/text/SpannableStringBuilder;
    if-ltz v0, :cond_7

    .line 502
    new-instance v6, Landroid/text/SpannableStringBuilder;

    .end local v6           #ssb:Landroid/text/SpannableStringBuilder;
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 503
    .restart local v6       #ssb:Landroid/text/SpannableStringBuilder;
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    .line 504
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v5, v11, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 506
    :cond_7
    new-instance v6, Landroid/text/SpannableStringBuilder;

    .end local v6           #ssb:Landroid/text/SpannableStringBuilder;
    invoke-direct {v6, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 507
    .restart local v6       #ssb:Landroid/text/SpannableStringBuilder;
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    .line 508
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 510
    goto :goto_1

    .line 512
    .end local v6           #ssb:Landroid/text/SpannableStringBuilder;
    :pswitch_4
    const/4 v7, 0x0

    .line 513
    .local v7, ssb2:Landroid/text/SpannableStringBuilder;
    if-ltz v0, :cond_8

    .line 514
    new-instance v7, Landroid/text/SpannableStringBuilder;

    .end local v7           #ssb2:Landroid/text/SpannableStringBuilder;
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 515
    .restart local v7       #ssb2:Landroid/text/SpannableStringBuilder;
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    .line 516
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v5, v11, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 518
    :cond_8
    new-instance v7, Landroid/text/SpannableStringBuilder;

    .end local v7           #ssb2:Landroid/text/SpannableStringBuilder;
    invoke-direct {v7, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 519
    .restart local v7       #ssb2:Landroid/text/SpannableStringBuilder;
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    .line 520
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 522
    goto :goto_1

    .line 524
    .end local v7           #ssb2:Landroid/text/SpannableStringBuilder;
    :pswitch_5
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatTaiwanNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 525
    goto :goto_1

    .line 527
    :pswitch_6
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatVietnamNubmer(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 528
    goto :goto_1

    .line 530
    :pswitch_7
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatPortugalNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 531
    goto :goto_1

    .line 533
    :pswitch_8
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatPolandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 534
    goto :goto_1

    .line 536
    :pswitch_9
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatAustraliaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 537
    goto/16 :goto_1

    .line 539
    :pswitch_a
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatNewZealandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 540
    goto/16 :goto_1

    .line 542
    :pswitch_b
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatThailandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 543
    goto/16 :goto_1

    .line 545
    :pswitch_c
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatIndonesiaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 546
    goto/16 :goto_1

    .line 548
    :pswitch_d
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatMalaysiaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 549
    goto/16 :goto_1

    .line 551
    :pswitch_e
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatSpainNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 552
    goto/16 :goto_1

    .line 554
    :pswitch_f
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatRussianNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 555
    goto/16 :goto_1

    .line 557
    :pswitch_10
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatGermanyNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 558
    goto/16 :goto_1

    .line 560
    :pswitch_11
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatIndiaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 561
    goto/16 :goto_1

    .line 563
    :pswitch_12
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatItalyNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 564
    goto/16 :goto_1

    .line 566
    :pswitch_13
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatFranceNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 567
    goto/16 :goto_1

    .line 569
    :pswitch_14
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatEnglandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 570
    goto/16 :goto_1

    .line 572
    :pswitch_15
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatBrazilNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 573
    goto/16 :goto_1

    .line 575
    :pswitch_16
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatTurkeyNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 576
    goto/16 :goto_1

    .line 488
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_10
        :pswitch_f
        :pswitch_11
        :pswitch_e
        :pswitch_d
        :pswitch_1
        :pswitch_c
        :pswitch_b
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method private static removeAllDash(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3
    .parameter "sb"

    .prologue
    .line 734
    const/4 v0, 0x0

    .line 735
    .local v0, p:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 736
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 737
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 739
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 742
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static removeAllDashAndFormatBlank(Ljava/lang/StringBuilder;I)I
    .locals 4
    .parameter "sb"
    .parameter "startIndex"

    .prologue
    .line 752
    const/4 v1, 0x0

    .line 753
    .local v1, p:I
    const/4 v0, -0x1

    .line 754
    .local v0, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 755
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 756
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 758
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 761
    :cond_2
    if-lez p1, :cond_3

    .line 763
    move v0, p1

    .line 764
    const-string v2, " "

    invoke-virtual {p0, v0, v0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    :cond_3
    return v0
.end method

.method private static removeTrailingDashes(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3
    .parameter "sb"

    .prologue
    .line 776
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 777
    .local v0, len:I
    :goto_0
    if-lez v0, :cond_0

    .line 778
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 779
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 780
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 785
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
