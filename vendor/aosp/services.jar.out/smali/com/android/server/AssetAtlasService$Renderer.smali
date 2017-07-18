.class Lcom/android/server/AssetAtlasService$Renderer;
.super Ljava/lang/Object;
.source "AssetAtlasService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AssetAtlasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Renderer"
.end annotation


# instance fields
.field private final mBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mPixelCount:I

.field final synthetic this$0:Lcom/android/server/AssetAtlasService;


# direct methods
.method constructor <init>(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AssetAtlasService;
    .param p3, "pixelCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p2, "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p2, p0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    .line 203
    iput p3, p0, Lcom/android/server/AssetAtlasService$Renderer;->mPixelCount:I

    .line 201
    return-void
.end method

.method private releaseCanvas(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "atlasBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 312
    return-void
.end method

.method private renderAtlas(Landroid/view/GraphicBuffer;Landroid/graphics/Atlas;I)Z
    .locals 28
    .param p1, "buffer"    # Landroid/view/GraphicBuffer;
    .param p2, "atlas"    # Landroid/graphics/Atlas;
    .param p3, "packCount"    # I

    .prologue
    .line 250
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 251
    .local v17, "paint":Landroid/graphics/Paint;
    new-instance v23, Landroid/graphics/PorterDuffXfermode;

    sget-object v24, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v23 .. v24}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 256
    invoke-virtual/range {p1 .. p1}, Landroid/view/GraphicBuffer;->getWidth()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/GraphicBuffer;->getHeight()I

    move-result v24

    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 255
    invoke-static/range {v23 .. v25}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 257
    .local v4, "atlasBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 259
    .local v7, "canvas":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Atlas$Entry;

    invoke-direct {v9}, Landroid/graphics/Atlas$Entry;-><init>()V

    .line 261
    .local v9, "entry":Landroid/graphics/Atlas$Entry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v23, v0

    mul-int/lit8 v24, p3, 0x3

    move/from16 v0, v24

    new-array v0, v0, [J

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/android/server/AssetAtlasService;->-set0(Lcom/android/server/AssetAtlasService;[J)[J

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/AssetAtlasService;->-get0(Lcom/android/server/AssetAtlasService;)[J

    move-result-object v5

    .line 263
    .local v5, "atlasMap":[J
    const/4 v15, 0x0

    .line 265
    .local v15, "mapIndex":I
    const/16 v19, 0x0

    .line 266
    .local v19, "result":Z
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    .line 267
    .local v20, "startRender":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 269
    .local v8, "count":I
    const/4 v14, 0x0

    .local v14, "i":I
    move/from16 v16, v15

    .end local v15    # "mapIndex":I
    .local v16, "mapIndex":I
    :goto_0
    if-ge v14, v8, :cond_0

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 271
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v9}, Landroid/graphics/Atlas;->pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;

    move-result-object v23

    if-eqz v23, :cond_2

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/AssetAtlasService;->-get0(Lcom/android/server/AssetAtlasService;)[J

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v16

    move/from16 v1, v23

    if-lt v0, v1, :cond_1

    .line 276
    invoke-static {}, Lcom/android/server/AssetAtlasService;->-wrap2()V

    .line 290
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 291
    .local v10, "endRender":J
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/server/AssetAtlasService$Renderer;->releaseCanvas(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 292
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/server/AssetAtlasService;->-wrap0(Landroid/view/GraphicBuffer;Landroid/graphics/Bitmap;)Z

    move-result v19

    .line 293
    .local v19, "result":Z
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 294
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 297
    .local v12, "endUpload":J
    sub-long v24, v10, v20

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x447a0000    # 1000.0f

    div-float v23, v23, v24

    const/high16 v24, 0x447a0000    # 1000.0f

    div-float v18, v23, v24

    .line 298
    .local v18, "renderDuration":F
    sub-long v24, v12, v10

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x447a0000    # 1000.0f

    div-float v23, v23, v24

    const/high16 v24, 0x447a0000    # 1000.0f

    div-float v22, v23, v24

    .line 299
    .local v22, "uploadDuration":F
    const-string/jumbo v23, "AssetAtlas"

    const-string/jumbo v24, "Rendered atlas in %.2fms (%.2f+%.2fms)"

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    .line 300
    add-float v26, v18, v22

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    const/16 v27, 0x1

    aput-object v26, v25, v27

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    const/16 v27, 0x2

    aput-object v26, v25, v27

    .line 299
    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return v19

    .line 280
    .end local v10    # "endRender":J
    .end local v12    # "endUpload":J
    .end local v18    # "renderDuration":F
    .end local v22    # "uploadDuration":F
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .local v19, "result":Z
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 281
    iget v0, v9, Landroid/graphics/Atlas$Entry;->x:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v9, Landroid/graphics/Atlas$Entry;->y:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 282
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v7, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 283
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 284
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "mapIndex":I
    .restart local v15    # "mapIndex":I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->refSkPixelRef()J

    move-result-wide v24

    aput-wide v24, v5, v16

    .line 285
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "mapIndex":I
    .restart local v16    # "mapIndex":I
    iget v0, v9, Landroid/graphics/Atlas$Entry;->x:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    aput-wide v24, v5, v15

    .line 286
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "mapIndex":I
    .restart local v15    # "mapIndex":I
    iget v0, v9, Landroid/graphics/Atlas$Entry;->y:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    aput-wide v24, v5, v16

    .line 269
    :goto_1
    add-int/lit8 v14, v14, 0x1

    move/from16 v16, v15

    .end local v15    # "mapIndex":I
    .restart local v16    # "mapIndex":I
    goto/16 :goto_0

    :cond_2
    move/from16 v15, v16

    .end local v16    # "mapIndex":I
    .restart local v15    # "mapIndex":I
    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 219
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    iget-object v3, p0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/AssetAtlasService$Renderer;->mPixelCount:I

    iget-object v5, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    invoke-static {v5}, Lcom/android/server/AssetAtlasService;->-get3(Lcom/android/server/AssetAtlasService;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/AssetAtlasService;->-wrap1(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;

    move-result-object v1

    .line 220
    .local v1, "config":Lcom/android/server/AssetAtlasService$Configuration;
    const-string/jumbo v2, "AssetAtlas"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Loaded configuration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-eqz v1, :cond_0

    .line 223
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    iget v3, v1, Lcom/android/server/AssetAtlasService$Configuration;->width:I

    iget v4, v1, Lcom/android/server/AssetAtlasService$Configuration;->height:I

    .line 224
    const/16 v5, 0x100

    .line 223
    invoke-static {v3, v4, v6, v5}, Landroid/view/GraphicBuffer;->create(IIII)Landroid/view/GraphicBuffer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/AssetAtlasService;->-set1(Lcom/android/server/AssetAtlasService;Landroid/view/GraphicBuffer;)Landroid/view/GraphicBuffer;

    .line 226
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    invoke-static {v2}, Lcom/android/server/AssetAtlasService;->-get2(Lcom/android/server/AssetAtlasService;)Landroid/view/GraphicBuffer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 227
    new-instance v0, Landroid/graphics/Atlas;

    iget-object v2, v1, Lcom/android/server/AssetAtlasService$Configuration;->type:Landroid/graphics/Atlas$Type;

    iget v3, v1, Lcom/android/server/AssetAtlasService$Configuration;->width:I

    iget v4, v1, Lcom/android/server/AssetAtlasService$Configuration;->height:I

    iget v5, v1, Lcom/android/server/AssetAtlasService$Configuration;->flags:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Atlas;-><init>(Landroid/graphics/Atlas$Type;III)V

    .line 228
    .local v0, "atlas":Landroid/graphics/Atlas;
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    invoke-static {v2}, Lcom/android/server/AssetAtlasService;->-get2(Lcom/android/server/AssetAtlasService;)Landroid/view/GraphicBuffer;

    move-result-object v2

    iget v3, v1, Lcom/android/server/AssetAtlasService$Configuration;->count:I

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/AssetAtlasService$Renderer;->renderAtlas(Landroid/view/GraphicBuffer;Landroid/graphics/Atlas;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    invoke-static {v2}, Lcom/android/server/AssetAtlasService;->-get1(Lcom/android/server/AssetAtlasService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 218
    .end local v0    # "atlas":Landroid/graphics/Atlas;
    :cond_0
    return-void
.end method
