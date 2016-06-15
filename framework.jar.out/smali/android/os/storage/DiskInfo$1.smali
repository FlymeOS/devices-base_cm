.class final Landroid/os/storage/DiskInfo$1;
.super Ljava/lang/Object;
.source "DiskInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/DiskInfo;
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
        "Landroid/os/storage/DiskInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/storage/DiskInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 39
    new-instance v0, Landroid/os/storage/DiskInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/os/storage/DiskInfo;-><init>(Landroid/os/Parcel;Landroid/os/storage/DiskInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Landroid/os/storage/DiskInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/storage/DiskInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/storage/DiskInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 43
    new-array v0, p1, [Landroid/os/storage/DiskInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Landroid/os/storage/DiskInfo$1;->newArray(I)[Landroid/os/storage/DiskInfo;

    move-result-object v0

    return-object v0
.end method
