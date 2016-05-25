.class final Lcom/android/server/display/LogicalDisplay;
.super Ljava/lang/Object;
.source "LogicalDisplay.java"


# static fields
.field private static final BLANK_LAYER_STACK:I = -0x1


# instance fields
.field private final mBaseDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayId:I

.field private mHasContent:Z

.field private mInfo:Landroid/view/DisplayInfo;

.field private final mLayerStack:I

.field private mOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field private mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field private mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mRequestedRefreshRate:F

.field private final mTempDisplayRect:Landroid/graphics/Rect;

.field private final mTempLayerStackRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IILcom/android/server/display/DisplayDevice;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "layerStack"    # I
    .param p3, "primaryDisplayDevice"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 84
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 85
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    .line 86
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 87
    return-void
.end method


# virtual methods
.method public configureDisplayInTransactionLocked(Lcom/android/server/display/DisplayDevice;Z)V
    .locals 16
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "isBlanked"    # Z

    .prologue
    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 259
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 262
    .local v1, "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    if-eqz p2, :cond_2

    const/4 v11, -0x1

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/server/display/DisplayDevice;->setLayerStackInTransactionLocked(I)V

    .line 265
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedRefreshRate:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/server/display/DisplayDevice;->requestRefreshRateLocked(F)V

    .line 270
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget v14, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v15, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 275
    const/4 v7, 0x0

    .line 276
    .local v7, "orientation":I
    iget v11, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_0

    .line 277
    iget v7, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 281
    :cond_0
    iget v11, v1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    add-int/2addr v11, v7

    rem-int/lit8 v7, v11, 0x4

    .line 288
    const/4 v11, 0x1

    if-eq v7, v11, :cond_1

    const/4 v11, 0x3

    if-ne v7, v11, :cond_3

    :cond_1
    const/4 v10, 0x1

    .line 290
    .local v10, "rotated":Z
    :goto_1
    if-eqz v10, :cond_4

    iget v9, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 291
    .local v9, "physWidth":I
    :goto_2
    if-eqz v10, :cond_5

    iget v8, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 301
    .local v8, "physHeight":I
    :goto_3
    iget v11, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr v11, v9

    iget v12, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/2addr v12, v8

    if-ge v11, v12, :cond_6

    .line 304
    move v6, v9

    .line 305
    .local v6, "displayRectWidth":I
    iget v11, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr v11, v9

    iget v12, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int v3, v11, v12

    .line 311
    .local v3, "displayRectHeight":I
    :goto_4
    sub-int v11, v8, v3

    div-int/lit8 v5, v11, 0x2

    .line 312
    .local v5, "displayRectTop":I
    sub-int v11, v9, v6

    div-int/lit8 v4, v11, 0x2

    .line 313
    .local v4, "displayRectLeft":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    add-int v12, v4, v6

    add-int v13, v5, v3

    invoke-virtual {v11, v4, v5, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 316
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v11, v12}, Lcom/android/server/display/DisplayDevice;->setProjectionInTransactionLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 317
    return-void

    .line 262
    .end local v3    # "displayRectHeight":I
    .end local v4    # "displayRectLeft":I
    .end local v5    # "displayRectTop":I
    .end local v6    # "displayRectWidth":I
    .end local v7    # "orientation":I
    .end local v8    # "physHeight":I
    .end local v9    # "physWidth":I
    .end local v10    # "rotated":Z
    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    goto :goto_0

    .line 288
    .restart local v7    # "orientation":I
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 290
    .restart local v10    # "rotated":Z
    :cond_4
    iget v9, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_2

    .line 291
    .restart local v9    # "physWidth":I
    :cond_5
    iget v8, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_3

    .line 308
    .restart local v8    # "physHeight":I
    :cond_6
    iget v11, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/2addr v11, v8

    iget v12, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int v6, v11, v12

    .line 309
    .restart local v6    # "displayRectWidth":I
    move v3, v8

    .restart local v3    # "displayRectHeight":I
    goto :goto_4
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHasContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPrimaryDisplayDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBaseDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    return-void

    .line 363
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public getDisplayIdLocked()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    return v0
.end method

.method public getDisplayInfoLocked()Landroid/view/DisplayInfo;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 117
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 119
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->layerStack:I

    iput v1, v0, Landroid/view/DisplayInfo;->layerStack:I

    .line 120
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    iput v1, v0, Landroid/view/DisplayInfo;->state:I

    .line 127
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    return-object v0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    goto :goto_0
.end method

.method public getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    return-object v0
.end method

.method public getRequestedRefreshRateLocked()F
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedRefreshRate:F

    return v0
.end method

.method public hasContentLocked()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    return v0
.end method

.method public isValidLocked()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 138
    if-eqz p1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v1, :cond_0

    .line 140
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 141
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 154
    :goto_0
    return v0

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, p1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 146
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    goto :goto_0

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v1, :cond_2

    .line 150
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 151
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    goto :goto_0

    .line 154
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHasContentLocked(Z)V
    .locals 0
    .param p1, "hasContent"    # Z

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    .line 340
    return-void
.end method

.method public setRequestedRefreshRateLocked(F)V
    .locals 0
    .param p1, "requestedRefreshRate"    # F

    .prologue
    .line 347
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedRefreshRate:F

    .line 348
    return-void
.end method

.method public updateLocked(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/DisplayDevice;>;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 178
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-nez v1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 184
    iput-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    goto :goto_0

    .line 193
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 194
    .local v0, "deviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v1, v0}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    iput v2, v1, Landroid/view/DisplayInfo;->layerStack:I

    .line 196
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v3, v1, Landroid/view/DisplayInfo;->flags:I

    .line 197
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 198
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    .line 200
    :cond_3
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 201
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    .line 203
    :cond_4
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    .line 204
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    .line 206
    :cond_5
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 207
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    .line 209
    :cond_6
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iput v2, v1, Landroid/view/DisplayInfo;->type:I

    .line 210
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    iput-object v2, v1, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    .line 211
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput-object v2, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 212
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iput-object v2, v1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 213
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v2, v1, Landroid/view/DisplayInfo;->appWidth:I

    .line 214
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v2, v1, Landroid/view/DisplayInfo;->appHeight:I

    .line 215
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 216
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 217
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v3, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 218
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    iput v2, v1, Landroid/view/DisplayInfo;->refreshRate:F

    .line 219
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedRefreshRates:[F

    iget-object v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedRefreshRates:[F

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, v1, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    .line 221
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iput v2, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 222
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iput v2, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 223
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iput v2, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 224
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    iput-wide v2, v1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 225
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    iput-wide v2, v1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 226
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    iput v2, v1, Landroid/view/DisplayInfo;->state:I

    .line 227
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 228
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 229
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v2, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 230
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v2, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 231
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    iput v2, v1, Landroid/view/DisplayInfo;->ownerUid:I

    .line 232
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 234
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 235
    iput-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    goto/16 :goto_0
.end method
