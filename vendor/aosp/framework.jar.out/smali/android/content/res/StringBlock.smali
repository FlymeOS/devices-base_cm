.class final Landroid/content/res/StringBlock;
.super Ljava/lang/Object;
.source "StringBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/StringBlock$StyleIDs;,
        Landroid/content/res/StringBlock$Height;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetManager"

.field private static final localLOGV:Z


# instance fields
.field private final mNative:J

.field private final mOwnsNative:Z

.field private mSparseStrings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mStrings:[Ljava/lang/CharSequence;

.field mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

.field private final mUseSparse:Z


# direct methods
.method constructor <init>(JZ)V
    .locals 1
    .param p1, "obj"    # J
    .param p3, "useSparse"    # Z

    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 482
    iput-wide p1, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 483
    iput-boolean p3, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 484
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 481
    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "useSparse"    # Z

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 55
    invoke-static {p1, p2, p3}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 56
    iput-boolean p4, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 54
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "useSparse"    # Z

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 47
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 48
    iput-boolean p2, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 46
    return-void
.end method

.method private static addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 3
    .param p0, "buffer"    # Landroid/text/Spannable;
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/16 v2, 0xa

    .line 361
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 363
    .local v0, "len":I
    if-eqz p2, :cond_0

    if-eq p2, v0, :cond_0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 364
    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-lez p2, :cond_0

    .line 365
    add-int/lit8 v1, p2, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    .line 371
    :cond_0
    if-eqz p3, :cond_1

    if-eq p3, v0, :cond_1

    add-int/lit8 v1, p3, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_1

    .line 372
    add-int/lit8 p3, p3, 0x1

    :goto_1
    if-ge p3, v0, :cond_1

    .line 373
    add-int/lit8 v1, p3, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_3

    .line 379
    :cond_1
    const/16 v1, 0x33

    invoke-interface {p0, p1, p2, p3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 360
    return-void

    .line 364
    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 372
    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1
.end method

.method private applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;
    .locals 18
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "style"    # [I
    .param p3, "ids"    # Landroid/content/res/StringBlock$StyleIDs;

    .prologue
    .line 167
    move-object/from16 v0, p2

    array-length v14, v0

    if-nez v14, :cond_0

    .line 168
    return-object p1

    .line 170
    :cond_0
    new-instance v2, Landroid/text/SpannableString;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 171
    .local v2, "buffer":Landroid/text/SpannableString;
    const/4 v4, 0x0

    .line 172
    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v14, v0

    if-ge v4, v14, :cond_15

    .line 173
    aget v12, p2, v4

    .line 178
    .local v12, "type":I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get1(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_2

    .line 179
    new-instance v14, Landroid/text/style/StyleSpan;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 180
    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    .line 181
    const/16 v17, 0x21

    .line 179
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 303
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x3

    goto :goto_0

    .line 182
    :cond_2
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get2(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_3

    .line 183
    new-instance v14, Landroid/text/style/StyleSpan;

    const/4 v15, 0x2

    invoke-direct {v14, v15}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 184
    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    .line 185
    const/16 v17, 0x21

    .line 183
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 186
    :cond_3
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get10(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_4

    .line 187
    new-instance v14, Landroid/text/style/UnderlineSpan;

    invoke-direct {v14}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 188
    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    .line 189
    const/16 v17, 0x21

    .line 187
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 190
    :cond_4
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get9(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_5

    .line 191
    new-instance v14, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v15, "monospace"

    invoke-direct {v14, v15}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 192
    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    .line 193
    const/16 v17, 0x21

    .line 191
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 194
    :cond_5
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get0(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_6

    .line 195
    new-instance v14, Landroid/text/style/RelativeSizeSpan;

    const/high16 v15, 0x3fa00000    # 1.25f

    invoke-direct {v14, v15}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 196
    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    .line 197
    const/16 v17, 0x21

    .line 195
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 198
    :cond_6
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get5(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_7

    .line 199
    new-instance v14, Landroid/text/style/RelativeSizeSpan;

    const v15, 0x3f4ccccd    # 0.8f

    invoke-direct {v14, v15}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 200
    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    .line 201
    const/16 v17, 0x21

    .line 199
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 202
    :cond_7
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get7(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_8

    .line 203
    new-instance v14, Landroid/text/style/SubscriptSpan;

    invoke-direct {v14}, Landroid/text/style/SubscriptSpan;-><init>()V

    .line 204
    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    .line 205
    const/16 v17, 0x21

    .line 203
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 206
    :cond_8
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get8(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_9

    .line 207
    new-instance v14, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v14}, Landroid/text/style/SuperscriptSpan;-><init>()V

    .line 208
    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    .line 209
    const/16 v17, 0x21

    .line 207
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 210
    :cond_9
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get6(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_a

    .line 211
    new-instance v14, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v14}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 212
    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    .line 213
    const/16 v17, 0x21

    .line 211
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 214
    :cond_a
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get3(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_b

    .line 215
    new-instance v14, Landroid/text/style/BulletSpan;

    const/16 v15, 0xa

    invoke-direct {v14, v15}, Landroid/text/style/BulletSpan;-><init>(I)V

    .line 216
    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    .line 215
    move/from16 v0, v16

    invoke-static {v2, v14, v15, v0}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 217
    :cond_b
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get4(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_c

    .line 218
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 219
    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    .line 220
    const/16 v17, 0x12

    .line 218
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 222
    :cond_c
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v14, v15, v12}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v11

    .line 224
    .local v11, "tag":Ljava/lang/String;
    const-string/jumbo v14, "font;"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 227
    const-string/jumbo v14, ";height="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 228
    .local v9, "sub":Ljava/lang/String;
    if-eqz v9, :cond_d

    .line 229
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 230
    .local v8, "size":I
    new-instance v14, Landroid/content/res/StringBlock$Height;

    invoke-direct {v14, v8}, Landroid/content/res/StringBlock$Height;-><init>(I)V

    .line 231
    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    .line 230
    move/from16 v0, v16

    invoke-static {v2, v14, v15, v0}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 234
    .end local v8    # "size":I
    :cond_d
    const-string/jumbo v14, ";size="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 235
    if-eqz v9, :cond_e

    .line 236
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 237
    .restart local v8    # "size":I
    new-instance v14, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v15, 0x1

    invoke-direct {v14, v8, v15}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 238
    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    .line 239
    const/16 v17, 0x21

    .line 237
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 242
    .end local v8    # "size":I
    :cond_e
    const-string/jumbo v14, ";fgcolor="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 243
    if-eqz v9, :cond_f

    .line 244
    const/4 v14, 0x1

    invoke-static {v9, v14}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v14

    .line 245
    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    .line 246
    const/16 v17, 0x21

    .line 244
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 249
    :cond_f
    const-string/jumbo v14, ";color="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 250
    if-eqz v9, :cond_10

    .line 251
    const/4 v14, 0x1

    invoke-static {v9, v14}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v14

    .line 252
    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    .line 253
    const/16 v17, 0x21

    .line 251
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 256
    :cond_10
    const-string/jumbo v14, ";bgcolor="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 257
    if-eqz v9, :cond_11

    .line 258
    const/4 v14, 0x0

    invoke-static {v9, v14}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v14

    .line 259
    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    .line 260
    const/16 v17, 0x21

    .line 258
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 263
    :cond_11
    const-string/jumbo v14, ";face="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 264
    if-eqz v9, :cond_1

    .line 265
    new-instance v14, Landroid/text/style/TypefaceSpan;

    invoke-direct {v14, v9}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 266
    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    .line 267
    const/16 v17, 0x21

    .line 265
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 269
    .end local v9    # "sub":Ljava/lang/String;
    :cond_12
    const-string/jumbo v14, "a;"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 272
    const-string/jumbo v14, ";href="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 273
    .restart local v9    # "sub":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 274
    new-instance v14, Landroid/text/style/URLSpan;

    invoke-direct {v14, v9}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 275
    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    .line 276
    const/16 v17, 0x21

    .line 274
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 278
    .end local v9    # "sub":Ljava/lang/String;
    :cond_13
    const-string/jumbo v14, "annotation;"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 279
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    .line 282
    .local v6, "len":I
    const/16 v14, 0x3b

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .local v10, "t":I
    :goto_2
    if-ge v10, v6, :cond_1

    .line 283
    const/16 v14, 0x3d

    invoke-virtual {v11, v14, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 284
    .local v3, "eq":I
    if-ltz v3, :cond_1

    .line 288
    const/16 v14, 0x3b

    invoke-virtual {v11, v14, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 289
    .local v7, "next":I
    if-gez v7, :cond_14

    .line 290
    move v7, v6

    .line 293
    :cond_14
    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v11, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, "key":Ljava/lang/String;
    add-int/lit8 v14, v3, 0x1

    invoke-virtual {v11, v14, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 296
    .local v13, "value":Ljava/lang/String;
    new-instance v14, Landroid/text/Annotation;

    invoke-direct {v14, v5, v13}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    .line 298
    const/16 v17, 0x21

    .line 296
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 282
    move v10, v7

    goto :goto_2

    .line 305
    .end local v3    # "eq":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "len":I
    .end local v7    # "next":I
    .end local v10    # "t":I
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    .end local v13    # "value":Ljava/lang/String;
    :cond_15
    new-instance v14, Landroid/text/SpannedString;

    invoke-direct {v14, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v14
.end method

.method private static getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;
    .locals 11
    .param p0, "color"    # Ljava/lang/String;
    .param p1, "foreground"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 323
    const/high16 v6, -0x1000000

    .line 325
    .local v6, "c":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    const-string/jumbo v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    .line 328
    .local v10, "res":Landroid/content/res/Resources;
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 329
    .local v9, "name":Ljava/lang/String;
    const-string/jumbo v0, "color"

    const-string/jumbo v3, "android"

    invoke-virtual {v10, v9, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 330
    .local v7, "colorRes":I
    if-eqz v7, :cond_1

    .line 331
    invoke-virtual {v10, v7, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 332
    .local v4, "colors":Landroid/content/res/ColorStateList;
    if-eqz p1, :cond_0

    .line 333
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v0

    .line 335
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    .line 347
    .end local v4    # "colors":Landroid/content/res/ColorStateList;
    .end local v7    # "colorRes":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "res":Landroid/content/res/Resources;
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 348
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    return-object v0

    .line 340
    :cond_2
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    .line 341
    :catch_0
    move-exception v8

    .line 342
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const/high16 v6, -0x1000000

    goto :goto_0

    .line 350
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v0, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    return-object v0
.end method

.method private static native nativeCreate([BII)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetSize(J)I
.end method

.method private static native nativeGetString(JI)Ljava/lang/String;
.end method

.method private static native nativeGetStyle(JI)[I
.end method

.method private static subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "full"    # Ljava/lang/String;
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 384
    .local v1, "start":I
    if-gez v1, :cond_0

    .line 385
    const/4 v2, 0x0

    return-object v2

    .line 388
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 389
    const/16 v2, 0x3b

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 391
    .local v0, "end":I
    if-gez v0, :cond_1

    .line 392
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 394
    :cond_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 144
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v0, :cond_0

    .line 147
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->nativeDestroy(J)V

    .line 142
    :cond_0
    return-void

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    iget-boolean v1, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v1, :cond_1

    .line 147
    iget-wide v2, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->nativeDestroy(J)V

    .line 145
    :cond_1
    throw v0
.end method

.method public get(I)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "idx"    # I

    .prologue
    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_0

    .line 65
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aget-object v1, v7, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .local v1, "res":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    monitor-exit p0

    .line 67
    return-object v1

    .line 69
    .end local v1    # "res":Ljava/lang/CharSequence;
    :cond_0
    :try_start_1
    iget-object v7, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    if-eqz v7, :cond_1

    .line 70
    iget-object v7, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .restart local v1    # "res":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    monitor-exit p0

    .line 72
    return-object v1

    .line 75
    .end local v1    # "res":Ljava/lang/CharSequence;
    :cond_1
    :try_start_2
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9}, Landroid/content/res/StringBlock;->nativeGetSize(J)I

    move-result v0

    .line 76
    .local v0, "num":I
    iget-boolean v7, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    if-eqz v7, :cond_5

    const/16 v7, 0xfa

    if-le v0, v7, :cond_5

    .line 77
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    .line 82
    .end local v0    # "num":I
    :cond_2
    :goto_0
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9, p1}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "str":Ljava/lang/String;
    move-object v1, v2

    .line 84
    .restart local v1    # "res":Ljava/lang/CharSequence;
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9, p1}, Landroid/content/res/StringBlock;->nativeGetStyle(JI)[I

    move-result-object v3

    .line 87
    .local v3, "style":[I
    if-eqz v3, :cond_12

    .line 88
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    if-nez v7, :cond_3

    .line 89
    new-instance v7, Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {v7}, Landroid/content/res/StringBlock$StyleIDs;-><init>()V

    iput-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 94
    :cond_3
    const/4 v5, 0x0

    .local v5, "styleIndex":I
    :goto_1
    array-length v7, v3

    if-ge v5, v7, :cond_11

    .line 95
    aget v4, v3, v5

    .line 97
    .local v4, "styleId":I
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get1(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get2(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-ne v4, v7, :cond_6

    .line 94
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x3

    goto :goto_1

    .line 79
    .end local v1    # "res":Ljava/lang/CharSequence;
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "style":[I
    .end local v4    # "styleId":I
    .end local v5    # "styleIndex":I
    .restart local v0    # "num":I
    :cond_5
    new-array v7, v0, [Ljava/lang/CharSequence;

    iput-object v7, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 63
    .end local v0    # "num":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 98
    .restart local v1    # "res":Ljava/lang/CharSequence;
    .restart local v2    # "str":Ljava/lang/String;
    .restart local v3    # "style":[I
    .restart local v4    # "styleId":I
    .restart local v5    # "styleIndex":I
    :cond_6
    :try_start_3
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get10(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get9(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    .line 99
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get0(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get5(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    .line 100
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get7(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get8(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    .line 101
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get6(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get3(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    .line 102
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get4(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    .line 107
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9, v4}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, "styleTag":Ljava/lang/String;
    const-string/jumbo v7, "b"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 110
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set1(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_2

    .line 111
    :cond_7
    const-string/jumbo v7, "i"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 112
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set2(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_2

    .line 113
    :cond_8
    const-string/jumbo v7, "u"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 114
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set10(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    .line 115
    :cond_9
    const-string/jumbo v7, "tt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 116
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set9(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    .line 117
    :cond_a
    const-string/jumbo v7, "big"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 118
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set0(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    .line 119
    :cond_b
    const-string/jumbo v7, "small"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 120
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set5(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    .line 121
    :cond_c
    const-string/jumbo v7, "sup"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 122
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set8(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    .line 123
    :cond_d
    const-string/jumbo v7, "sub"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 124
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set7(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    .line 125
    :cond_e
    const-string/jumbo v7, "strike"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 126
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set6(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    .line 127
    :cond_f
    const-string/jumbo v7, "li"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 128
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set3(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    .line 129
    :cond_10
    const-string/jumbo v7, "marquee"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 130
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set4(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    .line 134
    .end local v4    # "styleId":I
    .end local v6    # "styleTag":Ljava/lang/String;
    :cond_11
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {p0, v2, v3, v7}, Landroid/content/res/StringBlock;->applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 136
    .end local v5    # "styleIndex":I
    :cond_12
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_13

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aput-object v1, v7, p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    monitor-exit p0

    .line 138
    return-object v1

    .line 137
    :cond_13
    :try_start_4
    iget-object v7, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v7, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method
