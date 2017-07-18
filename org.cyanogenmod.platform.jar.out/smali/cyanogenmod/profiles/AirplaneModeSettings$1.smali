.class final Lcyanogenmod/profiles/AirplaneModeSettings$1;
.super Ljava/lang/Object;
.source "AirplaneModeSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/profiles/AirplaneModeSettings;
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
        "Lcyanogenmod/profiles/AirplaneModeSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/profiles/AirplaneModeSettings;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 54
    new-instance v0, Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-direct {v0, p1}, Lcyanogenmod/profiles/AirplaneModeSettings;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcyanogenmod/profiles/AirplaneModeSettings$1;->createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/profiles/AirplaneModeSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcyanogenmod/profiles/AirplaneModeSettings;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 59
    new-array v0, p1, [Lcyanogenmod/profiles/AirplaneModeSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcyanogenmod/profiles/AirplaneModeSettings$1;->newArray(I)[Lcyanogenmod/profiles/AirplaneModeSettings;

    move-result-object v0

    return-object v0
.end method
