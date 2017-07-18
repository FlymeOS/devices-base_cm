.class public Landroid/content/res/flymetheme/iconfilter/filters/EdgeFilter;
.super Landroid/content/res/flymetheme/iconfilter/filters/BaseFilter;
.source "EdgeFilter.java"


# instance fields
.field private mEdgeColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/res/flymetheme/iconfilter/filters/BaseFilter;-><init>()V

    .line 13
    const v0, 0xffffff

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/EdgeFilter;->mEdgeColor:I

    .line 11
    return-void
.end method

.method private native nativeEdgeDetect(Landroid/graphics/Bitmap;[II)V
.end method


# virtual methods
.method public filter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 26
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 27
    .local v2, "height":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 28
    .local v1, "grayBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1, v1}, Landroid/content/res/flymetheme/iconfilter/filters/EdgeFilter;->nativeConvertToGray(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 29
    mul-int v4, v3, v2

    new-array v0, v4, [I

    .line 30
    .local v0, "dstPixels":[I
    iget v4, p0, Landroid/content/res/flymetheme/iconfilter/filters/EdgeFilter;->mEdgeColor:I

    invoke-direct {p0, v1, v0, v4}, Landroid/content/res/flymetheme/iconfilter/filters/EdgeFilter;->nativeEdgeDetect(Landroid/graphics/Bitmap;[II)V

    .line 31
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method public native nativeConvertToGray(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method public setEdgeColor(I)V
    .locals 3
    .param p1, "edgeColor"    # I

    .prologue
    .line 19
    iput p1, p0, Landroid/content/res/flymetheme/iconfilter/filters/EdgeFilter;->mEdgeColor:I

    .line 20
    iget v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/EdgeFilter;->mEdgeColor:I

    const/4 v1, 0x0

    const v2, 0xffffff

    invoke-static {v0, v1, v2}, Landroid/content/res/flymetheme/iconfilter/utils/ConstrainUtils;->constrain(III)I

    move-result v0

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/EdgeFilter;->mEdgeColor:I

    .line 18
    return-void
.end method
