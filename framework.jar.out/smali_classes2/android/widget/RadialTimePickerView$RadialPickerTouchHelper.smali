.class Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadialTimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadialPickerTouchHelper"
.end annotation


# instance fields
.field private final MASK_TYPE:I

.field private final MASK_VALUE:I

.field private final MINUTE_INCREMENT:I

.field private final SHIFT_TYPE:I

.field private final SHIFT_VALUE:I

.field private final TYPE_HOUR:I

.field private final TYPE_MINUTE:I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/RadialTimePickerView;


# direct methods
.method public constructor <init>(Landroid/widget/RadialTimePickerView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    .line 1061
    iput-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 1062
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1047
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 1049
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->TYPE_HOUR:I

    .line 1050
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->TYPE_MINUTE:I

    .line 1052
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->SHIFT_TYPE:I

    .line 1053
    const/16 v0, 0xf

    iput v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MASK_TYPE:I

    .line 1055
    const/16 v0, 0x8

    iput v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->SHIFT_VALUE:I

    .line 1056
    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MASK_VALUE:I

    .line 1059
    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MINUTE_INCREMENT:I

    .line 1061
    return-void
.end method

.method private adjustPicker(I)V
    .locals 8
    .param p1, "step"    # I

    .prologue
    .line 1096
    iget-object v7, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v7}, Landroid/widget/RadialTimePickerView;->-get4(Landroid/widget/RadialTimePickerView;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1097
    const/4 v6, 0x1

    .line 1099
    .local v6, "stepSize":I
    iget-object v7, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v7}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v1

    .line 1100
    .local v1, "currentHour24":I
    iget-object v7, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v7}, Landroid/widget/RadialTimePickerView;->-get2(Landroid/widget/RadialTimePickerView;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1101
    move v2, v1

    .line 1102
    .local v2, "initialStep":I
    const/4 v4, 0x0

    .line 1103
    .local v4, "minValue":I
    const/16 v3, 0x17

    .line 1116
    .end local v1    # "currentHour24":I
    .local v3, "maxValue":I
    :goto_0
    add-int v7, v2, p1

    mul-int v5, v7, v6

    .line 1117
    .local v5, "nextValue":I
    invoke-static {v5, v4, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 1118
    .local v0, "clampedValue":I
    iget-object v7, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v7}, Landroid/widget/RadialTimePickerView;->-get4(Landroid/widget/RadialTimePickerView;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1119
    iget-object v7, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v7, v0}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 1091
    :goto_1
    return-void

    .line 1105
    .end local v0    # "clampedValue":I
    .end local v2    # "initialStep":I
    .end local v3    # "maxValue":I
    .end local v4    # "minValue":I
    .end local v5    # "nextValue":I
    .restart local v1    # "currentHour24":I
    :cond_0
    invoke-direct {p0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour24To12(I)I

    move-result v2

    .line 1106
    .restart local v2    # "initialStep":I
    const/4 v4, 0x1

    .line 1107
    .restart local v4    # "minValue":I
    const/16 v3, 0xc

    .restart local v3    # "maxValue":I
    goto :goto_0

    .line 1110
    .end local v1    # "currentHour24":I
    .end local v2    # "initialStep":I
    .end local v3    # "maxValue":I
    .end local v4    # "minValue":I
    .end local v6    # "stepSize":I
    :cond_1
    const/4 v6, 0x5

    .line 1111
    .restart local v6    # "stepSize":I
    iget-object v7, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v7}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v7

    div-int/lit8 v2, v7, 0x5

    .line 1112
    .restart local v2    # "initialStep":I
    const/4 v4, 0x0

    .line 1113
    .restart local v4    # "minValue":I
    const/16 v3, 0x37

    .restart local v3    # "maxValue":I
    goto :goto_0

    .line 1121
    .restart local v0    # "clampedValue":I
    .restart local v5    # "nextValue":I
    :cond_2
    iget-object v7, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v7, v0}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    goto :goto_1
.end method

