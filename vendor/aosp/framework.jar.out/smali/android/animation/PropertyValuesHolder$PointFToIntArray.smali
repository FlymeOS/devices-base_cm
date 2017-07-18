.class Landroid/animation/PropertyValuesHolder$PointFToIntArray;
.super Landroid/animation/TypeConverter;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PointFToIntArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/animation/TypeConverter",
        "<",
        "Landroid/graphics/PointF;",
        "[I>;"
    }
.end annotation


# instance fields
.field private mCoordinates:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1592
    const-class v0, Landroid/graphics/PointF;

    const-class v1, [I

    invoke-direct {p0, v0, v1}, Landroid/animation/TypeConverter;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1589
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$PointFToIntArray;->mCoordinates:[I

    .line 1591
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1596
    check-cast p1, Landroid/graphics/PointF;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/animation/PropertyValuesHolder$PointFToIntArray;->convert(Landroid/graphics/PointF;)[I

    move-result-object v0

    return-object v0
.end method

.method public convert(Landroid/graphics/PointF;)[I
    .locals 3
    .param p1, "value"    # Landroid/graphics/PointF;

    .prologue
    .line 1597
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$PointFToIntArray;->mCoordinates:[I

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1598
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$PointFToIntArray;->mCoordinates:[I

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 1599
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$PointFToIntArray;->mCoordinates:[I

    return-object v0
.end method
