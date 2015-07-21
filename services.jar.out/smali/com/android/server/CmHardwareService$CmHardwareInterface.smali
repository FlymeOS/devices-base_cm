.class interface abstract Lcom/android/server/CmHardwareService$CmHardwareInterface;
.super Ljava/lang/Object;
.source "CmHardwareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CmHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "CmHardwareInterface"
.end annotation


# virtual methods
.method public abstract get(I)Z
.end method

.method public abstract getDisplayColorCalibration()[I
.end method

.method public abstract getDisplayGammaCalibration(I)[I
.end method

.method public abstract getLtoDestination()Ljava/lang/String;
.end method

.method public abstract getLtoDownloadInterval()J
.end method

.method public abstract getLtoSource()Ljava/lang/String;
.end method

.method public abstract getNumGammaControls()I
.end method

.method public abstract getSerialNumber()Ljava/lang/String;
.end method

.method public abstract getSupportedFeatures()I
.end method

.method public abstract getVibratorIntensity()[I
.end method

.method public abstract requireAdaptiveBacklightForSunlightEnhancement()Z
.end method

.method public abstract set(IZ)Z
.end method

.method public abstract setDisplayColorCalibration([I)Z
.end method

.method public abstract setDisplayGammaCalibration(I[I)Z
.end method

.method public abstract setVibratorIntensity(I)Z
.end method
