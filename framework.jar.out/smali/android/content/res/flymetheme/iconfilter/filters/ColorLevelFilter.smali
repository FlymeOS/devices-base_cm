.class public Landroid/content/res/flymetheme/iconfilter/filters/ColorLevelFilter;
.super Landroid/content/res/flymetheme/iconfilter/filters/BaseFilter;
.source "ColorLevelFilter.java"


# static fields
.field public static final FLAG_B:I = 0x4

.field public static final FLAG_G:I = 0x2

.field public static final FLAG_R:I = 0x1

.field public static final FLAG_RGB:I = 0x7


# instance fields
.field private mFlag:I

.field private mLevelTable:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/res/flymetheme/iconfilter/filters/BaseFilter;-><init>()V

    .line 19
    const/4 v0, 0x7

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorLevelFilter;->mFlag:I

    .line 21
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorLevelFilter;->mLevelTable:[I

    .line 12
    return-void
.end method

.method private native nativeColorLevelFilter([I[IIII)V
.end method

.method private native nativeSetParams([IIFIII)V
.end method


# virtual methods
.method public filter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 44
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 45
    .local v7, "height":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 46
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 47
    iget-object v10, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorLevelFilter;->mLevelTable:[I

    iget v11, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorLevelFilter;->mFlag:I

    move-object v8, p0

    move-object v9, v1

    move v12, v3

    move v13, v7

    invoke-direct/range {v8 .. v13}, Landroid/content/res/flymetheme/iconfilter/filters/ColorLevelFilter;->nativeColorLevelFilter([I[IIII)V

    .line 48
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 24
    iput p1, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorLevelFilter;->mFlag:I

    .line 23
    return-void
.end method

.method public setParams(IFIII)V
    .locals 7
    .param p1, "inputMin"    # I
    .param p2, "inputMiddle"    # F
    .param p3, "inputMax"    # I
    .param p4, "outputMin"    # I
    .param p5, "outputMax"    # I

    .prologue
    const/16 v1, 0xff

    .line 28
    const/16 v0, 0xfd

    if-le p1, v0, :cond_0

    const/16 p1, 0xfd

    .line 29
    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 30
    :cond_1
    if-le p3, v1, :cond_2

    const/16 p3, 0xff

    .line 31
    :cond_2
    const/4 v0, 0x2

    if-ge p3, v0, :cond_3

    const/4 p3, 0x2

    .line 32
    :cond_3
    const v0, 0x411fd70a    # 9.99f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_4

    const p2, 0x411fd70a    # 9.99f

    .line 33
    :cond_4
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_5

    const p2, 0x3c23d70a    # 0.01f

    .line 34
    :cond_5
    if-gez p4, :cond_6

    const/4 p4, 0x0

    .line 35
    :cond_6
    if-le p4, v1, :cond_7

    const/16 p4, 0xff

    .line 36
    :cond_7
    if-gez p5, :cond_8

    const/4 p5, 0x0

    .line 37
    :cond_8
    if-le p5, v1, :cond_9

    const/16 p5, 0xff

    .line 38
    :cond_9
    iget-object v1, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorLevelFilter;->mLevelTable:[I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/res/flymetheme/iconfilter/filters/ColorLevelFilter;->nativeSetParams([IIFIII)V

    .line 27
    return-void
.end method
