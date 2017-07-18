.class final Lcyanogenmod/app/LiveLockScreenInfo$1;
.super Ljava/lang/Object;
.source "LiveLockScreenInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/LiveLockScreenInfo;
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
        "Lcyanogenmod/app/LiveLockScreenInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/app/LiveLockScreenInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 150
    new-instance v0, Lcyanogenmod/app/LiveLockScreenInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcyanogenmod/app/LiveLockScreenInfo;-><init>(Landroid/os/Parcel;Lcyanogenmod/app/LiveLockScreenInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcyanogenmod/app/LiveLockScreenInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/app/LiveLockScreenInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcyanogenmod/app/LiveLockScreenInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 155
    const/4 v0, 0x0

    new-array v0, v0, [Lcyanogenmod/app/LiveLockScreenInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcyanogenmod/app/LiveLockScreenInfo$1;->newArray(I)[Lcyanogenmod/app/LiveLockScreenInfo;

    move-result-object v0

    return-object v0
.end method
