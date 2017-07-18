.class public Landroid/hardware/input/TouchCalibration;
.super Ljava/lang/Object;
.source "TouchCalibration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/TouchCalibration$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/input/TouchCalibration;",
            ">;"
        }
    .end annotation
.end field

.field public static final IDENTITY:Landroid/hardware/input/TouchCalibration;


# instance fields
.field private final mXOffset:F

.field private final mXScale:F

.field private final mXYMix:F

.field private final mYOffset:F

.field private final mYScale:F

.field private final mYXMix:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Landroid/hardware/input/TouchCalibration;

    invoke-direct {v0}, Landroid/hardware/input/TouchCalibration;-><init>()V

    sput-object v0, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    .line 32
    new-instance v0, Landroid/hardware/input/TouchCalibration$1;

    invoke-direct {v0}, Landroid/hardware/input/TouchCalibration$1;-><init>()V

    .line 31
    sput-object v0, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v1

    move v6, v2

    .line 49
    invoke-direct/range {v0 .. v6}, Landroid/hardware/input/TouchCalibration;-><init>(FFFFFF)V

    .line 48
    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 0
    .param p1, "xScale"    # F
    .param p2, "xyMix"    # F
    .param p3, "xOffset"    # F
    .param p4, "yxMix"    # F
    .param p5, "yScale"    # F
    .param p6, "yOffset"    # F

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    .line 64
    iput p2, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    .line 65
    iput p3, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    .line 66
    iput p4, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    .line 67
    iput p5, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    .line 68
    iput p6, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    .line 71
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    if-ne p1, p0, :cond_0

    .line 102
    return v1

    .line 103
    :cond_0
    instance-of v3, p1, Landroid/hardware/input/TouchCalibration;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 104
    check-cast v0, Landroid/hardware/input/TouchCalibration;

    .line 106
    .local v0, "cal":Landroid/hardware/input/TouchCalibration;
    iget v3, v0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    iget v4, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 107
    iget v3, v0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    iget v4, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 108
    iget v3, v0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    iget v4, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 109
    iget v3, v0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    iget v4, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 110
    iget v3, v0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    iget v4, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 111
    iget v3, v0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    iget v4, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 106
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 111
    goto :goto_0

    :cond_2
    move v1, v2

    .line 106
    goto :goto_0

    .line 113
    .end local v0    # "cal":Landroid/hardware/input/TouchCalibration;
    :cond_3
    return v2
.end method

.method public getAffineTransform()[F
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x6

    new-array v0, v0, [F

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    const/4 v2, 0x5

    aput v1, v0, v2

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 119
    iget v0, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 120
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 119
    xor-int/2addr v0, v1

    .line 121
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 119
    xor-int/2addr v0, v1

    .line 122
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 119
    xor-int/2addr v0, v1

    .line 123
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 119
    xor-int/2addr v0, v1

    .line 124
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 119
    xor-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 82
    iget v0, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 83
    iget v0, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 84
    iget v0, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 85
    iget v0, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 86
    iget v0, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 87
    iget v0, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 81
    return-void
.end method
