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
    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->MEIZU_CALENDAR_ICON:Z

    .line 55
    const-string v0, "draw_date"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_DRAW_DATE:Ljava/lang/String;

    .line 59
    const-string v0, "draw_icon_shadow"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_DRAW_ICON_SHADOW:Ljava/lang/String;

    .line 63
    const-string v0, "draw_bg_shadow"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_DRAW_BG_SHADOW:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "statusbar_color"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_STATUSBAR_COLOR:Ljava/lang/String;

    .line 72
    const-string v0, "calendar_dayofweek_color"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_CALENDAR_DAY_COLOR:Ljava/lang/String;

    .line 79
    const v0, 0x3f65bc02    # 0.8974f

    sput v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->SCALE_VALUE:F

    .line 84
    const/4 v0, 0x0

    sput v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "backguard"    # Landroid/graphics/Bitmap;
    .param p1, "top"    # Landroid/graphics/Bitmap;
    .param p2, "isBorder"    # Z

    .prologue
    .line 144
    const/4 v9, 0x0

    .line 145
    .local v9, "newBitmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 147
    .local v10, "tmpBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 148
    invoke-static {v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 149
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 150
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 151
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 152
    .local v11, "w":I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 153
    .local v7, "h":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 154
    .local v12, "w_2":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 155
    .local v8, "h_2":I
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 156
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v11

    int-to-float v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 157
    new-instance v5, Landroid/graphics/Paint;

    .end local v5    # "paint":Landroid/graphics/Paint;
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 158
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

    .line 167
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 169
    const/4 v10, 0x0

    .line 172
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v7    # "h":I
    .end local v8    # "h_2":I
    .end local v11    # "w":I
    .end local v12    # "w_2":I
    :cond_0
    :goto_0
    return-object v9

    .line 159
    :catch_0
    move-exception v6

    .line 160
    .local v6, "er":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    if-eqz p2, :cond_1

    .line 162
    move-object v9, p0

    .line 167
    :goto_1
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 169
    const/4 v10, 0x0

    goto :goto_0

    .line 164
    :cond_1
    move-object v9, p1

    goto :goto_1

    .line 167
    .end local v6    # "er":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 168
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 169
    const/4 v10, 0x0

    :cond_2
    throw v1
.end method

.method private static addCalendarBorder(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "newBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 431
    const/4 v3, 0x0

    .line 432
    .local v3, "result":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 433
    .local v4, "temp":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 435
    .local v2, "resBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v5, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_MASK:Ljava/lang/String;

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 436
    .local v0, "border":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 437
    sget v5, Lcom/flyme/internal/R$drawable;->calendar_mask:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 439
    :cond_0
    if-nez v0, :cond_3

    .line 440
    move-object v3, p1

    .line 449
    .end local v0    # "border":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 450
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 451
    const/4 v4, 0x0

    .line 453
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 454
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 455
    const/4 v2, 0x0

    .line 458
    :cond_2
    :goto_1
    return-object v3

    .line 442
    .restart local v0    # "border":Landroid/graphics/drawable/Drawable;
    :cond_3
    :try_start_1
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "border":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 443
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 444
    const/4 v5, 0x1

    invoke-static {p1, v2, v5}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 446
    :catch_0
    move-exception v1

    .line 447
    .local v1, "e":Ljava/lang/Exception;
    move-object v3, p1

    .line 449
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 450
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 451
    const/4 v4, 0x0

    .line 453
    :cond_4
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 454
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 455
    const/4 v2, 0x0

    goto :goto_1

    .line 449
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_5

    .line 450
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 451
    const/4 v4, 0x0

    .line 453
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_6

    .line 454
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 455
    const/4 v2, 0x0

    :cond_6
    throw v5
.end method

.method public static addDateToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 20
    .param p0, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 330
    const/4 v10, 0x0

    .line 331
    .local v10, "oneBitmap":Landroid/graphics/Bitmap;
    const/4 v14, 0x0

    .line 332
    .local v14, "twoBitmap":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 334
    .local v13, "result":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    .line 335
    .local v12, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 336
    .local v2, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v17

    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 337
    .local v9, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 338
    .local v11, "paint":Landroid/graphics/Paint;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 339
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 340
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getDateOfMonth()Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, "date":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3ec4ec4f

    mul-float v16, v17, v18

    .line 342
    .local v16, "y":F
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 343
    .local v7, "nH":I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 344
    .local v8, "nW":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 345
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-static {v12, v0, v7, v8}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getDateImage(Landroid/content/res/Resources;CII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 346
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v17, v8, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v15, v17, v18

    .line 347
    .local v15, "x":F
    move/from16 v0, v16

    invoke-virtual {v3, v10, v15, v0, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 355
    :goto_0
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    .end local v13    # "result":Landroid/graphics/drawable/Drawable;
    invoke-direct {v13, v12, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    .restart local v13    # "result":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_0

    .line 364
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 365
    const/4 v10, 0x0

    .line 367
    :cond_0
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_1

    .line 368
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 369
    const/4 v14, 0x0

    .line 372
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

    .line 349
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

    .line 350
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-static {v12, v0, v7, v8}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getDateImage(Landroid/content/res/Resources;CII)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 351
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

    .line 352
    .restart local v15    # "x":F
    move/from16 v0, v16

    invoke-virtual {v3, v10, v15, v0, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 353
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

    .line 356
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

    .line 357
    .local v6, "er":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    move-object/from16 v13, p0

    .line 363
    .restart local v13    # "result":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_3

    .line 364
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 365
    const/4 v10, 0x0

    .line 367
    :cond_3
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_1

    .line 368
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 369
    const/4 v14, 0x0

    goto :goto_1

    .line 359
    .end local v6    # "er":Ljava/lang/OutOfMemoryError;
    .end local v13    # "result":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v5

    .line 360
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 361
    move-object/from16 v13, p0

    .line 363
    .restart local v13    # "result":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_4

    .line 364
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 365
    const/4 v10, 0x0

    .line 367
    :cond_4
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_1

    .line 368
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 369
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 363
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v13    # "result":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v17

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-nez v18, :cond_5

    .line 364
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 365
    const/4 v10, 0x0

    .line 367
    :cond_5
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-nez v18, :cond_6

    .line 368
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 369
    const/4 v14, 0x0

    :cond_6
    throw v17
.end method

.method public static addDayOfWeekToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 23
    .param p0, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 385
    const/16 v20, 0x0

    .line 386
    .local v20, "result":Landroid/graphics/drawable/Drawable;
    const/4 v15, 0x0

    .line 388
    .local v15, "newBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    .line 389
    .local v19, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v10, v0

    .line 390
    .local v10, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 391
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 392
    .local v11, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 393
    .local v4, "textPaint":Landroid/text/TextPaint;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 394
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 396
    sget v5, Lcom/flyme/internal/R$color;->calendar_dayofweek_color:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    .line 398
    .local v12, "color":I
    :try_start_1
    sget-object v5, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_CALENDAR_DAY_COLOR:Ljava/lang/String;

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getLauncherConfigByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 399
    .local v18, "resColor":Ljava/lang/String;
    if-nez v18, :cond_0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 400
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

    .line 401
    .local v16, "l":J
    move-wide/from16 v0, v16

    long-to-int v12, v0

    .line 406
    .end local v16    # "l":J
    .end local v18    # "resColor":Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v4, v12}, Landroid/text/TextPaint;->setColor(I)V

    .line 407
    invoke-static/range {v19 .. v19}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getDayOfWeek(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, "date":Ljava/lang/String;
    new-instance v2, Landroid/text/StaticLayout;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 410
    .local v2, "sl":Landroid/text/StaticLayout;
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3e09d89e

    mul-float v22, v5, v6

    .line 411
    .local v22, "tanslateY":F
    const/4 v5, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 412
    invoke-virtual {v2, v11}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 413
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

    .line 421
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

    .line 423
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 424
    const/4 v15, 0x0

    move-object/from16 v20, v21

    .line 427
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

    .line 403
    .restart local v4    # "textPaint":Landroid/text/TextPaint;
    .restart local v10    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v11    # "canvas":Landroid/graphics/Canvas;
    .restart local v12    # "color":I
    .restart local v19    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v13

    .line 404
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

    .line 414
    .end local v4    # "textPaint":Landroid/text/TextPaint;
    .end local v10    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v11    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "color":I
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v19    # "resources":Landroid/content/res/Resources;
    :catch_1
    move-exception v14

    .line 415
    .local v14, "er":Ljava/lang/OutOfMemoryError;
    :try_start_4
    invoke-virtual {v14}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 416
    move-object/from16 v20, p0

    .line 421
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v5, v20

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eq v15, v5, :cond_2

    .line 423
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 424
    const/4 v15, 0x0

    goto :goto_1

    .line 417
    .end local v14    # "er":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v13

    .line 418
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 419
    move-object/from16 v20, p0

    .line 421
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v5, v20

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eq v15, v5, :cond_2

    .line 423
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 424
    const/4 v15, 0x0

    goto :goto_1

    .line 421
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

    .line 423
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 424
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
    .line 805
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->mLauncherHelper:Landroid/content/res/flymetheme/LauncherConfigHelper;

    .line 806
    return-void
.end method

.method public static drawShadowToIcon()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 269
    :try_start_0
    new-instance v2, Landroid/content/res/flymetheme/LauncherConfigHelper;

    invoke-direct {v2}, Landroid/content/res/flymetheme/LauncherConfigHelper;-><init>()V

    .line 270
    .local v2, "info":Landroid/content/res/flymetheme/LauncherConfigHelper;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "draw_shadow"

    invoke-static {v4}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getLauncherConfigByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
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

    .line 279
    .end local v1    # "hasDate":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 273
    .restart local v1    # "hasDate":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 274
    const/4 v3, 0x1

    goto :goto_0

    .line 277
    .end local v1    # "hasDate":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static generateThemeBitmap()[Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 774
    const/4 v1, 0x3

    new-array v0, v1, [Landroid/graphics/Bitmap;

    .line 775
    .local v0, "themeBitmap":[Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    const-string v2, "icon_mask.png"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeResource;->getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 776
    sget v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    or-int/lit8 v1, v1, 0x4

    sput v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    .line 778
    :cond_0
    const/4 v1, 0x1

    const-string v2, "icon_background.png"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeResource;->getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 780
    sget v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    or-int/lit8 v1, v1, 0x2

    sput v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    .line 782
    :cond_1
    const/4 v1, 0x2

    const-string v2, "icon_border.png"

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeResource;->getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    if-eqz v2, :cond_2

    .line 783
    sget v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    or-int/lit8 v1, v1, 0x1

    sput v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    .line 785
    :cond_2
    return-object v0
.end method

.method public static getCalendarIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 215
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :try_start_0
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_DEF:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-object v0

    .line 219
    :cond_1
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_BG:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeHelper;->isAddDateToIcon()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addDateToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 222
    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addDayOfWeekToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getConfigXmlByPackageName(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 816
    const/4 v1, 0x0

    .line 817
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Landroid/content/res/flymetheme/MtpkManager;

    invoke-direct {v2}, Landroid/content/res/flymetheme/MtpkManager;-><init>()V

    .line 818
    .local v2, "mZipThemeManager":Landroid/content/res/flymetheme/MtpkManager;
    const-string v3, "config.xml"

    .line 819
    .local v3, "resPath":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v2, p0, v3, v5}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromPackage(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 823
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "mZipThemeManager":Landroid/content/res/flymetheme/MtpkManager;
    .end local v3    # "resPath":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 821
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 822
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v4

    .line 823
    goto :goto_0
.end method

.method public static getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 185
    .local v7, "sysResources":Landroid/content/res/Resources;
    if-nez v7, :cond_1

    .line 186
    const/4 v1, 0x0

    .line 203
    :cond_0
    :goto_0
    return-object v1

    .line 188
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

    .line 189
    .local v6, "resPath":Ljava/lang/String;
    invoke-static {v6}, Landroid/content/res/flymetheme/FlymeThemeResource;->get3rdPartThemeIcon(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 191
    .local v5, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 193
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_0

    .line 194
    :try_start_0
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
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

    .line 198
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    .line 199
    .local v4, "er":Ljava/lang/OutOfMemoryError;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 200
    .end local v4    # "er":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v3

    .line 201
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 200
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

    .line 198
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
    const/high16 v6, 0x431c0000    # 156.0f

    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    packed-switch p1, :pswitch_data_0

    .line 524
    :goto_0
    :pswitch_0
    if-nez v0, :cond_0

    .line 525
    invoke-static {p0, p1}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getSystemDefDateImage(Landroid/content/res/Resources;C)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 532
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v1

    .line 490
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_0:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 491
    goto :goto_0

    .line 493
    :pswitch_2
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_1:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 494
    goto :goto_0

    .line 496
    :pswitch_3
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_2:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 497
    goto :goto_0

    .line 499
    :pswitch_4
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_3:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 500
    goto :goto_0

    .line 502
    :pswitch_5
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_4:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 503
    goto :goto_0

    .line 505
    :pswitch_6
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_5:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 506
    goto :goto_0

    .line 508
    :pswitch_7
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_6:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 509
    goto :goto_0

    .line 511
    :pswitch_8
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_7:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 512
    goto :goto_0

    .line 514
    :pswitch_9
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_8:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 515
    goto :goto_0

    .line 517
    :pswitch_a
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_9:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 518
    goto :goto_0

    .line 527
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-gt v2, p3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-le v2, p2, :cond_2

    .line 528
    :cond_1
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    int-to-float v3, p3

    const/high16 v4, 0x42280000    # 42.0f

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    float-to-int v3, v3

    int-to-float v4, p2

    const/high16 v5, 0x429c0000    # 78.0f

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    float-to-int v4, v4

    invoke-static {v2, v3, v4}, Landroid/content/res/flymetheme/FlymeThemeHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 530
    .local v1, "resBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 532
    .end local v1    # "resBitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_2
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 488
    nop

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
    .line 462
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 463
    .local v2, "today":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 464
    .local v1, "cal":Ljava/util/Calendar;
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 465
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 466
    .local v0, "aDate":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getDayOfWeek(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 8
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 470
    sget v5, Lcom/flyme/internal/R$array;->calendar_week_title:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 473
    .local v4, "weekDays":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 474
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 475
    .local v1, "curDate":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 476
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 477
    .local v3, "w":I
    if-gez v3, :cond_0

    .line 478
    const/4 v3, 0x0

    .line 479
    :cond_0
    aget-object v5, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "curDate":Ljava/util/Date;
    .end local v3    # "w":I
    :goto_0
    return-object v5

    .line 480
    :catch_0
    move-exception v2

    .line 481
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, " getDayOfWeek: "

    invoke-static {v5, v2}, Landroid/content/res/flymetheme/FlymeLogUtil;->exception(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 482
    const/4 v5, 0x0

    aget-object v5, v4, v5

    goto :goto_0
.end method

.method public static getFlymeIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const-string v1, "com.android.alarmclock"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    new-instance v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;

    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {v0, p1}, Landroid/content/res/flymetheme/drawable/ClockDrawable;-><init>(Landroid/content/Context;)V

    .line 259
    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    .line 256
    :cond_1
    const-string v1, "com.android.calendar"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    new-instance v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;

    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {v0, p1}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;-><init>(Landroid/content/Context;)V

    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public static getLauncherConfigByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 291
    :try_start_0
    sget-object v2, Landroid/content/res/flymetheme/FlymeThemeHelper;->mLauncherHelper:Landroid/content/res/flymetheme/LauncherConfigHelper;

    if-nez v2, :cond_0

    .line 292
    new-instance v2, Landroid/content/res/flymetheme/LauncherConfigHelper;

    invoke-direct {v2}, Landroid/content/res/flymetheme/LauncherConfigHelper;-><init>()V

    sput-object v2, Landroid/content/res/flymetheme/FlymeThemeHelper;->mLauncherHelper:Landroid/content/res/flymetheme/LauncherConfigHelper;

    .line 294
    :cond_0
    sget-object v2, Landroid/content/res/flymetheme/FlymeThemeHelper;->mLauncherHelper:Landroid/content/res/flymetheme/LauncherConfigHelper;

    invoke-virtual {v2, p0}, Landroid/content/res/flymetheme/LauncherConfigHelper;->getLauncherConfig(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 298
    :goto_0
    return-object v1

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getSystemDefDateImage(Landroid/content/res/Resources;C)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "date"    # C

    .prologue
    .line 538
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_0:I

    .line 539
    .local v0, "dr":I
    packed-switch p1, :pswitch_data_0

    .line 575
    :goto_0
    :pswitch_0
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 541
    :pswitch_1
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_0:I

    .line 542
    goto :goto_0

    .line 544
    :pswitch_2
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_1:I

    .line 545
    goto :goto_0

    .line 547
    :pswitch_3
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_2:I

    .line 548
    goto :goto_0

    .line 550
    :pswitch_4
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_3:I

    .line 551
    goto :goto_0

    .line 553
    :pswitch_5
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_4:I

    .line 554
    goto :goto_0

    .line 556
    :pswitch_6
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_5:I

    .line 557
    goto :goto_0

    .line 559
    :pswitch_7
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_6:I

    .line 560
    goto :goto_0

    .line 562
    :pswitch_8
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_7:I

    .line 563
    goto :goto_0

    .line 565
    :pswitch_9
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_8:I

    .line 566
    goto :goto_0

    .line 568
    :pswitch_a
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_9:I

    .line 569
    goto :goto_0

    .line 539
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
    .line 794
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_0

    move-object v1, p1

    .line 801
    :goto_0
    return-object v1

    .line 796
    :cond_0
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeResource;->getDefaultActivityIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 797
    .local v0, "defIcon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 798
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local p1    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    move-object v1, p1

    .line 799
    goto :goto_0

    .line 801
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

    .line 239
    :try_start_0
    new-instance v2, Landroid/content/res/flymetheme/LauncherConfigHelper;

    invoke-direct {v2}, Landroid/content/res/flymetheme/LauncherConfigHelper;-><init>()V

    .line 240
    .local v2, "info":Landroid/content/res/flymetheme/LauncherConfigHelper;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "draw_date"

    invoke-static {v4}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getLauncherConfigByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "hasDate":Ljava/lang/String;
    const-string v4, "false"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    const/4 v3, 0x0

    .line 248
    .end local v1    # "hasDate":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isThemeIcon()Z
    .locals 4

    .prologue
    .line 311
    :try_start_0
    const-string v2, "/data/data/com.meizu.customizecenter/theme/icons"

    .line 312
    .local v2, "zipFilePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    const/4 v3, 0x1

    .line 319
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return v3

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 319
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
    .line 94
    const/4 v3, 0x0

    .line 96
    .local v3, "resultBmp":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 97
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 98
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 99
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 100
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {p1, v6, v7}, Landroid/content/res/flymetheme/FlymeThemeHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 101
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v4, v6, 0x2

    .line 102
    .local v4, "x":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v5, v6, 0x2

    .line 103
    .local v5, "y":I
    int-to-float v6, v4

    int-to-float v7, v5

    invoke-virtual {v0, p1, v6, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "paint":Landroid/graphics/Paint;
    .end local v4    # "x":I
    .end local v5    # "y":I
    :goto_0
    return-object v3

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "er":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 106
    move-object v3, p1

    goto :goto_0
.end method

.method public static makeThemeIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "srcDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 585
    instance-of v10, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v10, :cond_0

    .line 671
    .end local p1    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object p1

    .line 587
    .restart local p1    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v5, 0x0

    .local v5, "retDrawable":Landroid/graphics/drawable/Drawable;
    move-object v10, p1

    .line 588
    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 589
    .local v6, "src":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 590
    .local v7, "step1Bitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 591
    .local v8, "step2Bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 593
    .local v4, "result":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeHelper;->generateThemeBitmap()[Landroid/graphics/Bitmap;

    move-result-object v9

    .line 594
    .local v9, "themeBitmap":[Landroid/graphics/Bitmap;
    sget v10, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    packed-switch v10, :pswitch_data_0

    .line 653
    :goto_1
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 654
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 655
    const/4 v7, 0x0

    .line 657
    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_2

    .line 658
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 659
    const/4 v8, 0x0

    .line 662
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

    .line 663
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_3

    .line 664
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 662
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 596
    .end local v0    # "arr$":[Landroid/graphics/Bitmap;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :pswitch_0
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 597
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const/4 v11, 0x0

    invoke-static {v10, v7, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 598
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const/4 v11, 0x1

    invoke-static {v8, v10, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 599
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 600
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 604
    :pswitch_1
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 605
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const/4 v11, 0x0

    invoke-static {v10, v7, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 606
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 607
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 611
    :pswitch_2
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 612
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 613
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 614
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 618
    :pswitch_3
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const/4 v11, 0x0

    invoke-static {v10, v6, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 619
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 620
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 621
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 625
    :pswitch_4
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 626
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 627
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 631
    :pswitch_5
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const/4 v11, 0x0

    invoke-static {v10, v6, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 632
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 633
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 637
    :pswitch_6
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const/4 v11, 0x1

    invoke-static {v6, v10, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 638
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 639
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 643
    :pswitch_7
    if-eqz p2, :cond_4

    iget v10, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_4

    .line 644
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v10, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v10}, Landroid/content/res/flymetheme/FlymeThemeHelper;->scale3rdPartIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v5, p0, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 647
    :cond_4
    move-object v5, p1

    goto/16 :goto_1

    .line 669
    .restart local v0    # "arr$":[Landroid/graphics/Bitmap;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_5
    sget v10, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    and-int/lit8 v10, v10, 0x0

    sput v10, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    move-object p1, v5

    .line 671
    goto/16 :goto_0

    .line 594
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
    .line 681
    instance-of v10, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v10, :cond_0

    .line 767
    .end local p1    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object p1

    .line 683
    .restart local p1    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v5, 0x0

    .local v5, "retDrawable":Landroid/graphics/drawable/Drawable;
    move-object v10, p1

    .line 684
    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 685
    .local v6, "src":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 686
    .local v7, "step1Bitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 687
    .local v8, "step2Bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 689
    .local v4, "result":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeHelper;->generateThemeBitmap()[Landroid/graphics/Bitmap;

    move-result-object v9

    .line 690
    .local v9, "themeBitmap":[Landroid/graphics/Bitmap;
    sget v10, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    packed-switch v10, :pswitch_data_0

    .line 749
    :goto_1
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 750
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 751
    const/4 v7, 0x0

    .line 753
    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_2

    .line 754
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 755
    const/4 v8, 0x0

    .line 758
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

    .line 759
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_3

    .line 760
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 758
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 692
    .end local v0    # "arr$":[Landroid/graphics/Bitmap;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :pswitch_0
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 693
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const/4 v11, 0x0

    invoke-static {v10, v7, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 694
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const/4 v11, 0x1

    invoke-static {v8, v10, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 695
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 696
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 700
    :pswitch_1
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 701
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const/4 v11, 0x0

    invoke-static {v10, v7, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 702
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 703
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 707
    :pswitch_2
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 708
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 709
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 710
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 714
    :pswitch_3
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const/4 v11, 0x0

    invoke-static {v10, v6, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 715
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 716
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 717
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 721
    :pswitch_4
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 722
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 723
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 727
    :pswitch_5
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const/4 v11, 0x0

    invoke-static {v10, v6, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 728
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 729
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 733
    :pswitch_6
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const/4 v11, 0x1

    invoke-static {v6, v10, v11}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 734
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 735
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 739
    :pswitch_7
    if-eqz p2, :cond_4

    iget v10, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_4

    .line 740
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v10, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v10}, Landroid/content/res/flymetheme/FlymeThemeHelper;->scale3rdPartIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v5, p0, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 743
    :cond_4
    move-object v5, p1

    goto/16 :goto_1

    .line 765
    .restart local v0    # "arr$":[Landroid/graphics/Bitmap;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_5
    sget v10, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    and-int/lit8 v10, v10, 0x0

    sput v10, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    move-object p1, v5

    .line 767
    goto/16 :goto_0

    .line 690
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
    .line 834
    const/4 v10, 0x0

    .line 835
    .local v10, "resizeBmp":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 836
    .local v11, "resultBmp":Landroid/graphics/Bitmap;
    invoke-static {p1}, Landroid/content/res/flymetheme/FlymeThemeUtils;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 837
    move-object v11, p0

    .line 861
    :cond_0
    :goto_0
    return-object v11

    .line 840
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 842
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 843
    .local v9, "paint":Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 844
    .local v7, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 845
    .local v5, "matrix":Landroid/graphics/Matrix;
    sget v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->SCALE_VALUE:F

    sget v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->SCALE_VALUE:F

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 846
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

    .line 848
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v12, v0, 0x2

    .line 849
    .local v12, "x":I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v13, v0, 0x2

    .line 850
    .local v13, "y":I
    int-to-float v0, v12

    int-to-float v1, v13

    invoke-virtual {v7, v10, v0, v1, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 856
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 857
    const/4 v10, 0x0

    goto :goto_0

    .line 851
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "paint":Landroid/graphics/Paint;
    .end local v12    # "x":I
    .end local v13    # "y":I
    :catch_0
    move-exception v8

    .line 852
    .local v8, "error":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 853
    move-object v11, p0

    .line 855
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 856
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 857
    const/4 v10, 0x0

    goto :goto_0

    .line 855
    .end local v8    # "error":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 856
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 857
    const/4 v10, 0x0

    :cond_2
    throw v0
.end method

.method public static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 120
    const/4 v8, 0x0

    .line 122
    .local v8, "newbmp":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 123
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 124
    .local v4, "height":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 125
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    int-to-float v1, v3

    div-float v10, v0, v1

    .line 126
    .local v10, "scaleWidht":F
    int-to-float v0, p2

    int-to-float v1, v4

    div-float v9, v0, v1

    .line 127
    .local v9, "scaleHeight":F
    invoke-virtual {v5, v10, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 128
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 133
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "scaleHeight":F
    .end local v10    # "scaleWidht":F
    :goto_0
    return-object v8

    .line 129
    :catch_0
    move-exception v7

    .line 130
    .local v7, "er":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 131
    move-object v8, p0

    goto :goto_0
.end method
