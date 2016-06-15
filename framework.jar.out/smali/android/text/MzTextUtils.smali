.class public Landroid/text/MzTextUtils;
.super Ljava/lang/Object;
.source "MzTextUtils.java"


# static fields
.field private static final CHAR_FIRST_CJK:C = '\u2e80'

.field private static final CHAR_HYPHEN:C = '-'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final CH_NON_ENDERS:Ljava/lang/String; = "$([{\u00a5\u2018\u201c\u2035\u3008\u300a\u300c\u300e\u3010\u3014\u3016\u301d\ufe35\ufe37\ufe39\ufe3b\ufe3d\ufe3f\ufe41\ufe43\ufe59\ufe5b\ufe5d\uff04\uff08\uff0e\uff10\uff11\uff12\uff13\uff14\uff15\uff16\uff17\uff18\uff19\uff3b\uff58\uff5b\uffe1\uffe5"

.field private static final CH_NON_STARTERS:Ljava/lang/String; = "!%),.:;?]}\u00a8\u00b7\u02c7\u02c9\u2013\u2014\u2016\u2019\u201d\u2025\u2026\u2027\u2030\u2032\u2103\u2236\u2574\u25cf\u3000\u3001\u3002\u3003\u3005\u3009\u300b\u300d\u300f\u3011\u3015\u3017\u301e\ufe30\ufe31\ufe33\ufe34\ufe36\ufe38\ufe3a\ufe3c\ufe3e\ufe40\ufe42\ufe44\ufe4f\ufe50\ufe51\ufe52\ufe54\ufe55\ufe56\ufe57\ufe5a\ufe5c\uff01\uff02\uff05\uff07\uff09\uff0c\uff0e\uff1a\uff1b\uff1f\uff2f\uff3d\uff40\uff5c\uff5d\uff5e\uffe0"

.field protected static final ELLIPSIS_NORMAL:Ljava/lang/String; = "\u2026"

.field protected static final ELLIPSIS_TWO_DOTS:Ljava/lang/String; = " \u2025"

.field private static final EN_NON_ENDERS:Ljava/lang/String; = "([{\u00ab"

.field private static final EN_NON_STARTERS:Ljava/lang/String; = ")]}%\u00b0\u00b7\u00bb!?/."

