.class public Lcyanogenmod/hardware/HSIC;
.super Ljava/lang/Object;
.source "HSIC.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/hardware/HSIC$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/hardware/HSIC;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContrast:F

.field private final mHue:F

.field private final mIntensity:F

.field private final mSaturation:F

.field private final mSaturationThreshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcyanogenmod/hardware/HSIC$1;

    invoke-direct {v0}, Lcyanogenmod/hardware/HSIC$1;-><init>()V

    .line 115
    sput-object v0, Lcyanogenmod/hardware/HSIC;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 25
    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 0
    .param p1, "hue"    # F
    .param p2, "saturation"    # F
    .param p3, "intensity"    # F
    .param p4, "contrast"    # F
    .param p5, "saturationThreshold"    # F

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcyanogenmod/hardware/HSIC;->mHue:F

    .line 36
    iput p2, p0, Lcyanogenmod/hardware/HSIC;->mSaturation:F

    .line 37
    iput p3, p0, Lcyanogenmod/hardware/HSIC;->mIntensity:F

    .line 38
    iput p4, p0, Lcyanogenmod/hardware/HSIC;->mContrast:F

    .line 39
    iput p5, p0, Lcyanogenmod/hardware/HSIC;->mSaturationThreshold:F

    .line 34
    return-void
.end method

.method public static fromFloatArray([F)Lcyanogenmod/hardware/HSIC;
    .locals 7
    .param p0, "hsic"    # [F

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    array-length v0, p0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 88
    new-instance v0, Lcyanogenmod/hardware/HSIC;

    aget v1, p0, v2

    aget v2, p0, v3

    aget v3, p0, v4

    aget v4, p0, v5

    aget v5, p0, v6

    invoke-direct/range {v0 .. v5}, Lcyanogenmod/hardware/HSIC;-><init>(FFFFF)V

    return-object v0

    .line 89
    :cond_0
    array-length v0, p0

    if-ne v0, v6, :cond_1

    .line 90
    new-instance v0, Lcyanogenmod/hardware/HSIC;

    aget v1, p0, v2

    aget v2, p0, v3

    aget v3, p0, v4

    aget v4, p0, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcyanogenmod/hardware/HSIC;-><init>(FFFFF)V

    return-object v0

    .line 92
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static unflattenFrom(Ljava/lang/String;)Lcyanogenmod/hardware/HSIC;
    .locals 9
    .param p0, "flat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    .line 68
    const-string/jumbo v0, "\\|"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "unflat":[Ljava/lang/String;
    array-length v0, v6

    if-eq v0, v7, :cond_0

    array-length v0, v6

    if-eq v0, v8, :cond_0

    .line 70
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to unflatten HSIC values: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    new-instance v0, Lcyanogenmod/hardware/HSIC;

    const/4 v1, 0x0

    aget-object v1, v6, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v6, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 73
    const/4 v3, 0x2

    aget-object v3, v6, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v6, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 74
    array-length v5, v6

    if-ne v5, v8, :cond_1

    aget-object v5, v6, v7

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 72
    :goto_0
    invoke-direct/range {v0 .. v5}, Lcyanogenmod/hardware/HSIC;-><init>(FFFFF)V

    return-object v0

    .line 74
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public flatten()Ljava/lang/String;
    .locals 5

    .prologue
    .line 63
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%f|%f|%f|%f|%f"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcyanogenmod/hardware/HSIC;->mHue:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcyanogenmod/hardware/HSIC;->mSaturation:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 64
    iget v3, p0, Lcyanogenmod/hardware/HSIC;->mIntensity:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget v3, p0, Lcyanogenmod/hardware/HSIC;->mContrast:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget v3, p0, Lcyanogenmod/hardware/HSIC;->mSaturationThreshold:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 63
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContrast()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcyanogenmod/hardware/HSIC;->mContrast:F

    return v0
.end method

.method public getHue()F
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcyanogenmod/hardware/HSIC;->mHue:F

    return v0
.end method

.method public getIntensity()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcyanogenmod/hardware/HSIC;->mIntensity:F

    return v0
.end method

.method public getSaturation()F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcyanogenmod/hardware/HSIC;->mSaturation:F

    return v0
.end method

.method public getSaturationThreshold()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcyanogenmod/hardware/HSIC;->mSaturationThreshold:F

    return v0
.end method

.method public toFloatArray()[F
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x5

    new-array v0, v0, [F

    iget v1, p0, Lcyanogenmod/hardware/HSIC;->mHue:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcyanogenmod/hardware/HSIC;->mSaturation:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcyanogenmod/hardware/HSIC;->mIntensity:F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcyanogenmod/hardware/HSIC;->mContrast:F

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lcyanogenmod/hardware/HSIC;->mSaturationThreshold:F

    const/4 v2, 0x4

    aput v1, v0, v2

    return-object v0
.end method

.method public toRGB()[I
    .locals 4

    .prologue
    .line 78
    invoke-virtual {p0}, Lcyanogenmod/hardware/HSIC;->toFloatArray()[F

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 79
    .local v0, "c":I
    const/4 v1, 0x3

    new-array v1, v1, [I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 97
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "HSIC={ hue=%f saturation=%f intensity=%f contrast=%f saturationThreshold=%f }"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 99
    iget v3, p0, Lcyanogenmod/hardware/HSIC;->mHue:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcyanogenmod/hardware/HSIC;->mSaturation:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p0, Lcyanogenmod/hardware/HSIC;->mIntensity:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget v3, p0, Lcyanogenmod/hardware/HSIC;->mContrast:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget v3, p0, Lcyanogenmod/hardware/HSIC;->mSaturationThreshold:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 97
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 109
    invoke-virtual {p0}, Lcyanogenmod/hardware/HSIC;->toFloatArray()[F

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 108
    return-void
.end method
