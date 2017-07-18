.class public Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;
.super Ljava/lang/Object;
.source "ParameterUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/ParameterUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeteringData"
.end annotation


# instance fields
.field public final meteringArea:Landroid/hardware/Camera$Area;

.field public final previewMetering:Landroid/graphics/Rect;

.field public final reportedMetering:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera$Area;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "meteringArea"    # Landroid/hardware/Camera$Area;
    .param p2, "previewMetering"    # Landroid/graphics/Rect;
    .param p3, "reportedMetering"    # Landroid/graphics/Rect;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;->meteringArea:Landroid/hardware/Camera$Area;

    .line 108
    iput-object p2, p0, Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;->previewMetering:Landroid/graphics/Rect;

    .line 109
    iput-object p3, p0, Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;->reportedMetering:Landroid/graphics/Rect;

    .line 106
    return-void
.end method
