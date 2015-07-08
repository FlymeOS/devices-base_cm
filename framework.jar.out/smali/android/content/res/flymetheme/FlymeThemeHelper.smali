.class public Landroid/content/res/flymetheme/FlymeThemeHelper;
.super Ljava/lang/Object;
.source "FlymeThemeHelper.java"


# static fields
.field public static LAUNCHER_CONFIG_CALENDAR_DAY_COLOR:Ljava/lang/String; = null

.field public static LAUNCHER_CONFIG_DRAW_BG_SHADOW:Ljava/lang/String; = null

.field public static LAUNCHER_CONFIG_DRAW_DATE:Ljava/lang/String; = null

.field public static LAUNCHER_CONFIG_DRAW_ICON_SHADOW:Ljava/lang/String; = null

.field public static LAUNCHER_CONFIG_STATUSBAR_COLOR:Ljava/lang/String; = null

.field public static MEIZU_CALENDAR_ICON:Z = false

.field private static SCALE_VALUE:F = 0.0f

.field private static final THEME_ICON_FLAG_BACKGROUND:I = 0x2

.field private static final THEME_ICON_FLAG_BB:I = 0x3

.field private static final THEME_ICON_FLAG_BORDER:I = 0x1

.field private static final THEME_ICON_FLAG_DEFAULT:I = 0x0

.field private static final THEME_ICON_FLAG_MASK:I = 0x4

.field private static final THEME_ICON_FLAG_MBB:I = 0x7

.field private static final THEME_ICON_FLAG_M_BACKGROUND:I = 0x6

.field private static final THEME_ICON_FLAG_M_BORDER:I = 0x5

.field private static mLauncherHelper:Landroid/content/res/flymetheme/LauncherConfigHelper;