.method private getBoundsForVirtualView(ILandroid/graphics/Rect;)V
    .locals 16
    .param p1, "virtualViewId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1291
    invoke-direct/range {p0 .. p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v8

    .line 1292
    .local v8, "type":I
    invoke-direct/range {p0 .. p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v9

    .line 1295
    .local v9, "value":I
    const/4 v12, 0x1

    if-ne v8, v12, :cond_1

    .line 1296
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v12, v9}, Landroid/widget/RadialTimePickerView;->-wrap0(Landroid/widget/RadialTimePickerView;I)Z

    move-result v4

    .line 1297
    .local v4, "innerCircle":Z
    if-eqz v4, :cond_0

    .line 1298
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->-get1(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v13}, Landroid/widget/RadialTimePickerView;->-get5(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v13

    const/4 v14, 0x2

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-float v2, v12

    .line 1299
    .local v2, "centerRadius":F
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->-get3(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    int-to-float v5, v12

    .line 1305
    .local v5, "radius":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v12, v9}, Landroid/widget/RadialTimePickerView;->-wrap2(Landroid/widget/RadialTimePickerView;I)I

    move-result v12

    int-to-float v3, v12

    .line 1317
    .end local v4    # "innerCircle":Z
    .local v3, "degrees":F
    :goto_1
    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 1318
    .local v6, "radians":D
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->-get6(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v13, v14

    mul-float/2addr v13, v2

    add-float v10, v12, v13

    .line 1319
    .local v10, "xCenter":F
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->-get7(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v13, v14

    mul-float/2addr v13, v2

    sub-float v11, v12, v13

    .line 1321
    .local v11, "yCenter":F
    sub-float v12, v10, v5

    float-to-int v12, v12

    sub-float v13, v11, v5

    float-to-int v13, v13

    .line 1322
    add-float v14, v10, v5

    float-to-int v14, v14

    add-float v15, v11, v5

    float-to-int v15, v15

    .line 1321
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 1289
    return-void

    .line 1301
    .end local v2    # "centerRadius":F
    .end local v3    # "degrees":F
    .end local v5    # "radius":F
    .end local v6    # "radians":D
    .end local v10    # "xCenter":F
    .end local v11    # "yCenter":F
    .restart local v4    # "innerCircle":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->-get1(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v13}, Landroid/widget/RadialTimePickerView;->-get5(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v13

    const/4 v14, 0x0

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-float v2, v12

    .line 1302
    .restart local v2    # "centerRadius":F
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->-get3(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    int-to-float v5, v12

    .restart local v5    # "radius":F
    goto :goto_0

    .line 1306
    .end local v2    # "centerRadius":F
    .end local v4    # "innerCircle":Z
    .end local v5    # "radius":F
    :cond_1
    const/4 v12, 0x2

    if-ne v8, v12, :cond_2

    .line 1307
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->-get1(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v13}, Landroid/widget/RadialTimePickerView;->-get5(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v13

    const/4 v14, 0x1

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-float v2, v12

    .line 1308
    .restart local v2    # "centerRadius":F
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v12, v9}, Landroid/widget/RadialTimePickerView;->-wrap3(Landroid/widget/RadialTimePickerView;I)I

    move-result v12

    int-to-float v3, v12

    .line 1309
    .restart local v3    # "degrees":F
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->-get3(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    int-to-float v5, v12

    .restart local v5    # "radius":F
    goto/16 :goto_1

    .line 1312
    .end local v2    # "centerRadius":F
    .end local v3    # "degrees":F
    .end local v5    # "radius":F
    :cond_2
    const/4 v2, 0x0

    .line 1313
    .restart local v2    # "centerRadius":F
    const/4 v3, 0x0

    .line 1314
    .restart local v3    # "degrees":F
    const/4 v5, 0x0

    .restart local v5    # "radius":F
    goto/16 :goto_1
.end method

.method private getCircularDiff(III)I
    .locals 3
    .param p1, "first"    # I
    .param p2, "second"    # I
    .param p3, "max"    # I

    .prologue
    .line 1169
    sub-int v2, p1, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1170
    .local v0, "diff":I
    div-int/lit8 v1, p3, 0x2

    .line 1171
    .local v1, "midpoint":I
    if-le v0, v1, :cond_0

    sub-int v0, p3, v0

    .end local v0    # "diff":I
    :cond_0
    return v0
.end method

.method private getTypeFromId(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1352
    ushr-int/lit8 v0, p1, 0x0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method private getValueFromId(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1356
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private getVirtualViewDescription(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    .line 1327
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1328
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1332
    :goto_0
    return-object v0

    .line 1330
    :cond_1
    const/4 v0, 0x0

    .local v0, "description":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private getVirtualViewIdAfter(II)I
    .locals 5
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    .line 1229
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 1230
    add-int/lit8 v2, p2, 0x1

    .line 1231
    .local v2, "nextValue":I
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->-get2(Landroid/widget/RadialTimePickerView;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v1, 0x17

    .line 1232
    .local v1, "max":I
    :goto_0
    if-gt v2, v1, :cond_3

    .line 1233
    invoke-direct {p0, p1, v2}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v4

    return v4

    .line 1231
    .end local v1    # "max":I
    :cond_0
    const/16 v1, 0xc

    .restart local v1    # "max":I
    goto :goto_0

    .line 1235
    .end local v1    # "max":I
    .end local v2    # "nextValue":I
    :cond_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    .line 1236
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v4}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    .line 1237
    .local v0, "current":I
    rem-int/lit8 v4, p2, 0x5

    sub-int v3, p2, v4

    .line 1238
    .local v3, "snapValue":I
    add-int/lit8 v2, v3, 0x5

    .line 1239
    .restart local v2    # "nextValue":I
    if-ge p2, v0, :cond_2

    if-le v2, v0, :cond_2

    .line 1241
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v4

    return v4

    .line 1242
    :cond_2
    const/16 v4, 0x3c

    if-ge v2, v4, :cond_3

    .line 1243
    invoke-direct {p0, p1, v2}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v4

    return v4

    .line 1246
    .end local v0    # "current":I
    .end local v2    # "nextValue":I
    .end local v3    # "snapValue":I
    :cond_3
    const/high16 v4, -0x80000000

    return v4
.end method

.method private hour12To24(II)I
    .locals 2
    .param p1, "hour12"    # I
    .param p2, "amOrPm"    # I

    .prologue
    .line 1268
    move v0, p1

    .line 1269
    .local v0, "hour24":I
    const/16 v1, 0xc

    if-ne p1, v1, :cond_1

    .line 1270
    if-nez p2, :cond_0

    .line 1271
    const/4 v0, 0x0

    .line 1276
    :cond_0
    :goto_0
    return v0

    .line 1273
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 1274
    add-int/lit8 v0, v0, 0xc

    goto :goto_0
.end method

.method private hour24To12(I)I
    .locals 1
    .param p1, "hour24"    # I

    .prologue
    const/16 v0, 0xc

    .line 1280
    if-nez p1, :cond_0

    .line 1281
    return v0

    .line 1282
    :cond_0
    if-le p1, v0, :cond_1

    .line 1283
    add-int/lit8 v0, p1, -0xc

    return v0

    .line 1285
    :cond_1
    return p1
.end method

.method private isVirtualViewSelected(II)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    .line 1337
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1338
    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v1

    if-ne v1, p2, :cond_0

    const/4 v0, 0x1

    .line 1344
    .local v0, "selected":Z
    :goto_0
    return v0

    .line 1338
    .end local v0    # "selected":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "selected":Z
    goto :goto_0

    .line 1339
    .end local v0    # "selected":Z
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 1340
    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v1

    if-ne v1, p2, :cond_2

    const/4 v0, 0x1

    .restart local v0    # "selected":Z
    goto :goto_0

    .end local v0    # "selected":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "selected":Z
    goto :goto_0

    .line 1342
    .end local v0    # "selected":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "selected":Z
    goto :goto_0
.end method

.method private makeId(II)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    .line 1348
    shl-int/lit8 v0, p1, 0x0

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 16
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1128
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    const/4 v15, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v14, v0, v1, v15}, Landroid/widget/RadialTimePickerView;->-wrap4(Landroid/widget/RadialTimePickerView;FFZ)I

    move-result v4

    .line 1129
    .local v4, "degrees":I
    const/4 v14, -0x1

    if-eq v4, v14, :cond_3

    .line 1130
    const/4 v14, 0x0

    invoke-static {v4, v14}, Landroid/widget/RadialTimePickerView;->-wrap7(II)I

    move-result v14

    rem-int/lit16 v10, v14, 0x168

    .line 1131
    .local v10, "snapDegrees":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v14}, Landroid/widget/RadialTimePickerView;->-get4(Landroid/widget/RadialTimePickerView;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1132
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v14, v0, v1}, Landroid/widget/RadialTimePickerView;->-wrap1(Landroid/widget/RadialTimePickerView;FF)Z

    move-result v8

    .line 1133
    .local v8, "isOnInnerCircle":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v14, v10, v8}, Landroid/widget/RadialTimePickerView;->-wrap5(Landroid/widget/RadialTimePickerView;IZ)I

    move-result v6

    .line 1134
    .local v6, "hour24":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v14}, Landroid/widget/RadialTimePickerView;->-get2(Landroid/widget/RadialTimePickerView;)Z

    move-result v14

    if-eqz v14, :cond_0

    move v5, v6

    .line 1135
    .local v5, "hour":I
    :goto_0
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v7

    .line 1157
    .end local v5    # "hour":I
    .end local v6    # "hour24":I
    .end local v8    # "isOnInnerCircle":Z
    .end local v10    # "snapDegrees":I
    .local v7, "id":I
    :goto_1
    return v7

    .line 1134
    .end local v7    # "id":I
    .restart local v6    # "hour24":I
    .restart local v8    # "isOnInnerCircle":Z
    .restart local v10    # "snapDegrees":I
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour24To12(I)I

    move-result v5

    .restart local v5    # "hour":I
    goto :goto_0

    .line 1137
    .end local v5    # "hour":I
    .end local v6    # "hour24":I
    .end local v8    # "isOnInnerCircle":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v14}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v2

    .line 1138
    .local v2, "current":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v14, v4}, Landroid/widget/RadialTimePickerView;->-wrap6(Landroid/widget/RadialTimePickerView;I)I

    move-result v13

    .line 1139
    .local v13, "touched":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v14, v10}, Landroid/widget/RadialTimePickerView;->-wrap6(Landroid/widget/RadialTimePickerView;I)I

    move-result v11

    .line 1143
    .local v11, "snapped":I
    const/16 v14, 0x3c

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13, v14}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getCircularDiff(III)I

    move-result v3

    .line 1144
    .local v3, "currentOffset":I
    const/16 v14, 0x3c

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13, v14}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getCircularDiff(III)I

    move-result v12

    .line 1146
    .local v12, "snappedOffset":I
    if-ge v3, v12, :cond_2

    .line 1147
    move v9, v2

    .line 1151
    .local v9, "minute":I
    :goto_2
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v9}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v7

    .restart local v7    # "id":I
    goto :goto_1

    .line 1149
    .end local v7    # "id":I
    .end local v9    # "minute":I
    :cond_2
    move v9, v11

    .restart local v9    # "minute":I
    goto :goto_2

    .line 1154
    .end local v2    # "current":I
    .end local v3    # "currentOffset":I
    .end local v9    # "minute":I
    .end local v10    # "snapDegrees":I
    .end local v11    # "snapped":I
    .end local v12    # "snappedOffset":I
    .end local v13    # "touched":I
    :cond_3
    const/high16 v7, -0x80000000

    .restart local v7    # "id":I
    goto :goto_1
