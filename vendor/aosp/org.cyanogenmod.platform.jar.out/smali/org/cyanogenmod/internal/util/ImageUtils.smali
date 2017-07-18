.class public Lorg/cyanogenmod/internal/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final ASSET_URI_PREFIX:Ljava/lang/String; = "file:///android_asset/"

.field private static final DEFAULT_IMG_QUALITY:I = 0x64

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/cyanogenmod/internal/util/ImageUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/internal/util/ImageUtils;->TAG:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cropImage(Ljava/io/InputStream;IIII)Ljava/io/InputStream;
    .locals 19
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 77
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "inputStream cannot be null"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 80
    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    .line 81
    :cond_1
    new-instance v14, Ljava/lang/IllegalArgumentException;

    .line 82
    const-string/jumbo v15, "imageWidth and imageHeight must be > 0: imageWidth=%d imageHeight=%d"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 83
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x1

    aput-object v17, v16, v18

    .line 82
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 81
    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 86
    :cond_2
    if-lez p3, :cond_3

    if-gtz p4, :cond_4

    .line 87
    :cond_3
    new-instance v14, Ljava/lang/IllegalArgumentException;

    .line 88
    const-string/jumbo v15, "outWidth and outHeight must be > 0: outWidth=%d outHeight=%d"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 89
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x1

    aput-object v17, v16, v18

    .line 88
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 87
    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 92
    :cond_4
    div-int v14, p1, p3

    div-int v15, p2, p4

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 93
    .local v11, "scaleDownSampleSize":I
    if-lez v11, :cond_6

    .line 94
    div-int p1, p1, v11

    .line 95
    div-int p2, p2, v11

    .line 106
    :goto_0
    sub-int v14, p1, p3

    div-int/lit8 v7, v14, 0x2

    .line 107
    .local v7, "left":I
    sub-int v14, p2, p4

    div-int/lit8 v13, v14, 0x2

    .line 108
    .local v13, "top":I
    const/4 v3, 0x0

    .line 110
    .local v3, "compressed":Ljava/io/InputStream;
    :try_start_0
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 111
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x1

    if-le v11, v14, :cond_5

    .line 112
    iput v11, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 114
    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 115
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_8

    .line 116
    const/4 v14, 0x0

    return-object v14

    .line 97
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "compressed":Ljava/io/InputStream;
    .end local v7    # "left":I
    .end local v8    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "top":I
    :cond_6
    move/from16 v0, p3

    int-to-float v14, v0

    move/from16 v0, p4

    int-to-float v15, v0

    div-float v10, v14, v15

    .line 98
    .local v10, "ratio":F
    move/from16 v0, p1

    int-to-float v14, v0

    move/from16 v0, p2

    int-to-float v15, v0

    mul-float/2addr v15, v10

    cmpg-float v14, v14, v15

    if-gez v14, :cond_7

    .line 99
    move/from16 p3, p1

    .line 100
    move/from16 v0, p3

    int-to-float v14, v0

    div-float/2addr v14, v10

    float-to-int v0, v14

    move/from16 p4, v0

    goto :goto_0

    .line 102
    :cond_7
    move/from16 p4, p2

    .line 103
    move/from16 v0, p4

    int-to-float v14, v0

    mul-float/2addr v14, v10

    float-to-int v0, v14

    move/from16 p3, v0

    goto :goto_0

    .line 118
    .end local v10    # "ratio":F
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "compressed":Ljava/io/InputStream;
    .restart local v7    # "left":I
    .restart local v8    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v13    # "top":I
    :cond_8
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v2, v7, v13, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 119
    .local v5, "cropped":Landroid/graphics/Bitmap;
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    const/16 v14, 0x800

    invoke-direct {v12, v14}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 120
    .local v12, "tmpOut":Ljava/io/ByteArrayOutputStream;
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x64

    invoke-virtual {v5, v14, v15, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 121
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 122
    .local v9, "outByteArray":[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v4, "compressed":Ljava/io/InputStream;
    move-object v3, v4

    .line 127
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "compressed":Ljava/io/InputStream;
    .end local v4    # "compressed":Ljava/io/InputStream;
    .end local v5    # "cropped":Landroid/graphics/Bitmap;
    .end local v8    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v9    # "outByteArray":[B
    .end local v12    # "tmpOut":Ljava/io/ByteArrayOutputStream;
    :cond_9
    :goto_1
    return-object v3

    .line 124
    .restart local v3    # "compressed":Ljava/io/InputStream;
    :catch_0
    move-exception v6

    .line 125
    .local v6, "e":Ljava/lang/Exception;
    sget-object v14, Lorg/cyanogenmod/internal/util/ImageUtils;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getCroppedKeyguardStream(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;
    .locals 10
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 140
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 141
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "\'pkgName\' cannot be null or empty!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 143
    :cond_0
    if-nez p1, :cond_1

    .line 144
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "\'context\' cannot be null!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 147
    :cond_1
    const/4 v0, 0x0

    .line 148
    .local v0, "cropped":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 150
    .local v5, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0, p1}, Lorg/cyanogenmod/internal/util/ImageUtils;->getOriginalKeyguardStream(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 151
    .local v5, "stream":Ljava/io/InputStream;
    if-nez v5, :cond_2

    .line 170
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 152
    return-object v8

    .line 154
    :cond_2
    :try_start_1
    invoke-static {v5}, Lorg/cyanogenmod/internal/util/ImageUtils;->getImageDimension(Ljava/io/InputStream;)Landroid/graphics/Point;

    move-result-object v4

    .line 155
    .local v4, "point":Landroid/graphics/Point;
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 156
    if-eqz v4, :cond_3

    iget v7, v4, Landroid/graphics/Point;->x:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_4

    .line 170
    :cond_3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 157
    return-object v8

    .line 156
    :cond_4
    :try_start_2
    iget v7, v4, Landroid/graphics/Point;->y:I

    if-eqz v7, :cond_3

    .line 159
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    .line 160
    .local v6, "wm":Landroid/app/WallpaperManager;
    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v3

    .line 161
    .local v3, "outWidth":I
    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v2

    .line 162
    .local v2, "outHeight":I
    invoke-static {p0, p1}, Lorg/cyanogenmod/internal/util/ImageUtils;->getOriginalKeyguardStream(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 163
    if-nez v5, :cond_5

    .line 170
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 164
    return-object v8

    .line 166
    :cond_5
    :try_start_3
    iget v7, v4, Landroid/graphics/Point;->x:I

    iget v8, v4, Landroid/graphics/Point;->y:I

    invoke-static {v5, v7, v8, v3, v2}, Lorg/cyanogenmod/internal/util/ImageUtils;->cropImage(Ljava/io/InputStream;IIII)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 170
    .local v0, "cropped":Ljava/io/InputStream;
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 172
    .end local v0    # "cropped":Ljava/io/InputStream;
    .end local v2    # "outHeight":I
    .end local v3    # "outWidth":I
    .end local v4    # "point":Landroid/graphics/Point;
    .end local v5    # "stream":Ljava/io/InputStream;
    .end local v6    # "wm":Landroid/app/WallpaperManager;
    :goto_0
    return-object v0

    .line 167
    .local v0, "cropped":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v7, Lorg/cyanogenmod/internal/util/ImageUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 170
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 169
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 170
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 169
    throw v7
.end method

.method public static getCroppedWallpaperStream(Ljava/lang/String;JLandroid/content/Context;)Ljava/io/InputStream;
    .locals 11
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "wallpaperId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 185
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 186
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "\'pkgName\' cannot be null or empty!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 188
    :cond_0
    if-nez p3, :cond_1

    .line 189
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "\'context\' cannot be null!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 192
    :cond_1
    const/4 v0, 0x0

    .line 193
    .local v0, "cropped":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 195
    .local v5, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lorg/cyanogenmod/internal/util/ImageUtils;->getOriginalWallpaperStream(Ljava/lang/String;JLandroid/content/Context;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 196
    .local v5, "stream":Ljava/io/InputStream;
    if-nez v5, :cond_2

    .line 215
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 197
    return-object v8

    .line 199
    :cond_2
    :try_start_1
    invoke-static {v5}, Lorg/cyanogenmod/internal/util/ImageUtils;->getImageDimension(Ljava/io/InputStream;)Landroid/graphics/Point;

    move-result-object v4

    .line 200
    .local v4, "point":Landroid/graphics/Point;
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 201
    if-eqz v4, :cond_3

    iget v7, v4, Landroid/graphics/Point;->x:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_4

    .line 215
    :cond_3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 202
    return-object v8

    .line 201
    :cond_4
    :try_start_2
    iget v7, v4, Landroid/graphics/Point;->y:I

    if-eqz v7, :cond_3

    .line 204
    invoke-static {p3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    .line 205
    .local v6, "wm":Landroid/app/WallpaperManager;
    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v3

    .line 206
    .local v3, "outWidth":I
    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v2

    .line 207
    .local v2, "outHeight":I
    invoke-static {p0, p1, p2, p3}, Lorg/cyanogenmod/internal/util/ImageUtils;->getOriginalWallpaperStream(Ljava/lang/String;JLandroid/content/Context;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 208
    if-nez v5, :cond_5

    .line 215
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 209
    return-object v8

    .line 211
    :cond_5
    :try_start_3
    iget v7, v4, Landroid/graphics/Point;->x:I

    iget v8, v4, Landroid/graphics/Point;->y:I

    invoke-static {v5, v7, v8, v3, v2}, Lorg/cyanogenmod/internal/util/ImageUtils;->cropImage(Ljava/io/InputStream;IIII)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 215
    .local v0, "cropped":Ljava/io/InputStream;
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 217
    .end local v0    # "cropped":Ljava/io/InputStream;
    .end local v2    # "outHeight":I
    .end local v3    # "outWidth":I
    .end local v4    # "point":Landroid/graphics/Point;
    .end local v5    # "stream":Ljava/io/InputStream;
    .end local v6    # "wm":Landroid/app/WallpaperManager;
    :goto_0
    return-object v0

    .line 212
    .local v0, "cropped":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v7, Lorg/cyanogenmod/internal/util/ImageUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 215
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 214
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 215
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 214
    throw v7
.end method

.method public static getImageDimension(Ljava/io/InputStream;)Landroid/graphics/Point;
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v3, 0x0

    .line 53
    if-nez p0, :cond_0

    .line 54
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "\'inputStream\' cannot be null!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 57
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 58
    invoke-static {p0, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 59
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 60
    .local v1, "point":Landroid/graphics/Point;
    return-object v1
.end method

.method private static getOriginalKeyguardStream(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;
    .locals 8
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 221
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez p1, :cond_1

    .line 222
    :cond_0
    return-object v6

    .line 225
    :cond_1
    const/4 v2, 0x0

    .line 229
    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v5, 0x2

    .line 228
    :try_start_0
    invoke-virtual {p1, p0, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 230
    .local v3, "themeCtx":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 231
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-static {v0}, Lorg/cyanogenmod/internal/util/ThemeUtils;->getLockscreenWallpaperPath(Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "wpPath":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 233
    sget-object v5, Lorg/cyanogenmod/internal/util/ImageUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Not setting lockscreen wp because wallpaper file was not found."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "themeCtx":Landroid/content/Context;
    .end local v4    # "wpPath":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 236
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "themeCtx":Landroid/content/Context;
    .restart local v4    # "wpPath":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "file:///android_asset/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 235
    invoke-static {v3, v5}, Lorg/cyanogenmod/internal/util/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 238
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v3    # "themeCtx":Landroid/content/Context;
    .end local v4    # "wpPath":Ljava/lang/String;
    .local v2, "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lorg/cyanogenmod/internal/util/ImageUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "There was an error setting lockscreen wp for pkg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getOriginalWallpaperStream(Ljava/lang/String;JLandroid/content/Context;)Ljava/io/InputStream;
    .locals 19
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "componentId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p3, :cond_1

    .line 248
    :cond_0
    const/4 v4, 0x0

    return-object v4

    .line 251
    :cond_1
    const/4 v13, 0x0

    .line 252
    .local v13, "inputStream":Ljava/io/InputStream;
    const-string/jumbo v7, "pkg_name= ?"

    .line 253
    .local v7, "selection":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v8, v4

    .line 254
    .local v8, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcyanogenmod/providers/ThemesContract$ThemesColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 255
    const/4 v6, 0x0

    .line 256
    const/4 v9, 0x0

    .line 254
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 257
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_4

    .line 258
    :cond_2
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 259
    :cond_3
    const/4 v4, 0x0

    return-object v4

    .line 261
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 266
    const/4 v4, 0x2

    .line 265
    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v15

    .line 268
    .local v15, "themeContext":Landroid/content/Context;
    const-string/jumbo v4, "is_legacy_theme"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 267
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 268
    const/4 v5, 0x1

    .line 267
    if-ne v4, v5, :cond_5

    const/4 v14, 0x1

    .line 270
    .local v14, "isLegacyTheme":Z
    :goto_0
    const-string/jumbo v4, "wallpaper_uri"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 269
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 271
    .local v17, "wallpaper":Ljava/lang/String;
    if-eqz v17, :cond_7

    .line 272
    invoke-static/range {v17 .. v17}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 273
    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lorg/cyanogenmod/internal/util/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    .line 295
    .end local v13    # "inputStream":Ljava/io/InputStream;
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 298
    .end local v14    # "isLegacyTheme":Z
    .end local v15    # "themeContext":Landroid/content/Context;
    .end local v17    # "wallpaper":Ljava/lang/String;
    :goto_2
    return-object v13

    .line 267
    .restart local v13    # "inputStream":Ljava/io/InputStream;
    .restart local v15    # "themeContext":Landroid/content/Context;
    :cond_5
    const/4 v14, 0x0

    .restart local v14    # "isLegacyTheme":Z
    goto :goto_0

    .line 275
    .restart local v17    # "wallpaper":Ljava/lang/String;
    :cond_6
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 276
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 275
    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v13

    .local v13, "inputStream":Ljava/io/InputStream;
    goto :goto_1

    .line 281
    .local v13, "inputStream":Ljava/io/InputStream;
    :cond_7
    const/4 v4, 0x2

    .line 280
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v16

    .line 282
    .local v16, "themeCtx":Landroid/content/Context;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    .line 283
    .local v10, "assetManager":Landroid/content/res/AssetManager;
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/cyanogenmod/internal/util/ImageUtils;->queryWpPathFromComponentId(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v18

    .line 284
    .local v18, "wpPath":Ljava/lang/String;
    if-nez v18, :cond_8

    invoke-static {v10}, Lorg/cyanogenmod/internal/util/ThemeUtils;->getWallpaperPath(Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v18

    .line 285
    :cond_8
    if-nez v18, :cond_9

    .line 286
    sget-object v4, Lorg/cyanogenmod/internal/util/ImageUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Not setting wp because wallpaper file was not found."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 292
    .end local v10    # "assetManager":Landroid/content/res/AssetManager;
    .end local v14    # "isLegacyTheme":Z
    .end local v15    # "themeContext":Landroid/content/Context;
    .end local v16    # "themeCtx":Landroid/content/Context;
    .end local v17    # "wallpaper":Ljava/lang/String;
    .end local v18    # "wpPath":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 293
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lorg/cyanogenmod/internal/util/ImageUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getWallpaperStream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 289
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v10    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v14    # "isLegacyTheme":Z
    .restart local v15    # "themeContext":Landroid/content/Context;
    .restart local v16    # "themeCtx":Landroid/content/Context;
    .restart local v17    # "wallpaper":Ljava/lang/String;
    .restart local v18    # "wpPath":Ljava/lang/String;
    :cond_9
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "file:///android_asset/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 288
    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lorg/cyanogenmod/internal/util/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v13

    .local v13, "inputStream":Ljava/io/InputStream;
    goto :goto_1

    .line 294
    .end local v10    # "assetManager":Landroid/content/res/AssetManager;
    .end local v14    # "isLegacyTheme":Z
    .end local v15    # "themeContext":Landroid/content/Context;
    .end local v16    # "themeCtx":Landroid/content/Context;
    .end local v17    # "wallpaper":Ljava/lang/String;
    .end local v18    # "wpPath":Ljava/lang/String;
    .local v13, "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    .line 295
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 294
    throw v4
.end method

.method private static queryWpPathFromComponentId(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "componentId"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 303
    const/4 v9, 0x0

    .line 304
    .local v9, "wpPath":Ljava/lang/String;
    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v0, "value"

    aput-object v0, v2, v1

    .line 305
    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, "pkg_name=? AND component_id=? AND key=?"

    .line 308
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    .line 309
    aput-object p1, v4, v1

    .line 310
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 311
    const-string/jumbo v0, "wallpaper_full"

    const/4 v1, 0x2

    aput-object v0, v4, v1

    .line 314
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 315
    sget-object v1, Lcyanogenmod/providers/ThemesContract$PreviewColumns;->COMPONENTS_URI:Landroid/net/Uri;

    .line 314
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 317
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 319
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const-string/jumbo v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 321
    .local v8, "valIdx":I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 326
    .end local v8    # "valIdx":I
    .end local v9    # "wpPath":Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_1
    :goto_0
    return-object v9

    .line 323
    .restart local v9    # "wpPath":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 324
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lorg/cyanogenmod/internal/util/ImageUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Could not get wallpaper path"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 325
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 326
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 325
    throw v0
.end method
