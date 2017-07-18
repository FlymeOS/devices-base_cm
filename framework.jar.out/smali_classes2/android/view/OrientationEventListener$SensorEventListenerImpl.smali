.class Landroid/view/OrientationEventListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "OrientationEventListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OrientationEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorEventListenerImpl"
.end annotation


# static fields
.field private static final _DATA_X:I = 0x0

.field private static final _DATA_Y:I = 0x1

.field private static final _DATA_Z:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/view/OrientationEventListener;


# direct methods
.method constructor <init>(Landroid/view/OrientationEventListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/OrientationEventListener;

    .prologue
    .line 113
    iput-object p1, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 147
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x0

    .line 119
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 120
    .local v6, "values":[F
    const/4 v5, -0x1

    .line 121
    .local v5, "orientation":I
    aget v7, v6, v7

    neg-float v0, v7

    .line 122
    .local v0, "X":F
    aget v7, v6, v12

    neg-float v1, v7

    .line 123
    .local v1, "Y":F
    const/4 v7, 0x2

    aget v7, v6, v7

    neg-float v2, v7

    .line 124
    .local v2, "Z":F
    mul-float v7, v0, v0

    mul-float v8, v1, v1

    add-float v4, v7, v8

    .line 126
    .local v4, "magnitude":F
    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v7, v4

    mul-float v8, v2, v2

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1

    .line 128
    neg-float v7, v1

    float-to-double v8, v7

    float-to-double v10, v0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    double-to-float v7, v8

    .line 127
    const v8, 0x42652ee1

    .line 128
    mul-float v3, v7, v8

    .line 129
    .local v3, "angle":F
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v7

    rsub-int/lit8 v5, v7, 0x5a

    .line 131
    :goto_0
    const/16 v7, 0x168

    if-lt v5, v7, :cond_0

    .line 132
    add-int/lit16 v5, v5, -0x168

    goto :goto_0

    .line 134
    :cond_0
    :goto_1
    if-gez v5, :cond_1

    .line 135
    add-int/lit16 v5, v5, 0x168

    goto :goto_1

    .line 138
    .end local v3    # "angle":F
    :cond_1
    iget-object v7, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v7}, Landroid/view/OrientationEventListener;->-get0(Landroid/view/OrientationEventListener;)Landroid/view/OrientationListener;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 139
    iget-object v7, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v7}, Landroid/view/OrientationEventListener;->-get0(Landroid/view/OrientationEventListener;)Landroid/view/OrientationListener;

    move-result-object v7

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v7, v12, v8}, Landroid/view/OrientationListener;->onSensorChanged(I[F)V

    .line 141
    :cond_2
    iget-object v7, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v7}, Landroid/view/OrientationEventListener;->-get1(Landroid/view/OrientationEventListener;)I

    move-result v7

    if-eq v5, v7, :cond_3

    .line 142
    iget-object v7, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v7, v5}, Landroid/view/OrientationEventListener;->-set0(Landroid/view/OrientationEventListener;I)I

    .line 143
    iget-object v7, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-virtual {v7, v5}, Landroid/view/OrientationEventListener;->onOrientationChanged(I)V

    .line 118
    :cond_3
    return-void
.end method