.end method

.method protected getVisibleVirtualViews(Landroid/util/IntArray;)V
    .locals 6
    .param p1, "virtualViewIds"    # Landroid/util/IntArray;

    .prologue
    const/4 v5, 0x2

    .line 1176
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->-get4(Landroid/widget/RadialTimePickerView;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1177
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->-get2(Landroid/widget/RadialTimePickerView;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    .line 1178
    .local v3, "min":I
    :goto_0
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->-get2(Landroid/widget/RadialTimePickerView;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v2, 0x17

    .line 1179
    .local v2, "max":I
    :goto_1
    move v1, v3

    .local v1, "i":I
    :goto_2
    if-gt v1, v2, :cond_4

    .line 1180
    const/4 v4, 0x1

    invoke-direct {p0, v4, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IntArray;->add(I)V

    .line 1179
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1177
    .end local v1    # "i":I
    .end local v2    # "max":I
    .end local v3    # "min":I
    :cond_0
    const/4 v3, 0x1

    .restart local v3    # "min":I
    goto :goto_0

    .line 1178
    :cond_1
    const/16 v2, 0xc

    .restart local v2    # "max":I
    goto :goto_1

    .line 1183
    .end local v2    # "max":I
    .end local v3    # "min":I
    :cond_2
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v4}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    .line 1184
    .local v0, "current":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    const/16 v4, 0x3c

    if-ge v1, v4, :cond_4

    .line 1185
    invoke-direct {p0, v5, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IntArray;->add(I)V

    .line 1189
    if-le v0, v1, :cond_3

    add-int/lit8 v4, v1, 0x5

    if-ge v0, v4, :cond_3

    .line 1190
    invoke-direct {p0, v5, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IntArray;->add(I)V

    .line 1184
    :cond_3
    add-int/lit8 v1, v1, 0x5

    goto :goto_3

    .line 1175
    .end local v0    # "current":I
    :cond_4
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1067
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1069
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1070
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1066
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 1252
    const/16 v3, 0x10

    if-ne p2, v3, :cond_2

    .line 1253
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v1

    .line 1254
    .local v1, "type":I
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v2

    .line 1255
    .local v2, "value":I
    if-ne v1, v4, :cond_1

    .line 1256
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3}, Landroid/widget/RadialTimePickerView;->-get2(Landroid/widget/RadialTimePickerView;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 1257
    .local v0, "hour":I
    :goto_0
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v3, v0}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 1258
    return v4

    .line 1256
    .end local v0    # "hour":I
    :cond_0
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3}, Landroid/widget/RadialTimePickerView;->-get0(Landroid/widget/RadialTimePickerView;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour12To24(II)I

    move-result v0

    .restart local v0    # "hour":I
    goto :goto_0

    .line 1259
    .end local v0    # "hour":I
    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 1260
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v3, v2}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 1261
    return v4

    .line 1264
    .end local v1    # "type":I
    .end local v2    # "value":I
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1198
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1200
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v1

    .line 1201
    .local v1, "type":I
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v2

    .line 1202
    .local v2, "value":I
    invoke-direct {p0, v1, v2}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewDescription(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1203
    .local v0, "description":Ljava/lang/CharSequence;
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1197
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1208
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1209
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1211
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v3

    .line 1212
    .local v3, "type":I
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v4

    .line 1213
    .local v4, "value":I
    invoke-direct {p0, v3, v4}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewDescription(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1214
    .local v0, "description":Ljava/lang/CharSequence;
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1216
    iget-object v5, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v5}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getBoundsForVirtualView(ILandroid/graphics/Rect;)V

    .line 1217
    iget-object v5, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1219
    invoke-direct {p0, v3, v4}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->isVirtualViewSelected(II)Z

    move-result v2

    .line 1220
    .local v2, "selected":Z
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 1222
    invoke-direct {p0, v3, v4}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewIdAfter(II)I

    move-result v1

    .line 1223
    .local v1, "nextId":I
    const/high16 v5, -0x80000000

    if-eq v1, v5, :cond_0

    .line 1224
    iget-object v5, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {p2, v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    .line 1207
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 1075
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    return v1

    .line 1079
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 1088
    const/4 v0, 0x0

    return v0

    .line 1081
    :sswitch_0
    invoke-direct {p0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    .line 1082
    return v1

    .line 1084
    :sswitch_1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    .line 1085
    return v1

    .line 1079
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