.field private static mMBBFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->MEIZU_CALENDAR_ICON:Z

    .line 52
    const-string v0, "draw_date"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_DRAW_DATE:Ljava/lang/String;

    .line 56
    const-string v0, "draw_icon_shadow"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_DRAW_ICON_SHADOW:Ljava/lang/String;

    .line 60
    const-string v0, "draw_bg_shadow"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_DRAW_BG_SHADOW:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "statusbar_color"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_STATUSBAR_COLOR:Ljava/lang/String;

    .line 69
    const-string v0, "calendar_dayofweek_color"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_CALENDAR_DAY_COLOR:Ljava/lang/String;

    .line 76
    const v0, 0x3f558106    # 0.834f

    sput v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->SCALE_VALUE:F

    .line 81
    const/4 v0, 0x0

    sput v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "backguard"    # Landroid/graphics/Bitmap;
    .param p1, "top"    # Landroid/graphics/Bitmap;
    .param p2, "isBorder"    # Z

    .prologue
    .line 141
    const/4 v9, 0x0

    .line 142
    .local v9, "newBitmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 144
    .local v10, "tmpBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 145
    invoke-static {v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 146
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 147
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 148
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 149
    .local v11, "w":I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 150
    .local v7, "h":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 151
    .local v12, "w_2":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 152
    .local v8, "h_2":I
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 153
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v11

    int-to-float v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 154
    new-instance v5, Landroid/graphics/Paint;

    .end local v5    # "paint":Landroid/graphics/Paint;
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 155
    .restart local v5    # "paint":Landroid/graphics/Paint;
    sub-int v1, v11, v12

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-int v2, v7, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 166
    const/4 v10, 0x0

    .line 169
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v7    # "h":I
    .end local v8    # "h_2":I
    .end local v11    # "w":I
    .end local v12    # "w_2":I
    :cond_0
    :goto_0
    return-object v9

    .line 156
    :catch_0
    move-exception v6

    .line 157
    .local v6, "er":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    if-eqz p2, :cond_1

    .line 159
    move-object v9, p0

    .line 164
    :goto_1
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 166
    const/4 v10, 0x0

    goto :goto_0

    .line 161
    :cond_1
    move-object v9, p1

    goto :goto_1

    .line 164
    .end local v6    # "er":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 165
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 166
    const/4 v10, 0x0

    :cond_2
    throw v1
.end method

.method private static addCalendarBorder(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "newBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 417
    const/4 v3, 0x0

    .line 418
    .local v3, "result":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 419
    .local v4, "temp":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 421
    .local v2, "resBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    const-string v5, "calendar_mask"

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 422
    .local v0, "border":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 423
    sget v5, Lcom/flyme/internal/R$drawable;->calendar_mask:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 425
    :cond_0
    if-nez v0, :cond_3

    .line 426
    move-object v3, p1

    .line 435
    .end local v0    # "border":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 436
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 437
    const/4 v4, 0x0

    .line 439
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 440
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 441
    const/4 v2, 0x0

    .line 444
    :cond_2
    :goto_1
    return-object v3

    .line 428
    .restart local v0    # "border":Landroid/graphics/drawable/Drawable;
    :cond_3
    :try_start_1
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "border":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 429
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 430
    const/4 v5, 0x1

    invoke-static {p1, v2, v5}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 432
    :catch_0
    move-exception v1

    .line 433
    .local v1, "e":Ljava/lang/Exception;
    move-object v3, p1

    .line 435
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 436
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 437
    const/4 v4, 0x0

    .line 439
    :cond_4
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 440
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 441
    const/4 v2, 0x0

    goto :goto_1

    .line 435
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_5

    .line 436
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 437
    const/4 v4, 0x0

    .line 439
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_6

    .line 440
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 441
    const/4 v2, 0x0

    :cond_6
    throw v5
.end method

.method public static addDateToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 20
    .param p0, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 316
    const/4 v10, 0x0

    .line 317
    .local v10, "oneBitmap":Landroid/graphics/Bitmap;
    const/4 v14, 0x0

    .line 318
    .local v14, "twoBitmap":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 320
    .local v13, "result":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    .line 321
    .local v12, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 322
    .local v2, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v17

    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 323
    .local v9, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 324
    .local v11, "paint":Landroid/graphics/Paint;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 325
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 326
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getDateOfMonth()Ljava/lang/String;

    move-result-object v4

    .line 327
    .local v4, "date":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x42ce0000    # 103.0f

    mul-float v17, v17, v18

    const/high16 v18, 0x43700000    # 240.0f

    div-float v16, v17, v18

    .line 328
    .local v16, "y":F
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 329
    .local v7, "nH":I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 330
    .local v8, "nW":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 331
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-static {v12, v0, v7, v8}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getDateImage(Landroid/content/res/Resources;CII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 332
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v17, v8, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v15, v17, v18

    .line 333
    .local v15, "x":F
    move/from16 v0, v16

    invoke-virtual {v3, v10, v15, v0, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 341
    :goto_0
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    .end local v13    # "result":Landroid/graphics/drawable/Drawable;
    invoke-direct {v13, v12, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    .restart local v13    # "result":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_0

    .line 350
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 351
    const/4 v10, 0x0

    .line 353
    :cond_0
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_1

    .line 354
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 355
    const/4 v14, 0x0

    .line 358
    .end local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "date":Ljava/lang/String;
    .end local v7    # "nH":I
    .end local v8    # "nW":I
    .end local v9    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v12    # "resources":Landroid/content/res/Resources;
    .end local v15    # "x":F
    .end local v16    # "y":F
    :cond_1
    :goto_1
    return-object v13

    .line 335
    .restart local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "date":Ljava/lang/String;
    .restart local v7    # "nH":I
    .restart local v8    # "nW":I
    .restart local v9    # "newBitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "paint":Landroid/graphics/Paint;
    .restart local v12    # "resources":Landroid/content/res/Resources;
    .restart local v16    # "y":F
    :cond_2
    const/16 v17, 0x0

    :try_start_1
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-static {v12, v0, v7, v8}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getDateImage(Landroid/content/res/Resources;CII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 336
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-static {v12, v0, v7, v8}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getDateImage(Landroid/content/res/Resources;CII)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 337
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    add-int v17, v17, v18

    sub-int v17, v8, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v15, v17, v18

    .line 338
    .restart local v15    # "x":F
    move/from16 v0, v16

    invoke-virtual {v3, v10, v15, v0, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 339
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v15

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v3, v14, v0, v1, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 342
    .end local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "date":Ljava/lang/String;
    .end local v7    # "nH":I
    .end local v8    # "nW":I
    .end local v9    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v12    # "resources":Landroid/content/res/Resources;
    .end local v13    # "result":Landroid/graphics/drawable/Drawable;
    .end local v15    # "x":F
    .end local v16    # "y":F
    :catch_0
    move-exception v6

    .line 343
    .local v6, "er":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    move-object/from16 v13, p0

    .line 349
    .restart local v13    # "result":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_3

    .line 350
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 351
    const/4 v10, 0x0

    .line 353
    :cond_3
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_1

    .line 354
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 355
    const/4 v14, 0x0

    goto :goto_1

    .line 345
    .end local v6    # "er":Ljava/lang/OutOfMemoryError;
    .end local v13    # "result":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v5

    .line 346
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 347
    move-object/from16 v13, p0

    .line 349
    .restart local v13    # "result":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_4

    .line 350
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 351
    const/4 v10, 0x0

    .line 353
    :cond_4
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_1

    .line 354
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 355
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 349
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v13    # "result":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v17

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-nez v18, :cond_5

    .line 350
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 351
    const/4 v10, 0x0

    .line 353
    :cond_5
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-nez v18, :cond_6

    .line 354
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 355
    const/4 v14, 0x0

    :cond_6
    throw v17
.end method

.method public static addDayOfWeekToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 23
    .param p0, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 371
    const/16 v20, 0x0

    .line 372
    .local v20, "result":Landroid/graphics/drawable/Drawable;
    const/4 v15, 0x0

    .line 374
    .local v15, "newBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    .line 375
    .local v19, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v10, v0

    .line 376
    .local v10, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 377
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 378
    .local v11, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 379
    .local v4, "textPaint":Landroid/text/TextPaint;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 380
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 382
    sget v5, Lcom/flyme/internal/R$color;->calendar_dayofweek_color:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    .line 384
    .local v12, "color":I
    :try_start_1
    sget-object v5, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_CALENDAR_DAY_COLOR:Ljava/lang/String;

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getLauncherConfigByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 385
    .local v18, "resColor":Ljava/lang/String;
    if-nez v18, :cond_0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 386
    :cond_0
    const/4 v5, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v16

    .line 387
    .local v16, "l":J
    move-wide/from16 v0, v16

    long-to-int v12, v0

    .line 392
    .end local v16    # "l":J
    .end local v18    # "resColor":Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v4, v12}, Landroid/text/TextPaint;->setColor(I)V

    .line 393
    invoke-static/range {v19 .. v19}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getDayOfWeek(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, "date":Ljava/lang/String;
    new-instance v2, Landroid/text/StaticLayout;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 396
    .local v2, "sl":Landroid/text/StaticLayout;
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42200000    # 40.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x43700000    # 240.0f

    div-float v22, v5, v6

    .line 397
    .local v22, "tanslateY":F
    const/4 v5, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 398
    invoke-virtual {v2, v11}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 399
    new-instance v21, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v19

    invoke-static {v0, v15}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addCalendarBorder(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 407
    .end local v20    # "result":Landroid/graphics/drawable/Drawable;
    .local v21, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_4

    move-object/from16 v5, v21

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eq v15, v5, :cond_4

    .line 409
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 410
    const/4 v15, 0x0

    move-object/from16 v20, v21

    .line 413
    .end local v2    # "sl":Landroid/text/StaticLayout;
    .end local v3    # "date":Ljava/lang/String;
    .end local v4    # "textPaint":Landroid/text/TextPaint;
    .end local v10    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v11    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "color":I
    .end local v19    # "resources":Landroid/content/res/Resources;
    .end local v21    # "result":Landroid/graphics/drawable/Drawable;
    .end local v22    # "tanslateY":F
    .restart local v20    # "result":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    return-object v20

    .line 389
    .restart local v4    # "textPaint":Landroid/text/TextPaint;
    .restart local v10    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v11    # "canvas":Landroid/graphics/Canvas;
    .restart local v12    # "color":I
    .restart local v19    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v13

    .line 390
    .local v13, "e":Ljava/lang/Exception;
    :try_start_3
    sget v5, Lcom/flyme/internal/R$color;->calendar_dayofweek_color:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v12

    goto :goto_0

    .line 400
    .end local v4    # "textPaint":Landroid/text/TextPaint;
    .end local v10    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v11    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "color":I
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v19    # "resources":Landroid/content/res/Resources;
    :catch_1
    move-exception v14

    .line 401
    .local v14, "er":Ljava/lang/OutOfMemoryError;
    :try_start_4
    invoke-virtual {v14}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 402
    move-object/from16 v20, p0

    .line 407
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v5, v20

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eq v15, v5, :cond_2

    .line 409
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 410
    const/4 v15, 0x0

    goto :goto_1

    .line 403
    .end local v14    # "er":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v13

    .line 404
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 405
    move-object/from16 v20, p0

    .line 407
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v5, v20

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eq v15, v5, :cond_2

    .line 409
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 410
    const/4 v15, 0x0

    goto :goto_1

    .line 407
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v15, :cond_3

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_3

    check-cast v20, Landroid/graphics/drawable/BitmapDrawable;

    .end local v20    # "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eq v15, v6, :cond_3

    .line 409
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 410
    const/4 v15, 0x0

    :cond_3
    throw v5

    .restart local v2    # "sl":Landroid/text/StaticLayout;
    .restart local v3    # "date":Ljava/lang/String;
    .restart local v4    # "textPaint":Landroid/text/TextPaint;
    .restart local v10    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v11    # "canvas":Landroid/graphics/Canvas;
    .restart local v12    # "color":I
    .restart local v19    # "resources":Landroid/content/res/Resources;
    .restart local v21    # "result":Landroid/graphics/drawable/Drawable;
    .restart local v22    # "tanslateY":F
    :cond_4
    move-object/from16 v20, v21

    .end local v21    # "result":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method public static cleanConfigHelper()V
    .locals 1

    .prologue
    .line 787
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->mLauncherHelper:Landroid/content/res/flymetheme/LauncherConfigHelper;

    .line 788
    return-void
.end method

.method public static drawShadowToIcon()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 255
    :try_start_0
    new-instance v2, Landroid/content/res/flymetheme/LauncherConfigHelper;

    invoke-direct {v2}, Landroid/content/res/flymetheme/LauncherConfigHelper;-><init>()V

    .line 256
    .local v2, "info":Landroid/content/res/flymetheme/LauncherConfigHelper;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "draw_shadow"

    invoke-static {v4}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getLauncherConfigByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "hasDate":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_0

    const-string v4, "false"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 265
    .end local v1    # "hasDate":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 259
    .restart local v1    # "hasDate":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    const/4 v3, 0x1

    goto :goto_0

    .line 263
    .end local v1    # "hasDate":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static generateThemeBitmap()[Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 756
    const/4 v1, 0x3

    new-array v0, v1, [Landroid/graphics/Bitmap;

    .line 757
    .local v0, "themeBitmap":[Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    const-string v2, "icon_mask.png"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeResource;->getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 758
    sget v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    or-int/lit8 v1, v1, 0x4

    sput v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    .line 760
    :cond_0
    const/4 v1, 0x1

    const-string v2, "icon_background.png"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeResource;->getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 762
    sget v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    or-int/lit8 v1, v1, 0x2

    sput v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    .line 764
    :cond_1
    const/4 v1, 0x2

    const-string v2, "icon_border.png"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeResource;->getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    if-eqz v2, :cond_2

    .line 765
    sget v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    or-int/lit8 v1, v1, 0x1

    sput v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    .line 767
    :cond_2
    return-object v0
.end method

.method public static getCalendarIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 211
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :try_start_0
    const-string v2, "com.android.calendar.nodate"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-object v0

    .line 215
    :cond_1
    const-string v2, "com.android.calendar"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeHelper;->isAddDateToIcon()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addDateToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 218
    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addDayOfWeekToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getConfigXmlByPackageName(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 798
    const/4 v1, 0x0

    .line 799
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Landroid/content/res/flymetheme/MtpkManager;

    invoke-direct {v2}, Landroid/content/res/flymetheme/MtpkManager;-><init>()V

    .line 800
    .local v2, "mZipThemeManager":Landroid/content/res/flymetheme/MtpkManager;
    const-string v3, "config.xml"

    .line 801
    .local v3, "resPath":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v2, p0, v3, v5}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromPackage(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 805
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "mZipThemeManager":Landroid/content/res/flymetheme/MtpkManager;
    .end local v3    # "resPath":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 803
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 804
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v4

    .line 805
    goto :goto_0
.end method

.method public static getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 181
    .local v7, "sysResources":Landroid/content/res/Resources;
    if-nez v7, :cond_1

    .line 182
    const/4 v1, 0x0

    .line 199
    :cond_0
    :goto_0
    return-object v1

    .line 184
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, "resPath":Ljava/lang/String;
    invoke-static {v6}, Landroid/content/res/flymetheme/FlymeThemeResource;->get3rdPartThemeIcon(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 187
    .local v5, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 189
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_0

    .line 190
    :try_start_0
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 192
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v2

    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 194
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    .line 195
    .local v4, "er":Ljava/lang/OutOfMemoryError;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 196
    .end local v4    # "er":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v3

    .line 197
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 196
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :catch_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 194
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :catch_3
    move-exception v4

    move-object v1, v2

    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method private static getDateImage(Landroid/content/res/Resources;CII)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "date"    # C
    .param p2, "h"    # I
    .param p3, "w"    # I

    .prologue
    const/high16 v6, 0x43700000    # 240.0f

    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    packed-switch p1, :pswitch_data_0

    .line 510
    :goto_0
    :pswitch_0
    if-nez v0, :cond_0

    .line 511
    invoke-static {p0, p1}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getSystemDefDateImage(Landroid/content/res/Resources;C)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 515
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v1

    .line 476
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    const-string v2, "ic_launcher_calendar_0"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 477
    goto :goto_0

    .line 479
    :pswitch_2
    const-string v2, "ic_launcher_calendar_1"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 480
    goto :goto_0

    .line 482
    :pswitch_3
    const-string v2, "ic_launcher_calendar_2"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 483
    goto :goto_0

    .line 485
    :pswitch_4
    const-string v2, "ic_launcher_calendar_3"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 486
    goto :goto_0

    .line 488
    :pswitch_5
    const-string v2, "ic_launcher_calendar_4"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 489
    goto :goto_0

    .line 491
    :pswitch_6
    const-string v2, "ic_launcher_calendar_5"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 492
    goto :goto_0

    .line 494
    :pswitch_7
    const-string v2, "ic_launcher_calendar_6"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 495
    goto :goto_0

    .line 497
    :pswitch_8
    const-string v2, "ic_launcher_calendar_7"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 498
    goto :goto_0

    .line 500
    :pswitch_9
    const-string v2, "ic_launcher_calendar_8"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 501
    goto :goto_0

    .line 503
    :pswitch_a
    const-string v2, "ic_launcher_calendar_9"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 504
    goto :goto_0

    .line 513
    :cond_0
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    int-to-float v3, p3

    const/high16 v4, 0x428c0000    # 70.0f

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    float-to-int v3, v3

    int-to-float v4, p2

    const/high16 v5, 0x42b00000    # 88.0f

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    float-to-int v4, v4

    invoke-static {v2, v3, v4}, Landroid/content/res/flymetheme/FlymeThemeHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 515
    .local v1, "resBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 474
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method

.method private static getDateOfMonth()Ljava/lang/String;
    .locals 4

    .prologue
    .line 448
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 449
    .local v2, "today":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 450
    .local v1, "cal":Ljava/util/Calendar;
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 451
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 452
    .local v0, "aDate":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getDayOfWeek(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 8
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 456
    sget v5, Lcom/flyme/internal/R$array;->calendar_week_title:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 459
    .local v4, "weekDays":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 460
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 461
    .local v1, "curDate":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 462
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 463
    .local v3, "w":I
    if-gez v3, :cond_0

    .line 464
    const/4 v3, 0x0

    .line 465
    :cond_0
    aget-object v5, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "curDate":Ljava/util/Date;
    .end local v3    # "w":I
    :goto_0
    return-object v5

    .line 466
    :catch_0
    move-exception v2

    .line 467
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, " getDayOfWeek: "

    invoke-static {v5, v2}, Landroid/content/res/flymetheme/FlymeLogUtil;->exception(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 468
    const/4 v5, 0x0

    aget-object v5, v4, v5

    goto :goto_0
.end method

.method public static getLauncherConfigByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 277
    :try_start_0
    sget-object v2, Landroid/content/res/flymetheme/FlymeThemeHelper;->mLauncherHelper:Landroid/content/res/flymetheme/LauncherConfigHelper;

    if-nez v2, :cond_0

    .line 278
    new-instance v2, Landroid/content/res/flymetheme/LauncherConfigHelper;

    invoke-direct {v2}, Landroid/content/res/flymetheme/LauncherConfigHelper;-><init>()V

    sput-object v2, Landroid/content/res/flymetheme/FlymeThemeHelper;->mLauncherHelper:Landroid/content/res/flymetheme/LauncherConfigHelper;

    .line 280
    :cond_0
    sget-object v2, Landroid/content/res/flymetheme/FlymeThemeHelper;->mLauncherHelper:Landroid/content/res/flymetheme/LauncherConfigHelper;

    invoke-virtual {v2, p0}, Landroid/content/res/flymetheme/LauncherConfigHelper;->getLauncherConfig(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 284
    :goto_0
    return-object v1

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getSystemDefDateImage(Landroid/content/res/Resources;C)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "date"    # C

    .prologue
    .line 520
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_0:I

    .line 521
    .local v0, "dr":I
    packed-switch p1, :pswitch_data_0

    .line 557
    :goto_0
    :pswitch_0
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 523
    :pswitch_1
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_0:I

    .line 524
    goto :goto_0

    .line 526
    :pswitch_2
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_1:I

    .line 527
    goto :goto_0

    .line 529
    :pswitch_3
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_2:I

    .line 530
    goto :goto_0

    .line 532
    :pswitch_4
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_3:I

    .line 533
    goto :goto_0

    .line 535
    :pswitch_5
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_4:I

    .line 536
    goto :goto_0

    .line 538
    :pswitch_6
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_5:I

    .line 539
    goto :goto_0

    .line 541
    :pswitch_7
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_6:I

    .line 542
    goto :goto_0

    .line 544
    :pswitch_8
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_7:I

    .line 545
    goto :goto_0

    .line 547
    :pswitch_9
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_8:I

    .line 548
    goto :goto_0

    .line 550
    :pswitch_a
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_9:I

    .line 551
    goto :goto_0

    .line 521
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method

.method public static getThemeDefaultActivityIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "srcDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 776
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_0

    move-object v1, p1

    .line 783
    :goto_0
    return-object v1

    .line 778
    :cond_0
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeResource;->getDefaultActivityIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 779
    .local v0, "defIcon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 780
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local p1    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    move-object v1, p1

    .line 781
    goto :goto_0

    .line 783
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeThemeIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static isAddDateToIcon()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 235
    :try_start_0
    new-instance v2, Landroid/content/res/flymetheme/LauncherConfigHelper;

    invoke-direct {v2}, Landroid/content/res/flymetheme/LauncherConfigHelper;-><init>()V

    .line 236
    .local v2, "info":Landroid/content/res/flymetheme/LauncherConfigHelper;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "draw_date"

    invoke-static {v4}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getLauncherConfigByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "hasDate":Ljava/lang/String;
    const-string v4, "false"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 238
    const/4 v3, 0x0

    .line 244
    .end local v1    # "hasDate":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isThemeIcon()Z
    .locals 4

    .prologue
    .line 297
    :try_start_0
    const-string v2, "/data/data/com.meizu.customizecenter/theme/icons"

    .line 298
    .local v2, "zipFilePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    const/4 v3, 0x1

    .line 305
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return v3

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 305
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "maskBmp"    # Landroid/graphics/Bitmap;
    .param p1, "viewBmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 91
    const/4 v3, 0x0

    .line 93
    .local v3, "resultBmp":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 94
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 95
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 96
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 97
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {p1, v6, v7}, Landroid/content/res/flymetheme/FlymeThemeHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 98
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v4, v6, 0x2

    .line 99
    .local v4, "x":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v5, v6, 0x2

    .line 100
    .local v5, "y":I
    int-to-float v6, v4

    int-to-float v7, v5

    invoke-virtual {v0, p1, v6, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "paint":Landroid/graphics/Paint;
    .end local v4    # "x":I
    .end local v5    # "y":I
    :goto_0
    return-object v3

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "er":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 103
    move-object v3, p1

    goto :goto_0
.end method

.method public static makeThemeIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "srcDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 567
    instance-of v10, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v10, :cond_0

    .line 653
    .end local p1    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object p1

    .line 569
    .restart local p1    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v5, 0x0

    .local v5, "retDrawable":Landroid/graphics/drawable/Drawable;
    move-object v10, p1

    .line 570
    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 571
    .local v6, "src":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 572
    .local v7, "step1Bitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 573
    .local v8, "step2Bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 575
    .local v4, "result":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeHelper;->generateThemeBitmap()[Landroid/graphics/Bitmap;

    move-result-object v9

    .line 576
    .local v9, "themeBitmap":[Landroid/graphics/Bitmap;
    sget v10, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    packed-switch v10, :pswitch_data_0

    .line 635
    :goto_1
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 636
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 637
    const/4 v7, 0x0

    .line 639
    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_2

    .line 640
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 641
    const/4 v8, 0x0

    .line 644
    :cond_2
    move-object v0, v9

    .local v0, "arr$":[Landroid/graphics/Bitmap;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 645
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_3

    .line 646
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 644
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 578
    .end local v0    # "arr$":[Landroid/graphics/Bitmap;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :pswitch_0
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 579
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const/4 v11, 0x0

    invoke-static {v10, v7, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 580
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const/4 v11, 0x1

    invoke-static {v8, v10, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 581
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 582
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 586
    :pswitch_1
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 587
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const/4 v11, 0x0

    invoke-static {v10, v7, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 588
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 589
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 593
    :pswitch_2
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 594
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 595
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 596
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 600
    :pswitch_3
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const/4 v11, 0x0

    invoke-static {v10, v6, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 601
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 602
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 603
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 607
    :pswitch_4
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 608
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 609
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 613
    :pswitch_5
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const/4 v11, 0x0

    invoke-static {v10, v6, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 614
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 615
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 619
    :pswitch_6
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const/4 v11, 0x1

    invoke-static {v6, v10, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 620
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 621
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 625
    :pswitch_7
    if-eqz p2, :cond_4

    iget v10, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_4

    .line 626
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v10, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v10}, Landroid/content/res/flymetheme/FlymeThemeHelper;->scale3rdPartIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v5, p0, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 629
    :cond_4
    move-object v5, p1

    goto/16 :goto_1

    .line 651
    .restart local v0    # "arr$":[Landroid/graphics/Bitmap;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_5
    sget v10, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    and-int/lit8 v10, v10, 0x0

    sput v10, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    move-object p1, v5

    .line 653
    goto/16 :goto_0

    .line 576
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static makeThemeShortcut(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "srcDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 663
    instance-of v10, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v10, :cond_0

    .line 749
    .end local p1    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object p1

    .line 665
    .restart local p1    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v5, 0x0

    .local v5, "retDrawable":Landroid/graphics/drawable/Drawable;
    move-object v10, p1

    .line 666
    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 667
    .local v6, "src":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 668
    .local v7, "step1Bitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 669
    .local v8, "step2Bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 671
    .local v4, "result":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeHelper;->generateThemeBitmap()[Landroid/graphics/Bitmap;

    move-result-object v9

    .line 672
    .local v9, "themeBitmap":[Landroid/graphics/Bitmap;
    sget v10, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    packed-switch v10, :pswitch_data_0

    .line 731
    :goto_1
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 732
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 733
    const/4 v7, 0x0

    .line 735
    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_2

    .line 736
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 737
    const/4 v8, 0x0

    .line 740
    :cond_2
    move-object v0, v9

    .local v0, "arr$":[Landroid/graphics/Bitmap;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 741
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_3

    .line 742
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 740
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 674
    .end local v0    # "arr$":[Landroid/graphics/Bitmap;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :pswitch_0
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 675
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const/4 v11, 0x0

    invoke-static {v10, v7, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 676
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const/4 v11, 0x1

    invoke-static {v8, v10, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 677
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 678
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 682
    :pswitch_1
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 683
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const/4 v11, 0x0

    invoke-static {v10, v7, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 684
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 685
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 689
    :pswitch_2
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 690
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 691
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 692
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 696
    :pswitch_3
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const/4 v11, 0x0

    invoke-static {v10, v6, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 697
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 698
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 699
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 703
    :pswitch_4
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 704
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 705
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 709
    :pswitch_5
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const/4 v11, 0x0

    invoke-static {v10, v6, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 710
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 711
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 715
    :pswitch_6
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const/4 v11, 0x1

    invoke-static {v6, v10, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 716
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 717
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 721
    :pswitch_7
    if-eqz p2, :cond_4

    iget v10, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_4

    .line 722
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v10, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v10}, Landroid/content/res/flymetheme/FlymeThemeHelper;->scale3rdPartIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v5, p0, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 725
    :cond_4
    move-object v5, p1

    goto/16 :goto_1

    .line 747
    .restart local v0    # "arr$":[Landroid/graphics/Bitmap;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_5
    sget v10, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    and-int/lit8 v10, v10, 0x0

    sput v10, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    move-object p1, v5

    .line 749
    goto/16 :goto_0

    .line 672
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static scale3rdPartIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 816
    const/4 v10, 0x0

    .line 817
    .local v10, "resizeBmp":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 818
    .local v11, "resultBmp":Landroid/graphics/Bitmap;
    invoke-static {p1}, Landroid/content/res/flymetheme/FlymeThemeUtils;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    move-object v11, p0

    .line 843
    :cond_0
    :goto_0
    return-object v11

    .line 822
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 824
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 825
    .local v9, "paint":Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 826
    .local v7, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 827
    .local v5, "matrix":Landroid/graphics/Matrix;
    sget v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->SCALE_VALUE:F

    sget v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->SCALE_VALUE:F

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 828
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 830
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v12, v0, 0x2

    .line 831
    .local v12, "x":I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v13, v0, 0x2

    .line 832
    .local v13, "y":I
    int-to-float v0, v12

    int-to-float v1, v13

    invoke-virtual {v7, v10, v0, v1, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 838
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 839
    const/4 v10, 0x0

    goto :goto_0

    .line 833
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "paint":Landroid/graphics/Paint;
    .end local v12    # "x":I
    .end local v13    # "y":I
    :catch_0
    move-exception v8

    .line 834
    .local v8, "error":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 835
    move-object v11, p0

    .line 837
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 838
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 839
    const/4 v10, 0x0

    goto :goto_0

    .line 837
    .end local v8    # "error":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 838
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 839
    const/4 v10, 0x0

    :cond_2
    throw v0
.end method

.method private static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 117
    const/4 v8, 0x0

    .line 119
    .local v8, "newbmp":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 120
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 121
    .local v4, "height":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 122
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    int-to-float v1, v3

    div-float v10, v0, v1

    .line 123
    .local v10, "scaleWidht":F
    int-to-float v0, p2

    int-to-float v1, v4

    div-float v9, v0, v1

    .line 124
    .local v9, "scaleHeight":F
    invoke-virtual {v5, v10, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 125
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 130
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "scaleHeight":F
    .end local v10    # "scaleWidht":F
    :goto_0
    return-object v8

    .line 126
    :catch_0
    move-exception v7

    .line 127
    .local v7, "er":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 128
    move-object v8, p0

    goto :goto_0
.end method
