.class public Landroid/graphics/FontListConverter;
.super Ljava/lang/Object;
.source "FontListConverter.java"


# static fields
.field protected static final DEFAULT_WEIGHT:I

.field protected static ITALICS:[Z

.field public static final STYLES:[Ljava/lang/String;

.field protected static final WEIGHTS:[I


# instance fields
.field private mFamilies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/LegacyFontListParser$Family;",
            ">;"
        }
    .end annotation
.end field

.field private mFamilyVariants:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/graphics/LegacyFontListParser$Family;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/LegacyFontListParser$Family;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFontDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x2bc

    const/16 v0, 0x190

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 40
    filled-new-array {v0, v3, v0, v3}, [I

    move-result-object v0

    sput-object v0, Landroid/graphics/FontListConverter;->WEIGHTS:[I

    .line 41
    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    sput-object v0, Landroid/graphics/FontListConverter;->ITALICS:[Z

    .line 42
    sget-object v0, Landroid/graphics/FontListConverter;->WEIGHTS:[I

    aget v0, v0, v2

    sput v0, Landroid/graphics/FontListConverter;->DEFAULT_WEIGHT:I

    .line 47
    new-array v0, v1, [Ljava/lang/String;

    .line 48
    const-string/jumbo v1, "thin"

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "light"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "medium"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "black"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 47
    sput-object v0, Landroid/graphics/FontListConverter;->STYLES:[Ljava/lang/String;

    .line 33
    return-void

    .line 41
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/LegacyFontListParser$Family;Ljava/lang/String;)V
    .locals 1
    .param p1, "family"    # Landroid/graphics/LegacyFontListParser$Family;
    .param p2, "fontDir"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/graphics/FontListConverter;->mFamilyVariants:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iput-object v0, p0, Landroid/graphics/FontListConverter;->mFamilies:Ljava/util/List;

    .line 69
    iget-object v0, p0, Landroid/graphics/FontListConverter;->mFamilies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iput-object p2, p0, Landroid/graphics/FontListConverter;->mFontDir:Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Landroid/graphics/FontListConverter;->findFamilyVariants()V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "fontDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/LegacyFontListParser$Family;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "families":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/LegacyFontListParser$Family;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/graphics/FontListConverter;->mFamilyVariants:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iput-object v0, p0, Landroid/graphics/FontListConverter;->mFamilies:Ljava/util/List;

    .line 63
    iget-object v0, p0, Landroid/graphics/FontListConverter;->mFamilies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 64
    iput-object p2, p0, Landroid/graphics/FontListConverter;->mFontDir:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Landroid/graphics/FontListConverter;->findFamilyVariants()V

    .line 62
    return-void
.end method

.method private adaptNamesetAliases(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListParser$Alias;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "nameset":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v1, "aliases":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Alias;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    return-object v1

    .line 210
    :cond_0
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 211
    .local v3, "toName":Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 212
    new-instance v0, Landroid/graphics/FontListParser$Alias;

    invoke-direct {v0}, Landroid/graphics/FontListParser$Alias;-><init>()V

    .line 213
    .local v0, "alias":Landroid/graphics/FontListParser$Alias;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    .line 214
    iput-object v3, v0, Landroid/graphics/FontListParser$Alias;->toName:Ljava/lang/String;

    .line 215
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    .end local v0    # "alias":Landroid/graphics/FontListParser$Alias;
    :cond_1
    return-object v1
.end method

.method private adaptNamesetAliases(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p2, "toName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListParser$Alias;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "nameset":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v1, "aliases":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Alias;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "name$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 198
    .local v2, "name":Ljava/lang/String;
    new-instance v0, Landroid/graphics/FontListParser$Alias;

    invoke-direct {v0}, Landroid/graphics/FontListParser$Alias;-><init>()V

    .line 199
    .local v0, "alias":Landroid/graphics/FontListParser$Alias;
    iput-object v2, v0, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    .line 200
    iput-object p2, v0, Landroid/graphics/FontListParser$Alias;->toName:Ljava/lang/String;

    .line 201
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    .end local v0    # "alias":Landroid/graphics/FontListParser$Alias;
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private findFamilyVariants()V
    .locals 4

    .prologue
    .line 75
    iget-object v3, p0, Landroid/graphics/FontListConverter;->mFamilies:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "family$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LegacyFontListParser$Family;

    .line 76
    .local v0, "family":Landroid/graphics/LegacyFontListParser$Family;
    invoke-virtual {p0, v0}, Landroid/graphics/FontListConverter;->isNormalStyle(Landroid/graphics/LegacyFontListParser$Family;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    iget-object v3, p0, Landroid/graphics/FontListConverter;->mFamilies:Ljava/util/List;

    invoke-direct {p0, v0, v3}, Landroid/graphics/FontListConverter;->findVariants(Landroid/graphics/LegacyFontListParser$Family;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 78
    .local v2, "variants":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/LegacyFontListParser$Family;>;"
    iget-object v3, p0, Landroid/graphics/FontListConverter;->mFamilyVariants:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    .end local v0    # "family":Landroid/graphics/LegacyFontListParser$Family;
    .end local v2    # "variants":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/LegacyFontListParser$Family;>;"
    :cond_1
    return-void
.end method

.method private findVariants(Landroid/graphics/LegacyFontListParser$Family;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p1, "normalFamily"    # Landroid/graphics/LegacyFontListParser$Family;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/LegacyFontListParser$Family;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/LegacyFontListParser$Family;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/LegacyFontListParser$Family;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, "legacyFamilies":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/LegacyFontListParser$Family;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v4, "variants":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/LegacyFontListParser$Family;>;"
    invoke-virtual {p1}, Landroid/graphics/LegacyFontListParser$Family;->getName()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "normalFamilyName":Ljava/lang/String;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "family$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LegacyFontListParser$Family;

    .line 89
    .local v0, "family":Landroid/graphics/LegacyFontListParser$Family;
    invoke-virtual {v0}, Landroid/graphics/LegacyFontListParser$Family;->getName()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v0}, Landroid/graphics/FontListConverter;->isNormalStyle(Landroid/graphics/LegacyFontListParser$Family;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 92
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    .end local v0    # "family":Landroid/graphics/LegacyFontListParser$Family;
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method private getAliasesForRelatedFamilies()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListParser$Alias;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v0, "aliases":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Alias;>;"
    iget-object v7, p0, Landroid/graphics/FontListConverter;->mFamilyVariants:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 186
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/LegacyFontListParser$Family;Ljava/util/List<Landroid/graphics/LegacyFontListParser$Family;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/LegacyFontListParser$Family;

    iget-object v7, v7, Landroid/graphics/LegacyFontListParser$Family;->nameset:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 187
    .local v6, "toName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 188
    .local v3, "relatedFamilies":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/LegacyFontListParser$Family;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "relatedFamily$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/LegacyFontListParser$Family;

    .line 189
    .local v4, "relatedFamily":Landroid/graphics/LegacyFontListParser$Family;
    iget-object v7, v4, Landroid/graphics/LegacyFontListParser$Family;->nameset:Ljava/util/List;

    invoke-direct {p0, v7, v6}, Landroid/graphics/FontListConverter;->adaptNamesetAliases(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 192
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/LegacyFontListParser$Family;Ljava/util/List<Landroid/graphics/LegacyFontListParser$Family;>;>;"
    .end local v3    # "relatedFamilies":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/LegacyFontListParser$Family;>;"
    .end local v4    # "relatedFamily":Landroid/graphics/LegacyFontListParser$Family;
    .end local v5    # "relatedFamily$iterator":Ljava/util/Iterator;
    .end local v6    # "toName":Ljava/lang/String;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public convert()Landroid/graphics/FontListParser$Config;
    .locals 3

    .prologue
    .line 99
    new-instance v0, Landroid/graphics/FontListParser$Config;

    invoke-direct {v0}, Landroid/graphics/FontListParser$Config;-><init>()V

    .line 100
    .local v0, "config":Landroid/graphics/FontListParser$Config;
    iget-object v1, v0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    invoke-virtual {p0}, Landroid/graphics/FontListConverter;->convertFamilies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    iget-object v1, v0, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    invoke-virtual {p0}, Landroid/graphics/FontListConverter;->createAliases()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    return-object v0
.end method

.method protected convertFamilies()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListParser$Family;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "convertedFamilies":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Family;>;"
    iget-object v3, p0, Landroid/graphics/FontListConverter;->mFamilyVariants:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "family$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/LegacyFontListParser$Family;

    .line 126
    .local v1, "family":Landroid/graphics/LegacyFontListParser$Family;
    invoke-virtual {p0, v1}, Landroid/graphics/FontListConverter;->convertFamily(Landroid/graphics/LegacyFontListParser$Family;)Landroid/graphics/FontListParser$Family;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    .end local v1    # "family":Landroid/graphics/LegacyFontListParser$Family;
    :cond_0
    return-object v0
.end method

.method protected convertFamily(Landroid/graphics/LegacyFontListParser$Family;)Landroid/graphics/FontListParser$Family;
    .locals 8
    .param p1, "legacyFamily"    # Landroid/graphics/LegacyFontListParser$Family;

    .prologue
    const/4 v7, 0x0

    .line 133
    iget-object v3, p1, Landroid/graphics/LegacyFontListParser$Family;->nameset:Ljava/util/List;

    .line 134
    .local v3, "nameset":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p1, Landroid/graphics/LegacyFontListParser$Family;->fileset:Ljava/util/List;

    .line 137
    .local v0, "fileset":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x0

    .line 139
    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/FontListConverter;->convertFonts(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 142
    .local v1, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Font;>;"
    iget-object v6, p0, Landroid/graphics/FontListConverter;->mFamilyVariants:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "variantFamily$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/LegacyFontListParser$Family;

    .line 143
    .local v4, "variantFamily":Landroid/graphics/LegacyFontListParser$Family;
    iget-object v6, v4, Landroid/graphics/LegacyFontListParser$Family;->fileset:Ljava/util/List;

    invoke-virtual {p0, v6}, Landroid/graphics/FontListConverter;->convertFonts(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 137
    .end local v1    # "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Font;>;"
    .end local v4    # "variantFamily":Landroid/graphics/LegacyFontListParser$Family;
    .end local v5    # "variantFamily$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "name":Ljava/lang/String;
    goto :goto_0

    .line 146
    .end local v2    # "name":Ljava/lang/String;
    .restart local v1    # "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Font;>;"
    .restart local v5    # "variantFamily$iterator":Ljava/util/Iterator;
    :cond_1
    new-instance v6, Landroid/graphics/FontListParser$Family;

    invoke-direct {v6, v2, v1, v7, v7}, Landroid/graphics/FontListParser$Family;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method protected convertFonts(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListParser$Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "fileset":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v1, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Font;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/graphics/FontListConverter;->mFontDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-char v7, Ljava/io/File;->separatorChar:C

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "fullpath":Ljava/lang/String;
    sget-object v6, Landroid/graphics/FontListConverter;->WEIGHTS:[I

    array-length v6, v6

    if-ge v3, v6, :cond_0

    sget-object v6, Landroid/graphics/FontListConverter;->WEIGHTS:[I

    aget v5, v6, v3

    .line 157
    .local v5, "weight":I
    :goto_1
    sget-object v6, Landroid/graphics/FontListConverter;->ITALICS:[Z

    array-length v6, v6

    if-ge v3, v6, :cond_1

    sget-object v6, Landroid/graphics/FontListConverter;->ITALICS:[Z

    aget-boolean v4, v6, v3

    .line 159
    :goto_2
    new-instance v0, Landroid/graphics/FontListParser$Font;

    invoke-direct {v0, v2, v5, v4}, Landroid/graphics/FontListParser$Font;-><init>(Ljava/lang/String;IZ)V

    .line 160
    .local v0, "font":Landroid/graphics/FontListParser$Font;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "font":Landroid/graphics/FontListParser$Font;
    .end local v5    # "weight":I
    :cond_0
    sget v5, Landroid/graphics/FontListConverter;->DEFAULT_WEIGHT:I

    .restart local v5    # "weight":I
    goto :goto_1

    .line 157
    :cond_1
    const/4 v4, 0x0

    .local v4, "isItalic":Z
    goto :goto_2

    .line 163
    .end local v2    # "fullpath":Ljava/lang/String;
    .end local v4    # "isItalic":Z
    .end local v5    # "weight":I
    :cond_2
    return-object v1
.end method

.method protected createAliases()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListParser$Alias;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v0, "aliases":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Alias;>;"
    iget-object v3, p0, Landroid/graphics/FontListConverter;->mFamilyVariants:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "family$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/LegacyFontListParser$Family;

    .line 172
    .local v1, "family":Landroid/graphics/LegacyFontListParser$Family;
    invoke-virtual {p0, v1}, Landroid/graphics/FontListConverter;->isNormalStyle(Landroid/graphics/LegacyFontListParser$Family;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    iget-object v3, v1, Landroid/graphics/LegacyFontListParser$Family;->nameset:Ljava/util/List;

    invoke-direct {p0, v3}, Landroid/graphics/FontListConverter;->adaptNamesetAliases(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 177
    .end local v1    # "family":Landroid/graphics/LegacyFontListParser$Family;
    :cond_1
    invoke-direct {p0}, Landroid/graphics/FontListConverter;->getAliasesForRelatedFamilies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 179
    return-object v0
.end method

.method protected isNormalStyle(Landroid/graphics/LegacyFontListParser$Family;)Z
    .locals 8
    .param p1, "family"    # Landroid/graphics/LegacyFontListParser$Family;

    .prologue
    const/4 v3, 0x0

    .line 110
    invoke-virtual {p1}, Landroid/graphics/LegacyFontListParser$Family;->getName()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    return v3

    .line 113
    :cond_0
    sget-object v4, Landroid/graphics/FontListConverter;->STYLES:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v1, v4, v2

    .line 114
    .local v1, "style":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x2d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 115
    return v3

    .line 113
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "style":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    return v2
.end method
