.class public final Landroid/util/Range;
.super Ljava/lang/Object;
.source "Range.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable",
        "<-TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mLower:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mUpper:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "lower":Ljava/lang/Comparable;, "TT;"
    .local p2, "upper":Ljava/lang/Comparable;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string/jumbo v0, "lower must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    iput-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    .line 56
    const-string/jumbo v0, "upper must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    iput-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    .line 58
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lower must be less than or equal to upper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    return-void
.end method

.method public static create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(TT;TT;)",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "lower":Ljava/lang/Comparable;, "TT;"
    .local p1, "upper":Ljava/lang/Comparable;, "TT;"
    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, p0, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method


# virtual methods
.method public clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    const-string/jumbo v0, "value must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 177
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    return-object v0

    .line 178
    :cond_0
    iget-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    .line 179
    iget-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    return-object v0

    .line 181
    :cond_1
    return-object p1
.end method

.method public contains(Landroid/util/Range;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const/4 v2, 0x0

    .line 132
    const-string/jumbo v3, "value must not be null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v3, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v4, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    const/4 v0, 0x1

    .line 135
    .local v0, "gteLower":Z
    :goto_0
    iget-object v3, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v4, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_1

    const/4 v1, 0x1

    .line 137
    .local v1, "lteUpper":Z
    :goto_1
    if-eqz v0, :cond_2

    .end local v1    # "lteUpper":Z
    :goto_2
    return v1

    .line 134
    .end local v0    # "gteLower":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "gteLower":Z
    goto :goto_0

    .line 135
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "lteUpper":Z
    goto :goto_1

    :cond_2
    move v1, v2

    .line 137
    goto :goto_2
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    const/4 v2, 0x0

    .line 112
    const-string/jumbo v3, "value must not be null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v3, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    const/4 v0, 0x1

    .line 115
    .local v0, "gteLower":Z
    :goto_0
    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_1

    const/4 v1, 0x1

    .line 117
    .local v1, "lteUpper":Z
    :goto_1
    if-eqz v0, :cond_2

    .end local v1    # "lteUpper":Z
    :goto_2
    return v1

    .line 114
    .end local v0    # "gteLower":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "gteLower":Z
    goto :goto_0

    .line 115
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "lteUpper":Z
    goto :goto_1

    :cond_2
    move v1, v2

    .line 117
    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const/4 v1, 0x0

    .line 150
    if-nez p1, :cond_0

    .line 151
    return v1

    .line 152
    :cond_0
    if-ne p0, p1, :cond_1

    .line 153
    const/4 v1, 0x1

    return v1

    .line 154
    :cond_1
    instance-of v2, p1, Landroid/util/Range;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 156
    check-cast v0, Landroid/util/Range;

    .line 157
    .local v0, "other":Landroid/util/Range;
    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v3, v0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v2, v0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    return v1

    .line 159
    .end local v0    # "other":Landroid/util/Range;
    :cond_3
    return v1
.end method

.method public extend(Landroid/util/Range;)Landroid/util/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<TT;>;)",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const-string/jumbo v2, "range must not be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v2, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v3, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 276
    .local v0, "cmpLower":I
    iget-object v2, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 278
    .local v1, "cmpUpper":I
    if-gtz v0, :cond_0

    if-ltz v1, :cond_0

    .line 280
    return-object p1

    .line 281
    :cond_0
    if-ltz v0, :cond_1

    if-gtz v1, :cond_1

    .line 283
    return-object p0

    .line 286
    :cond_1
    if-ltz v0, :cond_2

    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    move-object v3, v2

    .line 287
    :goto_0
    if-gtz v1, :cond_3

    iget-object v2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    .line 285
    :goto_1
    invoke-static {v3, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2

    .line 286
    :cond_2
    iget-object v2, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    move-object v3, v2

    goto :goto_0

    .line 287
    :cond_3
    iget-object v2, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    goto :goto_1
.end method

.method public extend(Ljava/lang/Comparable;)Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    const-string/jumbo v0, "value must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-virtual {p0, p1, p1}, Landroid/util/Range;->extend(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public extend(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "lower":Ljava/lang/Comparable;, "TT;"
    .local p2, "upper":Ljava/lang/Comparable;, "TT;"
    const-string/jumbo v2, "lower must not be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string/jumbo v2, "upper must not be null"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 309
    .local v0, "cmpLower":I
    iget-object v2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p2, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 311
    .local v1, "cmpUpper":I
    if-ltz v0, :cond_0

    if-gtz v1, :cond_0

    .line 313
    return-object p0

    .line 316
    :cond_0
    if-ltz v0, :cond_1

    iget-object p1, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    .line 317
    .end local p1    # "lower":Ljava/lang/Comparable;, "TT;"
    :cond_1
    if-gtz v1, :cond_2

    iget-object p2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    .line 315
    .end local p2    # "upper":Ljava/lang/Comparable;, "TT;"
    :cond_2
    invoke-static {p1, p2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2
.end method

.method public getLower()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    return-object v0
.end method

.method public getUpper()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    iget-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 353
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Comparable;

    iget-object v1, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public intersect(Landroid/util/Range;)Landroid/util/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<TT;>;)",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const-string/jumbo v2, "range must not be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v2, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v3, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 208
    .local v0, "cmpLower":I
    iget-object v2, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 210
    .local v1, "cmpUpper":I
    if-gtz v0, :cond_0

    if-ltz v1, :cond_0

    .line 212
    return-object p0

    .line 213
    :cond_0
    if-ltz v0, :cond_1

    if-gtz v1, :cond_1

    .line 215
    return-object p1

    .line 218
    :cond_1
    if-gtz v0, :cond_2

    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    move-object v3, v2

    .line 219
    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    .line 217
    :goto_1
    invoke-static {v3, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2

    .line 218
    :cond_2
    iget-object v2, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    move-object v3, v2

    goto :goto_0

    .line 219
    :cond_3
    iget-object v2, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    goto :goto_1
.end method

.method public intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "lower":Ljava/lang/Comparable;, "TT;"
    .local p2, "upper":Ljava/lang/Comparable;, "TT;"
    const-string/jumbo v2, "lower must not be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string/jumbo v2, "upper must not be null"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 241
    .local v0, "cmpLower":I
    iget-object v2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p2, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 243
    .local v1, "cmpUpper":I
    if-gtz v0, :cond_0

    if-ltz v1, :cond_0

    .line 245
    return-object p0

    .line 248
    :cond_0
    if-gtz v0, :cond_1

    iget-object p1, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    .line 249
    .end local p1    # "lower":Ljava/lang/Comparable;, "TT;"
    :cond_1
    if-ltz v1, :cond_2

    iget-object p2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    .line 247
    .end local p2    # "upper":Ljava/lang/Comparable;, "TT;"
    :cond_2
    invoke-static {p1, p2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 345
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const-string/jumbo v0, "[%s, %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
