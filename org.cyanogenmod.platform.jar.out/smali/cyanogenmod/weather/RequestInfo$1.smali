.class final Lcyanogenmod/weather/RequestInfo$1;
.super Ljava/lang/Object;
.source "RequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/RequestInfo;
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
        "Lcyanogenmod/weather/RequestInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/weather/RequestInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 288
    new-instance v0, Lcyanogenmod/weather/RequestInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcyanogenmod/weather/RequestInfo;-><init>(Landroid/os/Parcel;Lcyanogenmod/weather/RequestInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcyanogenmod/weather/RequestInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/weather/RequestInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcyanogenmod/weather/RequestInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 293
    new-array v0, p1, [Lcyanogenmod/weather/RequestInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lcyanogenmod/weather/RequestInfo$1;->newArray(I)[Lcyanogenmod/weather/RequestInfo;

    move-result-object v0

    return-object v0
.end method
