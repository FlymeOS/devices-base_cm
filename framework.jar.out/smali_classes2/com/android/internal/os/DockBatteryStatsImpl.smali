.class public final Lcom/android/internal/os/DockBatteryStatsImpl;
.super Lcom/android/internal/os/BatteryStatsImpl;
.source "DockBatteryStatsImpl.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/os/DockBatteryStatsImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static sKernelWakelockUpdateVersion:I

.field private static sNumSpeedSteps:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/os/DockBatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    .line 69
    new-instance v0, Lcom/android/internal/os/DockBatteryStatsImpl$1;

    invoke-direct {v0}, Lcom/android/internal/os/DockBatteryStatsImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/DockBatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Landroid/os/Parcel;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .locals 0
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getCpuSpeedSteps()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/android/internal/os/DockBatteryStatsImpl;->sNumSpeedSteps:I

    return v0
.end method

.method protected getKernelWakelockUpdateVersion()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/android/internal/os/DockBatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    return v0
.end method

.method protected getLogName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "DockBatteryStats"

    return-object v0
.end method

.method protected getStatsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "dockbatterystats"

    return-object v0
.end method

.method protected setCpuSpeedSteps(I)V
    .locals 0
    .param p1, "numSpeedSteps"    # I

    .prologue
    .line 56
    sput p1, Lcom/android/internal/os/DockBatteryStatsImpl;->sNumSpeedSteps:I

    .line 57
    return-void
.end method

.method protected setKernelWakelockUpdateVersion(I)V
    .locals 0
    .param p1, "kernelWakelockUpdateVersion"    # I

    .prologue
    .line 66
    sput p1, Lcom/android/internal/os/DockBatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    .line 67
    return-void
.end method
