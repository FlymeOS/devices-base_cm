.class public Lcom/android/server/gesture/GestureInputFilter;
.super Ljava/lang/Object;
.source "GestureInputFilter.java"

# interfaces
.implements Landroid/view/IInputFilter;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GestureInputFilter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDoubleClickPendingIntent:Landroid/app/PendingIntent;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGesturePadHeight:F

.field private mGesturePadWidth:F

.field private mHost:Landroid/view/IInputFilterHost;

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mLongPressPendingIntent:Landroid/app/PendingIntent;

.field private mOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private final mScreenHeight:I

.field private final mScreenWidth:I

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/gesture/GestureInputFilter;->mHost:Landroid/view/IInputFilterHost;

    .line 61
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/gesture/GestureInputFilter;->mInputManager:Landroid/hardware/input/InputManager;

    .line 62
    iput-object p1, p0, Lcom/android/server/gesture/GestureInputFilter;->mContext:Landroid/content/Context;

    .line 63
    iget-object v8, p0, Lcom/android/server/gesture/GestureInputFilter;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v8}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_0

    aget v3, v0, v2

    .line 64
    .local v3, "id":I
    iget-object v8, p0, Lcom/android/server/gesture/GestureInputFilter;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v8, v3}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 65
    .local v4, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v4}, Landroid/view/InputDevice;->getSources()I

    move-result v8

    const/high16 v9, 0x400000

    and-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/server/gesture/GestureInputFilter;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v9, v3}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/InputDevice;->getSources()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 67
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v8

    iput v8, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadWidth:F

    .line 68
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v8

    iput v8, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadHeight:F

    .line 72
    .end local v3    # "id":I
    .end local v4    # "inputDevice":Landroid/view/InputDevice;
    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 73
    .local v6, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v8

    iput v8, p0, Lcom/android/server/gesture/GestureInputFilter;->mTouchSlop:I

    .line 74
    const-string v8, "window"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 75
    .local v7, "wm":Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 76
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/android/server/gesture/GestureInputFilter;->mScreenWidth:I

    .line 77
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/android/server/gesture/GestureInputFilter;->mScreenHeight:I

    .line 78
    new-instance v8, Landroid/view/GestureDetector;

    invoke-direct {v8, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v8, p0, Lcom/android/server/gesture/GestureInputFilter;->mGestureDetector:Landroid/view/GestureDetector;

    .line 79
    iget-object v8, p0, Lcom/android/server/gesture/GestureInputFilter;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v8, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 80
    new-instance v8, Lcom/android/server/gesture/GestureInputFilter$1;

    invoke-direct {v8, p0, p1}, Lcom/android/server/gesture/GestureInputFilter$1;-><init>(Lcom/android/server/gesture/GestureInputFilter;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/server/gesture/GestureInputFilter;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 89
    return-void

    .line 63
    .end local v1    # "display":Landroid/view/Display;
    .end local v6    # "vc":Landroid/view/ViewConfiguration;
    .end local v7    # "wm":Landroid/view/WindowManager;
    .restart local v3    # "id":I
    .restart local v4    # "inputDevice":Landroid/view/InputDevice;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/server/gesture/GestureInputFilter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/gesture/GestureInputFilter;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/android/server/gesture/GestureInputFilter;->mOrientation:I

    return p1
.end method

.method private generateSwipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 152
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mOrientation:I

    sparse-switch v10, :sswitch_data_0

    .line 174
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 175
    .local v0, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 177
    .local v1, "deltaY":F
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mTouchSlop:I

    int-to-float v10, v10

    cmpg-float v10, v0, v10

    if-gez v10, :cond_0

    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mTouchSlop:I

    int-to-float v10, v10

    cmpg-float v10, v1, v10

    if-gez v10, :cond_0

    .line 178
    const/4 v10, 0x0

    .line 220
    :goto_1
    return v10

    .line 154
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    :sswitch_0
    const-string v10, "GestureInputFilter"

    const-string v11, "Adjusting motion for 90 degrees"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p1, v10, v11}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 156
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p2, v10, v11}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 159
    :sswitch_1
    const-string v10, "GestureInputFilter"

    const-string v11, "Adjusting motion for 180 degrees"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadWidth:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadHeight:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    sub-float/2addr v11, v12

    invoke-virtual {p1, v10, v11}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 162
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadWidth:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadHeight:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    sub-float/2addr v11, v12

    invoke-virtual {p2, v10, v11}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 166
    :sswitch_2
    const-string v10, "GestureInputFilter"

    const-string v11, "Adjusting motion for 270 degrees"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadHeight:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p1, v10, v11}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 169
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadHeight:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p2, v10, v11}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto/16 :goto_0

    .line 181
    .restart local v0    # "deltaX":F
    .restart local v1    # "deltaY":F
    :cond_0
    cmpl-float v10, v0, v1

    if-lez v10, :cond_2

    .line 182
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {p2, v10, v11}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 187
    :cond_1
    :goto_2
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mScreenWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadWidth:F

    div-float v8, v10, v11

    .line 188
    .local v8, "scaleX":F
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mScreenHeight:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadHeight:F

    div-float v9, v10, v11

    .line 190
    .local v9, "scaleY":F
    mul-float v4, v0, v8

    .line 191
    .local v4, "magnitudeX":F
    mul-float v5, v1, v9

    .line 193
    .local v5, "magnitudeY":F
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mScreenWidth:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v6, v10

    .line 194
    .local v6, "origX":F
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mScreenHeight:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v7, v10

    .line 195
    .local v7, "origY":F
    const/4 v2, 0x0

    .line 196
    .local v2, "endX":F
    const/4 v3, 0x0

    .line 198
    .local v3, "endY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    .line 201
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mTouchSlop:I

    int-to-float v10, v10

    add-float/2addr v10, v6

    const/high16 v11, 0x40a00000    # 5.0f

    add-float v2, v10, v11

    .line 202
    add-float v3, v7, v5

    .line 219
    :goto_3
    invoke-direct {p0, v6, v7, v2, v3}, Lcom/android/server/gesture/GestureInputFilter;->sendSwipe(FFFF)V

    .line 220
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 183
    .end local v2    # "endX":F
    .end local v3    # "endY":F
    .end local v4    # "magnitudeX":F
    .end local v5    # "magnitudeY":F
    .end local v6    # "origX":F
    .end local v7    # "origY":F
    .end local v8    # "scaleX":F
    .end local v9    # "scaleY":F
    :cond_2
    cmpl-float v10, v1, v0

    if-lez v10, :cond_1

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {p2, v10, v11}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_2

    .line 203
    .restart local v2    # "endX":F
    .restart local v3    # "endY":F
    .restart local v4    # "magnitudeX":F
    .restart local v5    # "magnitudeY":F
    .restart local v6    # "origX":F
    .restart local v7    # "origY":F
    .restart local v8    # "scaleX":F
    .restart local v9    # "scaleY":F
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_4

    .line 205
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mTouchSlop:I

    int-to-float v10, v10

    add-float/2addr v10, v6

    const/high16 v11, 0x40a00000    # 5.0f

    add-float v2, v10, v11

    .line 206
    sub-float v3, v7, v5

    goto :goto_3

    .line 207
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_5

    .line 209
    add-float v2, v6, v4

    .line 210
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mTouchSlop:I

    int-to-float v10, v10

    add-float/2addr v10, v7

    const/high16 v11, 0x40a00000    # 5.0f

    add-float v3, v10, v11

    goto :goto_3

    .line 211
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_6

    .line 213
    sub-float v2, v6, v4

    .line 214
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mTouchSlop:I

    int-to-float v10, v10

    add-float/2addr v10, v7

    const/high16 v11, 0x40a00000    # 5.0f

    add-float v3, v10, v11

    goto :goto_3

    .line 216
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 152
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private static final lerp(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "alpha"    # F

    .prologue
    .line 262
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private sendInputEvent(Landroid/view/InputEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 259
    return-void
.end method

.method private sendMotionEvent(IJFFF)V
    .locals 24
    .param p1, "action"    # I
    .param p2, "when"    # J
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "pressure"    # F

    .prologue
    .line 242
    const/high16 v21, 0x3f800000    # 1.0f

    .line 243
    .local v21, "DEFAULT_SIZE":F
    const/16 v18, 0x0

    .line 244
    .local v18, "DEFAULT_META_STATE":I
    const/high16 v19, 0x3f800000    # 1.0f

    .line 245
    .local v19, "DEFAULT_PRECISION_X":F
    const/high16 v20, 0x3f800000    # 1.0f

    .line 246
    .local v20, "DEFAULT_PRECISION_Y":F
    const/16 v16, 0x0

    .line 247
    .local v16, "DEFAULT_DEVICE_ID":I
    const/16 v17, 0x0

    .line 249
    .local v17, "DEFAULT_EDGE_FLAGS":I
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p2

    move/from16 v6, p1

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v22

    .line 252
    .local v22, "e":Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 253
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/gesture/GestureInputFilter;->sendInputEvent(Landroid/view/InputEvent;)V

    .line 254
    return-void
.end method

.method private sendSwipe(FFFF)V
    .locals 18
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 224
    const-wide/16 v10, 0x64

    .line 225
    .local v10, "duration":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 226
    .local v4, "now":J
    move-wide/from16 v16, v4

    .line 227
    .local v16, "startTime":J
    const-wide/16 v2, 0x64

    add-long v14, v16, v2

    .line 228
    .local v14, "endTime":J
    const/4 v3, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v2, p0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/gesture/GestureInputFilter;->sendMotionEvent(IJFFF)V

    .line 230
    :goto_0
    cmp-long v2, v4, v14

    if-gez v2, :cond_0

    .line 231
    sub-long v12, v4, v16

    .line 232
    .local v12, "elapsedTime":J
    long-to-float v2, v12

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v9, v2, v3

    .line 233
    .local v9, "alpha":F
    const/4 v3, 0x2

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v1, v9}, Lcom/android/server/gesture/GestureInputFilter;->lerp(FFF)F

    move-result v6

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v0, v1, v9}, Lcom/android/server/gesture/GestureInputFilter;->lerp(FFF)F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/gesture/GestureInputFilter;->sendMotionEvent(IJFFF)V

    .line 235
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 236
    goto :goto_0

    .line 237
    .end local v9    # "alpha":F
    .end local v12    # "elapsedTime":J
    :cond_0
    const/4 v3, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v2, p0

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/gesture/GestureInputFilter;->sendMotionEvent(IJFFF)V

    .line 238
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 143
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 149
    return-void
