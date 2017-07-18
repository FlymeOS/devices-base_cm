.class public Lcom/google/android/mms/pdu/CharacterSets;
.super Ljava/lang/Object;
.source "CharacterSets.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final ANY_CHARSET:I = 0x0

.field public static final BIG5:I = 0x7ea

.field public static final DEFAULT_CHARSET:I = 0x6a

.field public static final DEFAULT_CHARSET_NAME:Ljava/lang/String; = "utf-8"

.field public static final ISO_8859_1:I = 0x4

.field public static final ISO_8859_2:I = 0x5

.field public static final ISO_8859_3:I = 0x6

.field public static final ISO_8859_4:I = 0x7

.field public static final ISO_8859_5:I = 0x8

.field public static final ISO_8859_6:I = 0x9

.field public static final ISO_8859_7:I = 0xa

.field public static final ISO_8859_8:I = 0xb

.field public static final ISO_8859_9:I = 0xc

.field private static final MIBENUM_NUMBERS:[I

.field private static final MIBENUM_TO_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIMENAME_ANY_CHARSET:Ljava/lang/String; = "*"

.field public static final MIMENAME_BIG5:Ljava/lang/String; = "big5"

.field public static final MIMENAME_ISO_8859_1:Ljava/lang/String; = "iso-8859-1"

.field public static final MIMENAME_ISO_8859_2:Ljava/lang/String; = "iso-8859-2"

.field public static final MIMENAME_ISO_8859_3:Ljava/lang/String; = "iso-8859-3"

.field public static final MIMENAME_ISO_8859_4:Ljava/lang/String; = "iso-8859-4"

.field public static final MIMENAME_ISO_8859_5:Ljava/lang/String; = "iso-8859-5"

.field public static final MIMENAME_ISO_8859_6:Ljava/lang/String; = "iso-8859-6"

.field public static final MIMENAME_ISO_8859_7:Ljava/lang/String; = "iso-8859-7"

.field public static final MIMENAME_ISO_8859_8:Ljava/lang/String; = "iso-8859-8"

.field public static final MIMENAME_ISO_8859_9:Ljava/lang/String; = "iso-8859-9"

.field public static final MIMENAME_SHIFT_JIS:Ljava/lang/String; = "shift_JIS"

.field public static final MIMENAME_UCS2:Ljava/lang/String; = "iso-10646-ucs-2"

.field public static final MIMENAME_US_ASCII:Ljava/lang/String; = "us-ascii"

.field public static final MIMENAME_UTF_16:Ljava/lang/String; = "utf-16"

.field public static final MIMENAME_UTF_8:Ljava/lang/String; = "utf-8"

.field private static final MIME_NAMES:[Ljava/lang/String;

.field private static final NAME_TO_MIBENUM_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHIFT_JIS:I = 0x11

.field public static final UCS2:I = 0x3e8

.field public static final US_ASCII:I = 0x3

.field public static final UTF_16:I = 0x3f7

.field public static final UTF_8:I = 0x6a


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v2, Lcom/google/android/mms/pdu/CharacterSets;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    sput-boolean v2, Lcom/google/android/mms/pdu/CharacterSets;->-assertionsDisabled:Z

    .line 56
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_NUMBERS:[I

    .line 100
    new-array v2, v5, [Ljava/lang/String;

    .line 101
    const-string/jumbo v5, "*"

    aput-object v5, v2, v3

    .line 102
    const-string/jumbo v5, "us-ascii"

    aput-object v5, v2, v4

    .line 103
    const-string/jumbo v5, "iso-8859-1"

    const/4 v6, 0x2

    aput-object v5, v2, v6

    .line 104
    const-string/jumbo v5, "iso-8859-2"

    const/4 v6, 0x3

    aput-object v5, v2, v6

    .line 105
    const-string/jumbo v5, "iso-8859-3"

    const/4 v6, 0x4

    aput-object v5, v2, v6

    .line 106
    const-string/jumbo v5, "iso-8859-4"

    const/4 v6, 0x5

    aput-object v5, v2, v6

    .line 107
    const-string/jumbo v5, "iso-8859-5"

    const/4 v6, 0x6

    aput-object v5, v2, v6

    .line 108
    const-string/jumbo v5, "iso-8859-6"

    const/4 v6, 0x7

    aput-object v5, v2, v6

    .line 109
    const-string/jumbo v5, "iso-8859-7"

    const/16 v6, 0x8

    aput-object v5, v2, v6

    .line 110
    const-string/jumbo v5, "iso-8859-8"

    const/16 v6, 0x9

    aput-object v5, v2, v6

    .line 111
    const-string/jumbo v5, "iso-8859-9"

    const/16 v6, 0xa

    aput-object v5, v2, v6

    .line 112
    const-string/jumbo v5, "shift_JIS"

    const/16 v6, 0xb

    aput-object v5, v2, v6

    .line 113
    const-string/jumbo v5, "utf-8"

    const/16 v6, 0xc

    aput-object v5, v2, v6

    .line 114
    const-string/jumbo v5, "big5"

    const/16 v6, 0xd

    aput-object v5, v2, v6

    .line 115
    const-string/jumbo v5, "iso-10646-ucs-2"

    const/16 v6, 0xe

    aput-object v5, v2, v6

    .line 116
    const-string/jumbo v5, "utf-16"

    const/16 v6, 0xf

    aput-object v5, v2, v6

    .line 100
    sput-object v2, Lcom/google/android/mms/pdu/CharacterSets;->MIME_NAMES:[Ljava/lang/String;

    .line 124
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_TO_NAME_MAP:Ljava/util/HashMap;

    .line 125
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/android/mms/pdu/CharacterSets;->NAME_TO_MIBENUM_MAP:Ljava/util/HashMap;

    .line 126
    sget-boolean v2, Lcom/google/android/mms/pdu/CharacterSets;->-assertionsDisabled:Z

    if-nez v2, :cond_2

    sget-object v2, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_NUMBERS:[I

    array-length v2, v2

    sget-object v5, Lcom/google/android/mms/pdu/CharacterSets;->MIME_NAMES:[Ljava/lang/String;

    array-length v5, v5

    if-ne v2, v5, :cond_1

    :goto_1
    if-nez v4, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move v2, v4

    goto/16 :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    .line 127
    :cond_2
    sget-object v2, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_NUMBERS:[I

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .line 128
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-gt v1, v0, :cond_3

    .line 129
    sget-object v2, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_TO_NAME_MAP:Ljava/util/HashMap;

    sget-object v3, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_NUMBERS:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/google/android/mms/pdu/CharacterSets;->MIME_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v2, Lcom/google/android/mms/pdu/CharacterSets;->NAME_TO_MIBENUM_MAP:Ljava/util/HashMap;

    sget-object v3, Lcom/google/android/mms/pdu/CharacterSets;->MIME_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_NUMBERS:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 23
    :cond_3
    return-void

    .line 56
    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0x11
        0x6a
        0x7ea
        0x3e8
        0x3f7
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMibEnumValue(Ljava/lang/String;)I
    .locals 2
    .param p0, "mimeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 162
    if-nez p0, :cond_0

    .line 163
    const/4 v1, -0x1

    return v1

    .line 166
    :cond_0
    sget-object v1, Lcom/google/android/mms/pdu/CharacterSets;->NAME_TO_MIBENUM_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 167
    .local v0, "mibEnumValue":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 168
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v1

    .line 170
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getMimeName(I)Ljava/lang/String;
    .locals 3
    .param p0, "mibEnumValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 146
    sget-object v1, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_TO_NAME_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 148
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v1

    .line 150
    :cond_0
    return-object v0
.end method
