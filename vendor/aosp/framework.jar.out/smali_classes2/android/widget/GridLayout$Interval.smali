.class final Landroid/widget/GridLayout$Interval;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Interval"
.end annotation


# instance fields
.field public final max:I

.field public final min:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 2435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2436
    iput p1, p0, Landroid/widget/GridLayout$Interval;->min:I

    .line 2437
    iput p2, p0, Landroid/widget/GridLayout$Interval;->max:I

    .line 2435
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2460
    if-ne p0, p1, :cond_0

    .line 2461
    return v4

    .line 2463
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/GridLayout$Interval;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 2464
    :cond_1
    return v3

    :cond_2
    move-object v0, p1

    .line 2467
    check-cast v0, Landroid/widget/GridLayout$Interval;

    .line 2469
    .local v0, "interval":Landroid/widget/GridLayout$Interval;
    iget v1, p0, Landroid/widget/GridLayout$Interval;->max:I

    iget v2, v0, Landroid/widget/GridLayout$Interval;->max:I

    if-eq v1, v2, :cond_3

    .line 2470
    return v3

    .line 2473
    :cond_3
    iget v1, p0, Landroid/widget/GridLayout$Interval;->min:I

    iget v2, v0, Landroid/widget/GridLayout$Interval;->min:I

    if-eq v1, v2, :cond_4

    .line 2474
    return v3

    .line 2477
    :cond_4
    return v4
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 2482
    iget v0, p0, Landroid/widget/GridLayout$Interval;->min:I

    .line 2483
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/widget/GridLayout$Interval;->max:I

    add-int v0, v1, v2

    .line 2484
    return v0
.end method

.method inverse()Landroid/widget/GridLayout$Interval;
    .locals 3

    .prologue
    .line 2445
    new-instance v0, Landroid/widget/GridLayout$Interval;

    iget v1, p0, Landroid/widget/GridLayout$Interval;->max:I

    iget v2, p0, Landroid/widget/GridLayout$Interval;->min:I

    invoke-direct {v0, v1, v2}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    return-object v0
.end method

.method size()I
    .locals 2

    .prologue
    .line 2441
    iget v0, p0, Landroid/widget/GridLayout$Interval;->max:I

    iget v1, p0, Landroid/widget/GridLayout$Interval;->min:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/GridLayout$Interval;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/GridLayout$Interval;->max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
