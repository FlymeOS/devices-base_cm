.class final Landroid/text/util/Linkify$4;
.super Ljava/lang/Object;
.source "Linkify.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/text/util/LinkSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Landroid/text/util/LinkSpec;Landroid/text/util/LinkSpec;)I
    .locals 4
    .param p1, "a"    # Landroid/text/util/LinkSpec;
    .param p2, "b"    # Landroid/text/util/LinkSpec;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 510
    iget v0, p1, Landroid/text/util/LinkSpec;->start:I

    iget v1, p2, Landroid/text/util/LinkSpec;->start:I

    if-ge v0, v1, :cond_0

    .line 511
    return v2

    .line 514
    :cond_0
    iget v0, p1, Landroid/text/util/LinkSpec;->start:I

    iget v1, p2, Landroid/text/util/LinkSpec;->start:I

    if-le v0, v1, :cond_1

    .line 515
    return v3

    .line 518
    :cond_1
    iget v0, p1, Landroid/text/util/LinkSpec;->end:I

    iget v1, p2, Landroid/text/util/LinkSpec;->end:I

    if-ge v0, v1, :cond_2

    .line 519
    return v3

    .line 522
    :cond_2
    iget v0, p1, Landroid/text/util/LinkSpec;->end:I

    iget v1, p2, Landroid/text/util/LinkSpec;->end:I

    if-le v0, v1, :cond_3

    .line 523
    return v2

    .line 526
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 509
    check-cast p1, Landroid/text/util/LinkSpec;

    .end local p1    # "a":Ljava/lang/Object;
    check-cast p2, Landroid/text/util/LinkSpec;

    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/text/util/Linkify$4;->compare(Landroid/text/util/LinkSpec;Landroid/text/util/LinkSpec;)I

    move-result v0

    return v0
.end method