.field private static final PAIR_SYMBOLS:[Ljava/lang/CharSequence;

.field private static final VOICE_LOADING_IMG_ARRAY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 297
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "("

    aput-object v1, v0, v3

    const-string v1, ")"

    aput-object v1, v0, v4

    const-string v1, "["

    aput-object v1, v0, v5

    const-string v1, "]"

    aput-object v1, v0, v6

    const-string/jumbo v1, "{"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "}"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u300c"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u300d"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u201c"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "\u201d"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\u2018"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "\u2019"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "\uff08"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "\uff09"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "\u3010"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "\u3011"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "\u300e"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "\u300f"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "\u300a"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "\u300b"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "\u3008"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "\u3009"

    aput-object v2, v0, v1

    sput-object v0, Landroid/text/MzTextUtils;->PAIR_SYMBOLS:[Ljava/lang/CharSequence;

    .line 313
    new-array v0, v7, [I

    sget v1, Lcom/flyme/internal/R$drawable;->mz_voice_loading_00:I

    aput v1, v0, v3

    sget v1, Lcom/flyme/internal/R$drawable;->mz_voice_loading_01:I

    aput v1, v0, v4

    sget v1, Lcom/flyme/internal/R$drawable;->mz_voice_loading_02:I

    aput v1, v0, v5

    sget v1, Lcom/flyme/internal/R$drawable;->mz_voice_loading_03:I

    aput v1, v0, v6

    sput-object v0, Landroid/text/MzTextUtils;->VOICE_LOADING_IMG_ARRAY:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastVoiceLoadingImg()I
    .locals 1

    .prologue
    .line 330
    sget v0, Lcom/flyme/internal/R$drawable;->mz_voice_loading_03:I

    return v0
.end method

.method public static getVoiceLoadingImgArray()[I
    .locals 1

    .prologue
    .line 326
    sget-object v0, Landroid/text/MzTextUtils;->VOICE_LOADING_IMG_ARRAY:[I

    return-object v0
.end method

.method private static final isIdeographic(CZ)Z
    .locals 3
    .param p0, "c"    # C
    .param p1, "includeNonStarters"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 124
    const/16 v2, 0x2e80

    if-lt p0, v2, :cond_1

    const/16 v2, 0x2fff

    if-gt p0, v2, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    const/16 v2, 0x3000

    if-eq p0, v2, :cond_0

    .line 130
    const/16 v2, 0x3040

    if-lt p0, v2, :cond_2

    const/16 v2, 0x309f

    if-gt p0, v2, :cond_2

    .line 131
    if-nez p1, :cond_0

    .line 132
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 149
    goto :goto_0

    .line 154
    :cond_2
    const/16 v2, 0x30a0

    if-lt p0, v2, :cond_3

    const/16 v2, 0x30ff

    if-gt p0, v2, :cond_3

    .line 155
    if-nez p1, :cond_0

    .line 156
    sparse-switch p0, :sswitch_data_1

    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 174
    goto :goto_0

    .line 179
    :cond_3
    const/16 v2, 0x3400

    if-lt p0, v2, :cond_4

    const/16 v2, 0x4db5

    if-le p0, v2, :cond_0

    .line 182
    :cond_4
    const/16 v2, 0x4e00

    if-lt p0, v2, :cond_5

    const v2, 0x9fbb

    if-le p0, v2, :cond_0

    .line 185
    :cond_5
    const v2, 0xf900

    if-lt p0, v2, :cond_6

    const v2, 0xfad9

    if-le p0, v2, :cond_0

    .line 188
    :cond_6
    const v2, 0xa000

    if-lt p0, v2, :cond_7

    const v2, 0xa48f

    if-le p0, v2, :cond_0

    .line 191
    :cond_7
    const v2, 0xa490

    if-lt p0, v2, :cond_8

    const v2, 0xa4cf

    if-le p0, v2, :cond_0

    .line 194
    :cond_8
    const v2, 0xfe62

    if-lt p0, v2, :cond_9

    const v2, 0xfe66

    if-le p0, v2, :cond_0

    .line 197
    :cond_9
    const v2, 0xff10

    if-lt p0, v2, :cond_a

    const v2, 0xff19

    if-le p0, v2, :cond_0

    :cond_a
    move v0, v1

    .line 201
    goto :goto_0

    .line 132
    :sswitch_data_0
    .sparse-switch
        0x3041 -> :sswitch_0
        0x3043 -> :sswitch_0
        0x3045 -> :sswitch_0
        0x3047 -> :sswitch_0
        0x3049 -> :sswitch_0
        0x3063 -> :sswitch_0
        0x3083 -> :sswitch_0
        0x3085 -> :sswitch_0
        0x3087 -> :sswitch_0
        0x308e -> :sswitch_0
        0x3095 -> :sswitch_0
        0x3096 -> :sswitch_0
        0x309b -> :sswitch_0
        0x309c -> :sswitch_0
        0x309d -> :sswitch_0
        0x309e -> :sswitch_0
    .end sparse-switch

    .line 156
    :sswitch_data_1
    .sparse-switch
        0x30a0 -> :sswitch_1
        0x30a1 -> :sswitch_1
        0x30a3 -> :sswitch_1
        0x30a5 -> :sswitch_1
        0x30a7 -> :sswitch_1
        0x30a9 -> :sswitch_1
        0x30c3 -> :sswitch_1
        0x30e3 -> :sswitch_1
        0x30e5 -> :sswitch_1
        0x30e7 -> :sswitch_1
        0x30ee -> :sswitch_1
        0x30f5 -> :sswitch_1
        0x30f6 -> :sswitch_1
        0x30fb -> :sswitch_1
        0x30fc -> :sswitch_1
        0x30fd -> :sswitch_1
        0x30fe -> :sswitch_1
    .end sparse-switch
.end method

.method public static final isLineBreak([CIIIZ)Z
    .locals 6
    .param p0, "chs"    # [C
    .param p1, "index"    # I
    .param p2, "st"    # I
    .param p3, "en"    # I
    .param p4, "hasIdeographic"    # Z

    .prologue
    const/16 v5, 0x2e80

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 76
    if-gez p2, :cond_0

    .line 77
    const/4 p2, 0x0

    .line 79
    :cond_0
    array-length v4, p0

    if-le p3, v4, :cond_1

    .line 80
    array-length p3, p0

    .line 82
    :cond_1
    if-lt p1, p2, :cond_2

    if-lt p1, p3, :cond_4

    :cond_2
    move v2, v3

    .line 111
    :cond_3
    :goto_0
    return v2

    .line 86
    :cond_4
    aget-char v0, p0, p1

    .line 87
    .local v0, "c":C
    const/16 v4, 0x20

    if-eq v0, v4, :cond_3

    const/16 v4, 0x9

    if-eq v0, v4, :cond_3

    .line 91
    add-int/lit8 v4, p1, 0x1

    if-ge v4, p3, :cond_a

    add-int/lit8 v4, p1, 0x1

    aget-char v1, p0, v4

    .line 93
    .local v1, "c2":C
    :goto_1
    const/16 v4, 0x2f

    if-eq v0, v4, :cond_5

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_6

    :cond_5
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 97
    :cond_6
    if-nez p4, :cond_8

    if-lt v0, v5, :cond_7

    invoke-static {v0, v2}, Landroid/text/MzTextUtils;->isIdeographic(CZ)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    if-lt v1, v5, :cond_b

    invoke-static {v1, v3}, Landroid/text/MzTextUtils;->isIdeographic(CZ)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 99
    :cond_8
    const-string v4, "([{\u00ab"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_9

    const-string v4, ")]}%\u00b0\u00b7\u00bb!?/."

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_9

    const-string v4, "$([{\u00a5\u2018\u201c\u2035\u3008\u300a\u300c\u300e\u3010\u3014\u3016\u301d\ufe35\ufe37\ufe39\ufe3b\ufe3d\ufe3f\ufe41\ufe43\ufe59\ufe5b\ufe5d\uff04\uff08\uff0e\uff10\uff11\uff12\uff13\uff14\uff15\uff16\uff17\uff18\uff19\uff3b\uff58\uff5b\uffe1\uffe5"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_9

    const-string v4, "!%),.:;?]}\u00a8\u00b7\u02c7\u02c9\u2013\u2014\u2016\u2019\u201d\u2025\u2026\u2027\u2030\u2032\u2103\u2236\u2574\u25cf\u3000\u3001\u3002\u3003\u3005\u3009\u300b\u300d\u300f\u3011\u3015\u3017\u301e\ufe30\ufe31\ufe33\ufe34\ufe36\ufe38\ufe3a\ufe3c\ufe3e\ufe40\ufe42\ufe44\ufe4f\ufe50\ufe51\ufe52\ufe54\ufe55\ufe56\ufe57\ufe5a\ufe5c\uff01\uff02\uff05\uff07\uff09\uff0c\uff0e\uff1a\uff1b\uff1f\uff2f\uff3d\uff40\uff5c\uff5d\uff5e\uffe0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_3

    :cond_9
    move v2, v3

    .line 101
    goto :goto_0

    .end local v1    # "c2":C
    :cond_a
    move v1, v3

    .line 91
    goto :goto_1

    .line 107
    .restart local v1    # "c2":C
    :cond_b
    const-string v4, "!%),.:;?]}\u00a8\u00b7\u02c7\u02c9\u2013\u2014\u2016\u2019\u201d\u2025\u2026\u2027\u2030\u2032\u2103\u2236\u2574\u25cf\u3000\u3001\u3002\u3003\u3005\u3009\u300b\u300d\u300f\u3011\u3015\u3017\u301e\ufe30\ufe31\ufe33\ufe34\ufe36\ufe38\ufe3a\ufe3c\ufe3e\ufe40\ufe42\ufe44\ufe4f\ufe50\ufe51\ufe52\ufe54\ufe55\ufe56\ufe57\ufe5a\ufe5c\uff01\uff02\uff05\uff07\uff09\uff0c\uff0e\uff1a\uff1b\uff1f\uff2f\uff3d\uff40\uff5c\uff5d\uff5e\uffe0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_3

    const-string v4, ")]}%\u00b0\u00b7\u00bb!?/."

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_3

    move v2, v3

    .line 111
    goto :goto_0
.end method

.method public static isPairEnd(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "sym"    # Ljava/lang/CharSequence;

    .prologue
    .line 272
    sget-object v2, Landroid/text/MzTextUtils;->PAIR_SYMBOLS:[Ljava/lang/CharSequence;

    array-length v0, v2

    .line 273
    .local v0, "N":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 274
    sget-object v2, Landroid/text/MzTextUtils;->PAIR_SYMBOLS:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    const/4 v2, 0x1

    .line 278
    :goto_1
    return v2

    .line 273
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 278
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isPairStart(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "sym"    # Ljava/lang/CharSequence;

    .prologue
    .line 257
    sget-object v2, Landroid/text/MzTextUtils;->PAIR_SYMBOLS:[Ljava/lang/CharSequence;

    array-length v0, v2

    .line 258
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 259
    sget-object v2, Landroid/text/MzTextUtils;->PAIR_SYMBOLS:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    const/4 v2, 0x1

    .line 263
    :goto_1
    return v2

    .line 258
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 263
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isPairSymbols(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "start"    # Ljava/lang/CharSequence;
    .param p1, "end"    # Ljava/lang/CharSequence;

    .prologue
    .line 287
    sget-object v2, Landroid/text/MzTextUtils;->PAIR_SYMBOLS:[Ljava/lang/CharSequence;

    array-length v0, v2

    .line 288
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 289
    sget-object v2, Landroid/text/MzTextUtils;->PAIR_SYMBOLS:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/MzTextUtils;->PAIR_SYMBOLS:[Ljava/lang/CharSequence;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    const/4 v2, 0x1

    .line 294
    :goto_1
    return v2

    .line 288
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 294
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static removeComposing(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 24
    if-nez p0, :cond_1

    .line 25
    const/4 p0, 0x0

    .line 34
    :cond_0
    :goto_0
    return-object p0

    .line 27
    :cond_1
    instance-of v2, p0, Landroid/text/Spannable;

    if-eqz v2, :cond_0

    move-object v2, p0

    .line 28
    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .local v1, "start":I
    move-object v2, p0

    .line 29
    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    .line 30
    .local v0, "end":I
    if-ltz v1, :cond_0

    if-ltz v0, :cond_0

    if-gt v1, v0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-interface {p0, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p0, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static toPairOtherHalf(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 14
    .param p0, "sym"    # Ljava/lang/CharSequence;

    .prologue
    .line 211
    sget-object v12, Landroid/text/MzTextUtils;->PAIR_SYMBOLS:[Ljava/lang/CharSequence;

    array-length v0, v12

    .line 212
    .local v0, "N":I
    const/4 v10, 0x0

    .local v10, "symIndex":I
    :goto_0
    if-ge v10, v0, :cond_8

    .line 213
    sget-object v12, Landroid/text/MzTextUtils;->PAIR_SYMBOLS:[Ljava/lang/CharSequence;

    aget-object v12, v12, v10

    invoke-static {p0, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 215
    and-int/lit8 v12, v10, 0x1

    if-nez v12, :cond_4

    .line 216
    sget-object v12, Landroid/text/MzTextUtils;->PAIR_SYMBOLS:[Ljava/lang/CharSequence;

    add-int/lit8 v13, v10, 0x1

    aget-object v11, v12, v13

    .line 220
    .local v11, "text":Ljava/lang/CharSequence;
    :goto_1
    instance-of v12, p0, Landroid/text/Spanned;

    if-eqz v12, :cond_6

    .line 221
    invoke-static {v11}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v5

    .line 223
    .local v5, "result":Landroid/text/Spannable;
    const/4 v9, 0x0

    .line 224
    .local v9, "start":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .local v2, "end":I
    move-object v6, p0

    .line 225
    check-cast v6, Landroid/text/Spanned;

    .line 226
    .local v6, "sp":Landroid/text/Spanned;
    const/4 v12, 0x0

    const-class v13, Ljava/lang/Object;

    invoke-interface {v6, v12, v2, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    .line 228
    .local v7, "spans":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v12, v7

    if-ge v4, v12, :cond_5

    .line 229
    aget-object v12, v7, v4

    invoke-interface {v6, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    add-int/lit8 v8, v12, 0x0

    .line 230
    .local v8, "st":I
    aget-object v12, v7, v4

    invoke-interface {v6, v12}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    add-int/lit8 v1, v12, 0x0

    .line 231
    .local v1, "en":I
    aget-object v12, v7, v4

    invoke-interface {v6, v12}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    .line 233
    .local v3, "fl":I
    if-gez v8, :cond_0

    const/4 v8, 0x0

    .line 234
    :cond_0
    add-int/lit8 v12, v2, 0x0

    if-le v8, v12, :cond_1

    .line 235
    add-int/lit8 v8, v2, 0x0

    .line 237
    :cond_1
    if-gez v1, :cond_2

    const/4 v1, 0x0

    .line 238
    :cond_2
    add-int/lit8 v12, v2, 0x0

    if-le v1, v12, :cond_3

    .line 239
    add-int/lit8 v1, v2, 0x0

    .line 241
    :cond_3
    aget-object v12, v7, v4

    invoke-interface {v5, v12, v8, v1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 228
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 218
    .end local v1    # "en":I
    .end local v2    # "end":I
    .end local v3    # "fl":I
    .end local v4    # "i":I
    .end local v5    # "result":Landroid/text/Spannable;
    .end local v6    # "sp":Landroid/text/Spanned;
    .end local v7    # "spans":[Ljava/lang/Object;
    .end local v8    # "st":I
    .end local v9    # "start":I
    .end local v11    # "text":Ljava/lang/CharSequence;
    :cond_4
    sget-object v12, Landroid/text/MzTextUtils;->PAIR_SYMBOLS:[Ljava/lang/CharSequence;

    add-int/lit8 v13, v10, -0x1

    aget-object v11, v12, v13

    .restart local v11    # "text":Ljava/lang/CharSequence;
    goto :goto_1

    .line 243
    .restart local v2    # "end":I
    .restart local v4    # "i":I
    .restart local v5    # "result":Landroid/text/Spannable;
    .restart local v6    # "sp":Landroid/text/Spanned;
    .restart local v7    # "spans":[Ljava/lang/Object;
    .restart local v9    # "start":I
    :cond_5
    move-object v11, v5

    .line 248
    .end local v2    # "end":I
    .end local v4    # "i":I
    .end local v5    # "result":Landroid/text/Spannable;
    .end local v6    # "sp":Landroid/text/Spanned;
    .end local v7    # "spans":[Ljava/lang/Object;
    .end local v9    # "start":I
    .end local v11    # "text":Ljava/lang/CharSequence;
    :cond_6
    :goto_3
    return-object v11

    .line 212
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 248
    :cond_8
    const/4 v11, 0x0

    goto :goto_3
.end method
