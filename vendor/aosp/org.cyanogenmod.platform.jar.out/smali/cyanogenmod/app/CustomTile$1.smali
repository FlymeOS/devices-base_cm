.class final Lcyanogenmod/app/CustomTile$1;
.super Ljava/lang/Object;
.source "CustomTile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/CustomTile;
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
        "Lcyanogenmod/app/CustomTile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/app/CustomTile;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 878
    new-instance v0, Lcyanogenmod/app/CustomTile;

    invoke-direct {v0, p1}, Lcyanogenmod/app/CustomTile;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 877
    invoke-virtual {p0, p1}, Lcyanogenmod/app/CustomTile$1;->createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/app/CustomTile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcyanogenmod/app/CustomTile;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 883
    new-array v0, p1, [Lcyanogenmod/app/CustomTile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 882
    invoke-virtual {p0, p1}, Lcyanogenmod/app/CustomTile$1;->newArray(I)[Lcyanogenmod/app/CustomTile;

    move-result-object v0

    return-object v0
.end method