.end method

.method public filterInputEvent(Landroid/view/InputEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    :try_start_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v2

    const/high16 v3, 0x400000

    if-ne v2, v3, :cond_0

    instance-of v2, p1, Landroid/view/MotionEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 108
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/gesture/GestureInputFilter;->mHost:Landroid/view/IInputFilterHost;

    invoke-interface {v2, p1, p2}, Landroid/view/IInputFilterHost;->sendInputEvent(Landroid/view/InputEvent;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :goto_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    .line 120
    :goto_1
    return-void

    .line 115
    :cond_1
    :try_start_2
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v1, v0

    .line 116
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/android/server/gesture/GestureInputFilter;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    goto :goto_1

    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    throw v2

    .line 109
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public install(Landroid/view/IInputFilterHost;)V
    .locals 1
    .param p1, "host"    # Landroid/view/IInputFilterHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/gesture/GestureInputFilter;->mHost:Landroid/view/IInputFilterHost;

    .line 128
    iget-object v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 129
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 309
    iget-object v1, p0, Lcom/android/server/gesture/GestureInputFilter;->mDoubleClickPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/android/server/gesture/GestureInputFilter;->mDoubleClickPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    const/4 v1, 0x1

    .line 318
    :goto_0
    return v1

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e1":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 318
    .end local v0    # "e1":Landroid/app/PendingIntent$CanceledException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 299
    invoke-direct {p0, p1, p2}, Lcom/android/server/gesture/GestureInputFilter;->generateSwipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 287
    iget-object v1, p0, Lcom/android/server/gesture/GestureInputFilter;->mLongPressPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/android/server/gesture/GestureInputFilter;->mLongPressPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e1":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 272
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public setOnDoubleClickPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/server/gesture/GestureInputFilter;->mDoubleClickPendingIntent:Landroid/app/PendingIntent;

    .line 332
    return-void
.end method

.method public setOnLongPressPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/server/gesture/GestureInputFilter;->mLongPressPendingIntent:Landroid/app/PendingIntent;

    .line 328
    return-void
.end method

.method public uninstall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 136
    iput-object v1, p0, Lcom/android/server/gesture/GestureInputFilter;->mHost:Landroid/view/IInputFilterHost;

    .line 137
    iget-object v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 138
    iput-object v1, p0, Lcom/android/server/gesture/GestureInputFilter;->mContext:Landroid/content/Context;

    .line 139
    return-void
.end method
