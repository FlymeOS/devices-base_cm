.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field public static final DEFAULT:Landroid/graphics/Typeface;

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface;

.field private static DEFAULT_BOLD_INTERNAL:Landroid/graphics/Typeface; = null

.field private static DEFAULT_INTERNAL:Landroid/graphics/Typeface; = null

.field static final FONTS_CONFIG:Ljava/lang/String; = "fonts.xml"

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field private static MONOSPACE_INTERNAL:Landroid/graphics/Typeface; = null

.field public static final NORMAL:I = 0x0

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field static final SANS_SERIF_FAMILY_NAME:Ljava/lang/String; = "sans-serif"

.field private static SANS_SERIF_INTERNAL:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field private static SERIF_INTERNAL:Landroid/graphics/Typeface;

.field private static TAG:Ljava/lang/String;

.field static sDefaultTypeface:Landroid/graphics/Typeface;

.field static sDefaults:[Landroid/graphics/Typeface;

.field static sFallbackFonts:[Landroid/graphics/FontFamily;

.field static sSystemFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTypefaceCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mStyle:I

.field public native_instance:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 43
    const-string v0, "Typeface"

    sput-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    .line 61
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v5}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    .line 471
    invoke-static {v4}, Landroid/graphics/Typeface;->init(Z)V

    move-object v0, v1

    .line 473
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_INTERNAL:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 474
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD_INTERNAL:Landroid/graphics/Typeface;

    .line 475
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF_INTERNAL:Landroid/graphics/Typeface;

    .line 476
    const-string/jumbo v0, "serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF_INTERNAL:Landroid/graphics/Typeface;

    .line 477
    const-string/jumbo v0, "monospace"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE_INTERNAL:Landroid/graphics/Typeface;

    .line 479
    new-instance v0, Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    invoke-direct {v0, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 480
    new-instance v0, Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    invoke-direct {v0, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 481
    new-instance v0, Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    invoke-direct {v0, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 482
    new-instance v0, Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->SERIF_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    invoke-direct {v0, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 483
    new-instance v0, Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    invoke-direct {v0, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 485
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v4

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v6

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v7

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v5

    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 492
    return-void
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "ni"    # J

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 265
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 270
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 271
    return-void
.end method

.method private static addFallbackFontsForFamilyName(Landroid/graphics/FontListParser$Config;Landroid/graphics/FontListParser$Config;Ljava/lang/String;)V
    .locals 3
    .param p0, "src"    # Landroid/graphics/FontListParser$Config;
    .param p1, "dst"    # Landroid/graphics/FontListParser$Config;
    .param p2, "familyName"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v2, p0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/FontListParser$Family;

    .line 290
    .local v1, "srcFamily":Landroid/graphics/FontListParser$Family;
    iget-object v2, v1, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    .line 293
    iget-object v2, p1, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    .end local v1    # "srcFamily":Landroid/graphics/FontListParser$Family;
    :cond_1
    return-void
.end method

.method private static addMissingFontAliases(Landroid/graphics/FontListParser$Config;Landroid/graphics/FontListParser$Config;)V
    .locals 7
    .param p0, "src"    # Landroid/graphics/FontListParser$Config;
    .param p1, "dst"    # Landroid/graphics/FontListParser$Config;

    .prologue
    .line 331
    iget-object v6, p1, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 333
    .local v0, "N":I
    iget-object v6, p0, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/FontListParser$Alias;

    .line 334
    .local v2, "alias":Landroid/graphics/FontListParser$Alias;
    const/4 v1, 0x1

    .line 335
    .local v1, "addAlias":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_1

    if-eqz v1, :cond_1

    .line 336
    iget-object v6, p1, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/FontListParser$Alias;

    iget-object v3, v6, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    .line 337
    .local v3, "dstAliasName":Ljava/lang/String;
    if-eqz v3, :cond_2

    iget-object v6, v2, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 338
    const/4 v1, 0x0

    .line 342
    .end local v3    # "dstAliasName":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_0

    .line 343
    iget-object v6, p1, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
    .restart local v3    # "dstAliasName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 346
    .end local v1    # "addAlias":Z
    .end local v2    # "alias":Landroid/graphics/FontListParser$Alias;
    .end local v3    # "dstAliasName":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_3
    return-void
.end method

.method private static addMissingFontFamilies(Landroid/graphics/FontListParser$Config;Landroid/graphics/FontListParser$Config;)V
    .locals 8
    .param p0, "src"    # Landroid/graphics/FontListParser$Config;
    .param p1, "dst"    # Landroid/graphics/FontListParser$Config;

    .prologue
    .line 306
    iget-object v7, p1, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .line 308
    .local v0, "N":I
    iget-object v7, p0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/FontListParser$Family;

    .line 309
    .local v6, "srcFamily":Landroid/graphics/FontListParser$Family;
    const/4 v1, 0x1

    .line 310
    .local v1, "addFamily":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_1

    if-eqz v1, :cond_1

    .line 311
    iget-object v7, p1, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/FontListParser$Family;

    .line 312
    .local v2, "dstFamily":Landroid/graphics/FontListParser$Family;
    iget-object v3, v2, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    .line 313
    .local v3, "dstFamilyName":Ljava/lang/String;
    if-eqz v3, :cond_2

    iget-object v7, v6, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 314
    const/4 v1, 0x0

    .line 318
    .end local v2    # "dstFamily":Landroid/graphics/FontListParser$Family;
    .end local v3    # "dstFamilyName":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_0

    .line 319
    iget-object v7, p1, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 310
    .restart local v2    # "dstFamily":Landroid/graphics/FontListParser$Family;
    .restart local v3    # "dstFamilyName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 322
    .end local v1    # "addFamily":Z
    .end local v2    # "dstFamily":Landroid/graphics/FontListParser$Family;
    .end local v3    # "dstFamilyName":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "srcFamily":Landroid/graphics/FontListParser$Family;
    :cond_3
    return-void
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "style"    # I

    .prologue
    .line 142
    if-ltz p1, :cond_0

    const/4 v4, 0x3

    if-le p1, v4, :cond_1

    .line 143
    :cond_0
    const/4 p1, 0x0

    .line 145
    :cond_1
    const-wide/16 v0, 0x0

    .line 146
    .local v0, "ni":J
    if-eqz p0, :cond_4

    .line 148
    iget v4, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v4, p1, :cond_3

    move-object v3, p0

    .line 172
    :cond_2
    :goto_0
    return-object v3

    .line 152
    :cond_3
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 156
    :cond_4
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 158
    .local v2, "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-eqz v2, :cond_5

    .line 159
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    .line 160
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-nez v3, :cond_2

    .line 165
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_5
    new-instance v3, Landroid/graphics/Typeface;

    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    .line 166
    .restart local v3    # "typeface":Landroid/graphics/Typeface;
    if-nez v2, :cond_6

    .line 167
    new-instance v2, Landroid/util/SparseArray;

    .end local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    const/4 v4, 0x4

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 168
    .restart local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 170
    :cond_6
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I

    .prologue
    .line 124
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 191
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v2, :cond_0

    .line 192
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 193
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0, p1}, Landroid/graphics/FontFamily;->addFontFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/FontFamily;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 195
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 198
    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font asset not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    .line 235
    array-length v3, p0

    new-array v1, v3, [J

    .line 236
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 237
    aget-object v3, p0, v0

    iget-wide v4, v3, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v4, v1, v0

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_0
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    .line 242
    .local v2, "typeface":Landroid/graphics/Typeface;
    return-object v2
.end method

.method public static createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    .line 253
    array-length v2, p0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v3, v3

    add-int/2addr v2, v3

    new-array v1, v2, [J

    .line 254
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 255
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 258
    array-length v2, p0

    add-int/2addr v2, v0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    aget-object v3, v3, v0

    iget-wide v4, v3, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v4, v1, v2

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 260
    :cond_1
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 208
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 218
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v2, :cond_0

    .line 219
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 220
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/FontFamily;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 222
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 225
    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "style"    # I

    .prologue
    .line 181
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private static getSystemFontConfigLocation()Ljava/io/File;
    .locals 2

    .prologue
    .line 495
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getSystemFontDirLocation()Ljava/io/File;
    .locals 2

    .prologue
    .line 499
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/fonts/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getThemeFontConfigLocation()Ljava/io/File;
    .locals 2

    .prologue
    .line 503
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/fonts/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getThemeFontDirLocation()Ljava/io/File;
    .locals 2

    .prologue
    .line 507
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/fonts/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static init(Z)V
    .locals 28
    .param p0, "forceSystemFonts"    # Z

    .prologue
    .line 355
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontConfigLocation()Ljava/io/File;

    move-result-object v19

    .line 356
    .local v19, "systemFontConfigLocation":Ljava/io/File;
    invoke-static {}, Landroid/graphics/Typeface;->getThemeFontConfigLocation()Ljava/io/File;

    move-result-object v22

    .line 358
    .local v22, "themeFontConfigLocation":Ljava/io/File;
    new-instance v17, Ljava/io/File;

    const-string v25, "fonts.xml"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 359
    .local v17, "systemConfigFile":Ljava/io/File;
    new-instance v21, Ljava/io/File;

    const-string v25, "fonts.xml"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 360
    .local v21, "themeConfigFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 363
    .local v6, "configFile":Ljava/io/File;
    if-nez p0, :cond_3

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 364
    move-object/from16 v6, v21

    .line 365
    invoke-static {}, Landroid/graphics/Typeface;->getThemeFontDirLocation()Ljava/io/File;

    move-result-object v12

    .line 372
    .local v12, "fontDir":Ljava/io/File;
    :goto_0
    :try_start_0
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v6, v0}, Landroid/graphics/FontListParser;->parse(Ljava/io/File;Ljava/lang/String;)Landroid/graphics/FontListParser$Config;

    move-result-object v11

    .line 374
    .local v11, "fontConfig":Landroid/graphics/FontListParser$Config;
    const/16 v18, 0x0

    .line 379
    .local v18, "systemFontConfig":Landroid/graphics/FontListParser$Config;
    move-object/from16 v0, v21

    if-ne v6, v0, :cond_0

    .line 380
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontDirLocation()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/graphics/FontListParser;->parse(Ljava/io/File;Ljava/lang/String;)Landroid/graphics/FontListParser$Config;

    move-result-object v18

    .line 382
    move-object/from16 v0, v18

    invoke-static {v0, v11}, Landroid/graphics/Typeface;->addMissingFontFamilies(Landroid/graphics/FontListParser$Config;Landroid/graphics/FontListParser$Config;)V

    .line 383
    move-object/from16 v0, v18

    invoke-static {v0, v11}, Landroid/graphics/Typeface;->addMissingFontAliases(Landroid/graphics/FontListParser$Config;Landroid/graphics/FontListParser$Config;)V

    .line 384
    const-string/jumbo v25, "sans-serif"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-static {v0, v11, v1}, Landroid/graphics/Typeface;->addFallbackFontsForFamilyName(Landroid/graphics/FontListParser$Config;Landroid/graphics/FontListParser$Config;Ljava/lang/String;)V

    .line 387
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v10, "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v14, v0, :cond_4

    .line 391
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/FontListParser$Family;

    .line 392
    .local v8, "f":Landroid/graphics/FontListParser$Family;
    if-eqz v14, :cond_1

    iget-object v0, v8, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    if-nez v25, :cond_2

    .line 393
    :cond_1
    invoke-static {v8}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3

    .line 390
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 367
    .end local v8    # "f":Landroid/graphics/FontListParser$Family;
    .end local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v12    # "fontDir":Ljava/io/File;
    .end local v14    # "i":I
    .end local v18    # "systemFontConfig":Landroid/graphics/FontListParser$Config;
    :cond_3
    move-object/from16 v6, v17

    .line 368
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontDirLocation()Ljava/io/File;

    move-result-object v12

    .restart local v12    # "fontDir":Ljava/io/File;
    goto :goto_0

    .line 397
    .restart local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .restart local v14    # "i":I
    .restart local v18    # "systemFontConfig":Landroid/graphics/FontListParser$Config;
    :cond_4
    :try_start_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Landroid/graphics/FontFamily;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Landroid/graphics/FontFamily;

    sput-object v25, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    .line 398
    sget-object v25, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    invoke-static/range {v25 .. v25}, Landroid/graphics/Typeface;->createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 400
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 401
    .local v20, "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    const/4 v14, 0x0

    :goto_2
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v14, v0, :cond_7

    .line 403
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/FontListParser$Family;

    .line 404
    .restart local v8    # "f":Landroid/graphics/FontListParser$Family;
    iget-object v0, v8, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    .line 405
    if-nez v14, :cond_6

    .line 408
    sget-object v23, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 414
    .local v23, "typeface":Landroid/graphics/Typeface;
    :goto_3
    iget-object v0, v8, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .end local v23    # "typeface":Landroid/graphics/Typeface;
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 410
    :cond_6
    invoke-static {v8}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;

    move-result-object v13

    .line 411
    .local v13, "fontFamily":Landroid/graphics/FontFamily;
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v9, v0, [Landroid/graphics/FontFamily;

    const/16 v25, 0x0

    aput-object v13, v9, v25

    .line 412
    .local v9, "families":[Landroid/graphics/FontFamily;
    invoke-static {v9}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v23

    .restart local v23    # "typeface":Landroid/graphics/Typeface;
    goto :goto_3

    .line 417
    .end local v8    # "f":Landroid/graphics/FontListParser$Family;
    .end local v9    # "families":[Landroid/graphics/FontFamily;
    .end local v13    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v23    # "typeface":Landroid/graphics/Typeface;
    :cond_7
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/FontListParser$Alias;

    .line 418
    .local v4, "alias":Landroid/graphics/FontListParser$Alias;
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->toName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    .line 419
    .local v5, "base":Landroid/graphics/Typeface;
    move-object/from16 v16, v5

    .line 420
    .local v16, "newFace":Landroid/graphics/Typeface;
    iget v0, v4, Landroid/graphics/FontListParser$Alias;->weight:I

    move/from16 v24, v0

    .line 421
    .local v24, "weight":I
    const/16 v25, 0x190

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_8

    .line 422
    new-instance v16, Landroid/graphics/Typeface;

    .end local v16    # "newFace":Landroid/graphics/Typeface;
    iget-wide v0, v5, Landroid/graphics/Typeface;->native_instance:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    move-result-wide v26

    move-object/from16 v0, v16

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Landroid/graphics/Typeface;-><init>(J)V

    .line 424
    .restart local v16    # "newFace":Landroid/graphics/Typeface;
    :cond_8
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_4

    .line 428
    .end local v4    # "alias":Landroid/graphics/FontListParser$Alias;
    .end local v5    # "base":Landroid/graphics/Typeface;
    .end local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v14    # "i":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "newFace":Landroid/graphics/Typeface;
    .end local v18    # "systemFontConfig":Landroid/graphics/FontListParser$Config;
    .end local v20    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .end local v24    # "weight":I
    :catch_0
    move-exception v7

    .line 429
    .local v7, "e":Ljava/lang/RuntimeException;
    sget-object v25, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string v26, "Didn\'t create default family (most likely, non-Minikin build)"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :goto_5
    return-void

    .line 426
    .restart local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .restart local v14    # "i":I
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v18    # "systemFontConfig":Landroid/graphics/FontListParser$Config;
    .restart local v20    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :cond_9
    :try_start_2
    sput-object v20, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_5

    .line 431
    .end local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v14    # "i":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v18    # "systemFontConfig":Landroid/graphics/FontListParser$Config;
    .end local v20    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :catch_1
    move-exception v7

    .line 432
    .local v7, "e":Ljava/io/FileNotFoundException;
    sget-object v25, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Error opening "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 433
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v7

    .line 434
    .local v7, "e":Ljava/io/IOException;
    sget-object v25, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Error reading "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 435
    .end local v7    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 436
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v25, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "XML parse exception for "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private static makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;
    .locals 6
    .param p0, "family"    # Landroid/graphics/FontListParser$Family;

    .prologue
    .line 274
    new-instance v1, Landroid/graphics/FontFamily;

    iget-object v3, p0, Landroid/graphics/FontListParser$Family;->lang:Ljava/lang/String;

    iget-object v4, p0, Landroid/graphics/FontListParser$Family;->variant:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Landroid/graphics/FontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    iget-object v3, p0, Landroid/graphics/FontListParser$Family;->fonts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/FontListParser$Font;

    .line 276
    .local v0, "font":Landroid/graphics/FontListParser$Font;
    iget-object v3, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    iget v4, v0, Landroid/graphics/FontListParser$Font;->weight:I

    iget-boolean v5, v0, Landroid/graphics/FontListParser$Font;->isItalic:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/FontFamily;->addFontWeightStyle(Ljava/lang/String;IZ)Z

    goto :goto_0

    .line 278
    .end local v0    # "font":Landroid/graphics/FontListParser$Font;
    :cond_0
    return-object v1
.end method

.method private static native nativeCreateFromArray([J)J
.end method

.method private static native nativeCreateFromTypeface(JI)J
.end method

.method private static native nativeCreateWeightAlias(JI)J
.end method

.method private static native nativeGetStyle(J)I
.end method

.method private static native nativeSetDefault(J)V
.end method

.method private static native nativeUnref(J)V
.end method

.method public static recreateDefaults()V
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/graphics/Typeface;->recreateDefaults(Z)V

    .line 443
    return-void
.end method

.method public static recreateDefaults(Z)V
    .locals 6
    .param p0, "forceSystemFonts"    # Z

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 451
    sget-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 452
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 453
    invoke-static {p0}, Landroid/graphics/Typeface;->init(Z)V

    move-object v0, v1

    .line 455
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_INTERNAL:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 456
    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD_INTERNAL:Landroid/graphics/Typeface;

    .line 457
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF_INTERNAL:Landroid/graphics/Typeface;

    .line 458
    const-string/jumbo v0, "serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF_INTERNAL:Landroid/graphics/Typeface;

    .line 459
    const-string/jumbo v0, "monospace"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE_INTERNAL:Landroid/graphics/Typeface;

    .line 461
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v2, v0, Landroid/graphics/Typeface;->native_instance:J

    .line 462
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v2, v0, Landroid/graphics/Typeface;->native_instance:J

    .line 463
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v2, v0, Landroid/graphics/Typeface;->native_instance:J

    .line 464
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->SERIF_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v2, v0, Landroid/graphics/Typeface;->native_instance:J

    .line 465
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v2, v0, Landroid/graphics/Typeface;->native_instance:J

    .line 466
    sget-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v4

    .line 467
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    aput-object v1, v0, v5

    .line 468
    return-void
.end method

.method private static setDefault(Landroid/graphics/Typeface;)V
    .locals 2
    .param p0, "t"    # Landroid/graphics/Typeface;

    .prologue
    .line 93
    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 94
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    .line 95
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 521
    if-ne p0, p1, :cond_1

    .line 526
    :cond_0
    :goto_0
    return v1

    .line 522
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 524
    check-cast v0, Landroid/graphics/Typeface;

    .line 526
    .local v0, "typeface":Landroid/graphics/Typeface;
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v6, v0, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 513
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeUnref(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 517
    return-void

    .line 515
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 535
    const/16 v0, 0x11

    .line 536
    .local v0, "result":I
    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .line 537
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int v0, v1, v2

    .line 538
    return v0
.end method

.method public final isBold()Z
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isItalic()Z
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
