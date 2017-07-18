.class public Landroid/graphics/LayerRasterizer;
.super Landroid/graphics/Rasterizer;
.source "LayerRasterizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/graphics/Rasterizer;-><init>()V

    .line 22
    invoke-static {}, Landroid/graphics/LayerRasterizer;->nativeConstructor()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/LayerRasterizer;->native_instance:J

    .line 21
    return-void
.end method

.method private static native nativeAddLayer(JJFF)V
.end method

.method private static native nativeConstructor()J
.end method


# virtual methods
.method public addLayer(Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v4, 0x0

    .line 35
    iget-wide v0, p0, Landroid/graphics/LayerRasterizer;->native_instance:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/LayerRasterizer;->nativeAddLayer(JJFF)V

    .line 34
    return-void
.end method

.method public addLayer(Landroid/graphics/Paint;FF)V
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    .line 31
    iget-wide v0, p0, Landroid/graphics/LayerRasterizer;->native_instance:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/LayerRasterizer;->nativeAddLayer(JJFF)V

    .line 30
    return-void
.end method
