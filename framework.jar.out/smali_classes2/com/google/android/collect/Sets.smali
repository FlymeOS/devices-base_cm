.class public Lcom/google/android/collect/Sets;
.super Ljava/lang/Object;
.source "Sets.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newArraySet()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/util/ArraySet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-object v0
.end method

.method public static varargs newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Landroid/util/ArraySet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v0, v2, 0x1

    .line 107
    .local v0, "capacity":I
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 108
    .local v1, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 109
    return-object v1
.end method

.method public static newHashSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public static varargs newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v0, v2, 0x1

    .line 68
    .local v0, "capacity":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 69
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 70
    return-object v1
.end method

.method public static newSortedSet()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    return-object v0
.end method

.method public static varargs newSortedSet([Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 91
    .local v0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 92
    return-object v0
.end method
