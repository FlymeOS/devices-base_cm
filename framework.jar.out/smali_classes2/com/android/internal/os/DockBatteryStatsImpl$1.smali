.class final Lcom/android/internal/os/DockBatteryStatsImpl$1;
.super Ljava/lang/Object;
.source "DockBatteryStatsImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/DockBatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/os/DockBatteryStatsImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/DockBatteryStatsImpl;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 72
    new-instance v0, Lcom/android/internal/os/DockBatteryStatsImpl;

    invoke-direct {v0, p1}, Lcom/android/internal/os/DockBatteryStatsImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/android/internal/os/DockBatteryStatsImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/DockBatteryStatsImpl;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/os/DockBatteryStatsImpl;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 76
    new-array v0, p1, [Lcom/android/internal/os/DockBatteryStatsImpl;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/android/internal/os/DockBatteryStatsImpl$1;->newArray(I)[Lcom/android/internal/os/DockBatteryStatsImpl;

    move-result-object v0

    return-object v0
.end method
