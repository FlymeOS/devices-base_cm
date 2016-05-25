.class public Landroid/app/IconPackHelper$IconCustomizer;
.super Ljava/lang/Object;
.source "IconPackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IconPackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconCustomizer"
.end annotation


# static fields
.field private static final sRandom:Ljava/util/Random;

.field private static final sThemeService:Landroid/content/res/IThemeService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 589
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroid/app/IconPackHelper$IconCustomizer;->sRandom:Ljava/util/Random;

    .line 593
    const-string/jumbo v0, "themes"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/res/IThemeService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/res/IThemeService;

    move-result-object v0

    sput-object v0, Landroid/app/IconPackHelper$IconCustomizer;->sThemeService:Landroid/content/res/IThemeService;

    .line 595
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 3
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 805
    :try_start_0
    sget-object v1, Landroid/app/IconPackHelper$IconCustomizer;->sThemeService:Landroid/content/res/IThemeService;

    invoke-interface {v1, p0, p1}, Landroid/content/res/IThemeService;->cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 810
    :goto_0
    return v1

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Landroid/app/IconPackHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/IconPackHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to cache icon."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 810
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;IILandroid/app/ComposedIconInfo;)Landroid/graphics/Bitmap;
    .locals 24
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "iconBack"    # I
    .param p3, "defaultSwatchColor"    # I
    .param p4, "iconInfo"    # Landroid/app/ComposedIconInfo;

    .prologue
    .line 663
    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconSize:I

    move/from16 v21, v0

    if-gtz v21, :cond_0

    const/4 v7, 0x0

    .line 800
    :goto_0
    return-object v7

    .line 665
    :cond_0
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9}, Landroid/graphics/Canvas;-><init>()V

    .line 666
    .local v9, "canvas":Landroid/graphics/Canvas;
    new-instance v21, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v22, 0x1

    const/16 v23, 0x2

    invoke-direct/range {v21 .. v23}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 669
    const/16 v20, 0x0

    .local v20, "width":I
    const/4 v12, 0x0

    .line 670
    .local v12, "height":I
    const/4 v6, 0x0

    .line 671
    .local v6, "backTintColor":I
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v17, p0

    .line 672
    check-cast v17, Landroid/graphics/drawable/PaintDrawable;

    .line 673
    .local v17, "painter":Landroid/graphics/drawable/PaintDrawable;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconSize:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 674
    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconSize:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 677
    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconSize:I

    move/from16 v20, v0

    .line 678
    move-object/from16 v0, p4

    iget v12, v0, Landroid/app/ComposedIconInfo;->iconSize:I

    .line 731
    .end local v17    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_1
    if-lez v20, :cond_2

    if-gtz v12, :cond_7

    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 679
    :cond_3
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v8, p0

    .line 681
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .line 682
    .local v8, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 683
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v21

    if-nez v21, :cond_4

    .line 684
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 686
    :cond_4
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 693
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconSize:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconSize:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 695
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 696
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 701
    :goto_2
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/app/ComposedIconInfo;->swatchType:Landroid/app/ComposedIconInfo$SwatchType;

    move-object/from16 v21, v0

    sget-object v22, Landroid/app/ComposedIconInfo$SwatchType;->None:Landroid/app/ComposedIconInfo$SwatchType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 702
    const/16 v21, 0x20

    move/from16 v0, v21

    invoke-static {v7, v0}, Lcom/android/internal/util/cm/palette/Palette;->generate(Landroid/graphics/Bitmap;I)Lcom/android/internal/util/cm/palette/Palette;

    move-result-object v18

    .line 703
    .local v18, "palette":Lcom/android/internal/util/cm/palette/Palette;
    sget-object v21, Landroid/app/IconPackHelper$1;->$SwitchMap$android$app$ComposedIconInfo$SwatchType:[I

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/app/ComposedIconInfo;->swatchType:Landroid/app/ComposedIconInfo$SwatchType;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/ComposedIconInfo$SwatchType;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    goto/16 :goto_1

    .line 705
    :pswitch_0
    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/cm/palette/Palette;->getVibrantColor(I)I

    move-result v6

    .line 706
    goto/16 :goto_1

    .line 698
    .end local v18    # "palette":Lcom/android/internal/util/cm/palette/Palette;
    :cond_5
    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconSize:I

    move/from16 v20, v0

    .line 699
    move-object/from16 v0, p4

    iget v12, v0, Landroid/app/ComposedIconInfo;->iconSize:I

    goto :goto_2

    .line 708
    .restart local v18    # "palette":Lcom/android/internal/util/cm/palette/Palette;
    :pswitch_1
    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/cm/palette/Palette;->getLightVibrantColor(I)I

    move-result v6

    .line 709
    goto/16 :goto_1

    .line 711
    :pswitch_2
    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/cm/palette/Palette;->getDarkVibrantColor(I)I

    move-result v6

    .line 712
    goto/16 :goto_1

    .line 714
    :pswitch_3
    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/cm/palette/Palette;->getMutedColor(I)I

    move-result v6

    .line 715
    goto/16 :goto_1

    .line 717
    :pswitch_4
    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/cm/palette/Palette;->getLightMutedColor(I)I

    move-result v6

    .line 718
    goto/16 :goto_1

    .line 720
    :pswitch_5
    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/cm/palette/Palette;->getDarkMutedColor(I)I

    move-result v6

    goto/16 :goto_1

    .line 727
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v18    # "palette":Lcom/android/internal/util/cm/palette/Palette;
    :cond_6
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/VectorDrawable;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 728
    move-object/from16 v0, p4

    iget v12, v0, Landroid/app/ComposedIconInfo;->iconSize:I

    move/from16 v20, v12

    goto/16 :goto_1

    .line 733
    :cond_7
    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v12, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 735
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v9, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 738
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 739
    .local v14, "oldBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 740
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 741
    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 742
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v11, v21, v22

    .line 743
    .local v11, "halfWidth":F
    int-to-float v0, v12

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v10, v21, v22

    .line 744
    .local v10, "halfHeight":F
    move-object/from16 v0, p4

    iget v4, v0, Landroid/app/ComposedIconInfo;->iconRotation:F

    .line 745
    .local v4, "angle":F
    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconRotationVariance:F

    move/from16 v21, v0

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_8

    .line 746
    sget-object v21, Landroid/app/IconPackHelper$IconCustomizer;->sRandom:Ljava/util/Random;

    invoke-virtual/range {v21 .. v21}, Ljava/util/Random;->nextFloat()F

    move-result v21

    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconRotationVariance:F

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    mul-float v22, v22, v23

    mul-float v21, v21, v22

    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconRotationVariance:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    add-float v4, v4, v21

    .line 749
    :cond_8
    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconScale:F

    move/from16 v21, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconScale:F

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1, v11, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 750
    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconTranslationX:F

    move/from16 v21, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconTranslationY:F

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 751
    invoke-virtual {v9, v4, v11, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 752
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/app/ComposedIconInfo;->colorFilter:[F

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    .line 753
    const/4 v15, 0x0

    .line 754
    .local v15, "p":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v21, v0

    if-eqz v21, :cond_f

    move-object/from16 v21, p0

    .line 755
    check-cast v21, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v15

    .line 759
    :cond_9
    :goto_3
    if-eqz v15, :cond_a

    new-instance v21, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/app/ComposedIconInfo;->colorFilter:[F

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 761
    .end local v15    # "p":Landroid/graphics/Paint;
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 762
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 765
    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconMask:I

    move/from16 v21, v0

    if-eqz v21, :cond_b

    .line 766
    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconMask:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 767
    .local v13, "mask":Landroid/graphics/drawable/Drawable;
    if-eqz v13, :cond_b

    .line 768
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v21, v13

    .line 769
    check-cast v21, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v21

    new-instance v22, Landroid/graphics/PorterDuffXfermode;

    sget-object v23, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v22 .. v23}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 771
    invoke-virtual {v13, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 775
    .end local v13    # "mask":Landroid/graphics/drawable/Drawable;
    :cond_b
    if-eqz p2, :cond_d

    .line 776
    invoke-virtual/range {p1 .. p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 777
    .local v5, "back":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_d

    .line 778
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v21, v5

    .line 779
    check-cast v21, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v16

    .line 780
    .local v16, "paint":Landroid/graphics/Paint;
    new-instance v21, Landroid/graphics/PorterDuffXfermode;

    sget-object v22, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v21 .. v22}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 782
    if-eqz v6, :cond_c

    .line 783
    new-instance v21, Landroid/graphics/PorterDuffColorFilter;

    sget-object v22, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v6, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 786
    :cond_c
    invoke-virtual {v5, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 790
    .end local v5    # "back":Landroid/graphics/drawable/Drawable;
    .end local v16    # "paint":Landroid/graphics/Paint;
    :cond_d
    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconUpon:I

    move/from16 v21, v0

    if-eqz v21, :cond_e

    .line 791
    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconUpon:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 792
    .local v19, "upon":Landroid/graphics/drawable/Drawable;
    if-eqz v19, :cond_e

    .line 793
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 794
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 797
    .end local v19    # "upon":Landroid/graphics/drawable/Drawable;
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 798
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getDensity()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto/16 :goto_0

    .line 756
    .restart local v15    # "p":Landroid/graphics/Paint;
    :cond_f
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v21, v0

    if-eqz v21, :cond_9

    move-object/from16 v21, p0

    .line 757
    check-cast v21, Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v15

    goto/16 :goto_3

    .line 703
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static getCachedIconName(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "resId"    # I
    .param p2, "density"    # I

    .prologue
    .line 819
    const-string v0, "%s_%08x_%d.png"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCachedIconPath(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "resId"    # I
    .param p2, "density"    # I

    .prologue
    .line 814
    const-string v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_ICON_CACHE_DIR:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0, p1, p2}, Landroid/app/IconPackHelper$IconCustomizer;->getCachedIconName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getComposedIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Landroid/app/ComposedIconInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconInfo"    # Landroid/app/ComposedIconInfo;

    .prologue
    .line 599
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 600
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {p0, v0, p2}, Landroid/app/IconPackHelper$IconCustomizer;->getComposedIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Landroid/app/ComposedIconInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getComposedIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Landroid/app/ComposedIconInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "iconInfo"    # Landroid/app/ComposedIconInfo;

    .prologue
    .line 605
    if-nez p2, :cond_0

    .line 618
    .end local p0    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object p0

    .line 606
    .restart local p0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    .line 607
    .local v0, "back":I
    const/4 v2, 0x0

    .line 608
    .local v2, "defaultSwatchColor":I
    iget-object v3, p2, Landroid/app/ComposedIconInfo;->swatchType:Landroid/app/ComposedIconInfo$SwatchType;

    sget-object v4, Landroid/app/ComposedIconInfo$SwatchType;->None:Landroid/app/ComposedIconInfo$SwatchType;

    if-eq v3, v4, :cond_2

    .line 609
    iget v0, p2, Landroid/app/ComposedIconInfo;->iconPaletteBack:I

    .line 610
    iget-object v3, p2, Landroid/app/ComposedIconInfo;->defaultSwatchColors:[I

    array-length v3, v3

    if-lez v3, :cond_1

    .line 611
    iget-object v3, p2, Landroid/app/ComposedIconInfo;->defaultSwatchColors:[I

    sget-object v4, Landroid/app/IconPackHelper$IconCustomizer;->sRandom:Ljava/util/Random;

    iget-object v5, p2, Landroid/app/ComposedIconInfo;->defaultSwatchColors:[I

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget v2, v3, v4

    .line 617
    :cond_1
    :goto_1
    invoke-static {p0, p1, v0, v2, p2}, Landroid/app/IconPackHelper$IconCustomizer;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;IILandroid/app/ComposedIconInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 618
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_2
    move-object p0, v3

    goto :goto_0

    .line 614
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v3, p2, Landroid/app/ComposedIconInfo;->iconBacks:[I

    if-eqz v3, :cond_1

    iget-object v3, p2, Landroid/app/ComposedIconInfo;->iconBacks:[I

    array-length v3, v3

    if-lez v3, :cond_1

    .line 615
    iget-object v3, p2, Landroid/app/ComposedIconInfo;->iconBacks:[I

    sget-object v4, Landroid/app/IconPackHelper$IconCustomizer;->sRandom:Ljava/util/Random;

    iget-object v5, p2, Landroid/app/ComposedIconInfo;->iconBacks:[I

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget v0, v3, v4

    goto :goto_1

    .line 618
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public static getValue(Landroid/content/res/Resources;ILandroid/util/TypedValue;Landroid/graphics/drawable/Drawable;)V
    .locals 10
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "baseIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 623
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/AssetManager;->getAppName()Ljava/lang/String;

    move-result-object v5

    .line 624
    .local v5, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/res/Resources;->getComposedIconInfo()Landroid/app/ComposedIconInfo;

    move-result-object v4

    .line 625
    .local v4, "iconInfo":Landroid/app/ComposedIconInfo;
    if-nez v4, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 630
    .local v6, "tempValue":Landroid/util/TypedValue;
    invoke-virtual {v6, p2}, Landroid/util/TypedValue;->setTo(Landroid/util/TypedValue;)V

    .line 631
    const/16 v7, 0x80

    iput v7, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 632
    const v7, -0x7f000001

    and-int/2addr v7, p1

    iput v7, p2, Landroid/util/TypedValue;->data:I

    .line 633
    iget v7, p2, Landroid/util/TypedValue;->density:I

    invoke-static {v5, p1, v7}, Landroid/app/IconPackHelper$IconCustomizer;->getCachedIconPath(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 634
    iget-object v7, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    const v8, 0x7fffffff

    and-int v3, v7, v8

    .line 635
    .local v3, "hashCode":I
    const/4 v2, 0x0

    .line 637
    .local v2, "defaultSwatchColor":I
    new-instance v7, Ljava/io/File;

    iget-object v8, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, "back":I
    iget-object v7, v4, Landroid/app/ComposedIconInfo;->swatchType:Landroid/app/ComposedIconInfo$SwatchType;

    sget-object v8, Landroid/app/ComposedIconInfo$SwatchType;->None:Landroid/app/ComposedIconInfo$SwatchType;

    if-eq v7, v8, :cond_3

    .line 641
    iget v0, v4, Landroid/app/ComposedIconInfo;->iconPaletteBack:I

    .line 642
    iget-object v7, v4, Landroid/app/ComposedIconInfo;->defaultSwatchColors:[I

    array-length v7, v7

    if-lez v7, :cond_2

    .line 643
    iget-object v7, v4, Landroid/app/ComposedIconInfo;->defaultSwatchColors:[I

    iget-object v8, v4, Landroid/app/ComposedIconInfo;->defaultSwatchColors:[I

    array-length v8, v8

    rem-int v8, v3, v8

    aget v2, v7, v8

    .line 652
    :cond_2
    :goto_1
    invoke-static {p3, p0, v0, v2, v4}, Landroid/app/IconPackHelper$IconCustomizer;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;IILandroid/app/ComposedIconInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 653
    .local v1, "bmp":Landroid/graphics/Bitmap;
    iget v7, p2, Landroid/util/TypedValue;->density:I

    invoke-static {v5, p1, v7}, Landroid/app/IconPackHelper$IconCustomizer;->getCachedIconName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/app/IconPackHelper$IconCustomizer;->cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 654
    # getter for: Landroid/app/IconPackHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/IconPackHelper;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to cache icon "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-virtual {p2, v6}, Landroid/util/TypedValue;->setTo(Landroid/util/TypedValue;)V

    goto :goto_0

    .line 646
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v7, v4, Landroid/app/ComposedIconInfo;->iconBacks:[I

    if-eqz v7, :cond_2

    iget-object v7, v4, Landroid/app/ComposedIconInfo;->iconBacks:[I

    array-length v7, v7

    if-lez v7, :cond_2

    .line 647
    iget-object v7, v4, Landroid/app/ComposedIconInfo;->iconBacks:[I

    iget-object v8, v4, Landroid/app/ComposedIconInfo;->iconBacks:[I

    array-length v8, v8

    rem-int v8, v3, v8

    aget v0, v7, v8

    goto :goto_1
.end method
