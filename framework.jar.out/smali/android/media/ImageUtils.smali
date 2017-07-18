.class Landroid/media/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static directByteBufferCopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V
    .locals 6
    .param p0, "srcBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "srcOffset"    # I
    .param p2, "dstBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "dstOffset"    # I
    .param p4, "srcByteCount"    # I

    .prologue
    .line 256
    int-to-long v4, p4

    move-object v0, p2

    move v1, p3

    move-object v2, p0

    move v3, p1

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    .line 255
    return-void
.end method

.method private static getEffectivePlaneSizeForImage(Landroid/media/Image;I)Landroid/util/Size;
    .locals 5
    .param p0, "image"    # Landroid/media/Image;
    .param p1, "planeIdx"    # I

    .prologue
    const/4 v4, 0x0

    .line 220
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 249
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 250
    const-string/jumbo v1, "Invalid image format %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :sswitch_0
    if-nez p1, :cond_0

    .line 225
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 227
    :cond_0
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 230
    :sswitch_1
    if-nez p1, :cond_1

    .line 231
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 233
    :cond_1
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 245
    :sswitch_2
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 247
    :sswitch_3
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v4, v4}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 220
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
        0x14 -> :sswitch_2
        0x20 -> :sswitch_2
        0x22 -> :sswitch_3
        0x23 -> :sswitch_0
        0x25 -> :sswitch_2
        0x100 -> :sswitch_2
        0x20203859 -> :sswitch_2
        0x20363159 -> :sswitch_2
        0x32315659 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getEstimatedNativeAllocBytes(IIII)I
    .locals 7
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "numImages"    # I

    .prologue
    .line 178
    sparse-switch p2, :sswitch_data_0

    .line 212
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    .line 213
    const-string/jumbo v3, "Invalid format specified %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 182
    :sswitch_0
    const-wide v0, 0x3fd3333333333333L    # 0.3

    .line 216
    .local v0, "estimatedBytePerPixel":D
    :goto_0
    mul-int v2, p0, p1

    int-to-double v2, v2

    mul-double/2addr v2, v0

    int-to-double v4, p3

    mul-double/2addr v2, v4

    double-to-int v2, v2

    return v2

    .line 185
    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 186
    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_0

    .line 188
    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_2
    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    .line 189
    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_0

    .line 194
    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_3
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .line 195
    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_0

    .line 202
    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_4
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 203
    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_0

    .line 205
    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_5
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 206
    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_0

    .line 209
    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_6
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    .line 210
    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_0

    .line 178
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_6
        0x3 -> :sswitch_5
        0x4 -> :sswitch_4
        0x10 -> :sswitch_4
        0x11 -> :sswitch_3
        0x14 -> :sswitch_4
        0x20 -> :sswitch_4
        0x22 -> :sswitch_3
        0x23 -> :sswitch_3
        0x25 -> :sswitch_2
        0x100 -> :sswitch_0
        0x101 -> :sswitch_0
        0x20203859 -> :sswitch_1
        0x20363159 -> :sswitch_4
        0x32315659 -> :sswitch_3
        0x44363159 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getNumPlanesForFormat(I)I
    .locals 5
    .param p0, "format"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 44
    sparse-switch p0, :sswitch_data_0

    .line 65
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 66
    const-string/jumbo v1, "Invalid format specified %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :sswitch_0
    const/4 v0, 0x3

    return v0

    .line 50
    :sswitch_1
    const/4 v0, 0x2

    return v0

    .line 61
    :sswitch_2
    return v2

    .line 63
    :sswitch_3
    return v4

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
        0x14 -> :sswitch_2
        0x20 -> :sswitch_2
        0x22 -> :sswitch_3
        0x23 -> :sswitch_0
        0x25 -> :sswitch_2
        0x100 -> :sswitch_2
        0x20203859 -> :sswitch_2
        0x20363159 -> :sswitch_2
        0x32315659 -> :sswitch_0
    .end sparse-switch
.end method

.method public static imageCopy(Landroid/media/Image;Landroid/media/Image;)V
    .locals 21
    .param p0, "src"    # Landroid/media/Image;
    .param p1, "dst"    # Landroid/media/Image;

    .prologue
    .line 88
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 89
    :cond_0
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "Images should be non-null"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 91
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 92
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "Src and dst images should have the same format"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 94
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v18

    const/16 v19, 0x22

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v18

    const/16 v19, 0x22

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 96
    :cond_3
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "PRIVATE format images are not copyable"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 98
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/media/ImageWriter;

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 99
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "Destination image is not from ImageWriter. Only the images from ImageWriter are writable"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 102
    :cond_5
    new-instance v17, Landroid/util/Size;

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v19

    invoke-direct/range {v17 .. v19}, Landroid/util/Size;-><init>(II)V

    .line 103
    .local v17, "srcSize":Landroid/util/Size;
    new-instance v6, Landroid/util/Size;

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getWidth()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v6, v0, v1}, Landroid/util/Size;-><init>(II)V

    .line 104
    .local v6, "dstSize":Landroid/util/Size;
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 105
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "source image size "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " is different"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 106
    const-string/jumbo v20, " with "

    .line 105
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 106
    const-string/jumbo v20, "destination image size "

    .line 105
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 109
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v14

    .line 110
    .local v14, "srcPlanes":[Landroid/media/Image$Plane;
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    .line 111
    .local v4, "dstPlanes":[Landroid/media/Image$Plane;
    const/4 v11, 0x0

    .line 112
    .local v11, "srcBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 113
    .local v2, "dstBuffer":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .end local v2    # "dstBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "srcBuffer":Ljava/nio/ByteBuffer;
    .local v8, "i":I
    :goto_0
    array-length v0, v14

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_d

    .line 114
    aget-object v18, v14, v8

    invoke-virtual/range {v18 .. v18}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v16

    .line 115
    .local v16, "srcRowStride":I
    aget-object v18, v4, v8

    invoke-virtual/range {v18 .. v18}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    .line 116
    .local v5, "dstRowStride":I
    aget-object v18, v14, v8

    invoke-virtual/range {v18 .. v18}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 117
    .local v11, "srcBuffer":Ljava/nio/ByteBuffer;
    aget-object v18, v4, v8

    invoke-virtual/range {v18 .. v18}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 118
    .local v2, "dstBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v18

    :goto_1
    if-nez v18, :cond_8

    .line 119
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "Source and destination ByteBuffers must be direct byteBuffer!"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 118
    :cond_7
    const/16 v18, 0x0

    goto :goto_1

    .line 122
    :cond_8
    aget-object v18, v14, v8

    invoke-virtual/range {v18 .. v18}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v18

    aget-object v19, v4, v8

    invoke-virtual/range {v19 .. v19}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 123
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Source plane image pixel stride "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 124
    aget-object v20, v14, v8

    invoke-virtual/range {v20 .. v20}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v20

    .line 123
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 125
    const-string/jumbo v20, " must be same as destination image pixel stride "

    .line 123
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 126
    aget-object v20, v4, v8

    invoke-virtual/range {v20 .. v20}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v20

    .line 123
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 129
    :cond_9
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    move-result v15

    .line 130
    .local v15, "srcPos":I
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 131
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 132
    move/from16 v0, v16

    if-ne v0, v5, :cond_b

    .line 134
    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 158
    :cond_a
    invoke-virtual {v11, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 159
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 113
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 138
    :cond_b
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    .line 139
    .local v13, "srcOffset":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 140
    .local v3, "dstOffset":I
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Landroid/media/ImageUtils;->getEffectivePlaneSizeForImage(Landroid/media/Image;I)Landroid/util/Size;

    move-result-object v7

    .line 141
    .local v7, "effectivePlaneSize":Landroid/util/Size;
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v18

    aget-object v19, v14, v8

    invoke-virtual/range {v19 .. v19}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v19

    mul-int v12, v18, v19

    .line 142
    .local v12, "srcByteCount":I
    const/4 v10, 0x0

    .local v10, "row":I
    :goto_2
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_a

    .line 143
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_c

    .line 147
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v18

    sub-int v9, v18, v13

    .line 148
    .local v9, "remainingBytes":I
    if-le v12, v9, :cond_c

    .line 149
    move v12, v9

    .line 152
    .end local v9    # "remainingBytes":I
    :cond_c
    invoke-static {v11, v13, v2, v3, v12}, Landroid/media/ImageUtils;->directByteBufferCopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    .line 153
    add-int v13, v13, v16

    .line 154
    add-int/2addr v3, v5

    .line 142
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 87
    .end local v2    # "dstBuffer":Ljava/nio/ByteBuffer;
    .end local v3    # "dstOffset":I
    .end local v5    # "dstRowStride":I
    .end local v7    # "effectivePlaneSize":Landroid/util/Size;
    .end local v10    # "row":I
    .end local v11    # "srcBuffer":Ljava/nio/ByteBuffer;
    .end local v12    # "srcByteCount":I
    .end local v13    # "srcOffset":I
    .end local v15    # "srcPos":I
    .end local v16    # "srcRowStride":I
    :cond_d
    return-void
.end method
