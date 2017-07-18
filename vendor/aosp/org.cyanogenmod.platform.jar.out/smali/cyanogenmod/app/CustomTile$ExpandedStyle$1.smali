.class final Lcyanogenmod/app/CustomTile$ExpandedStyle$1;
.super Ljava/lang/Object;
.source "CustomTile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/CustomTile$ExpandedStyle;
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
        "Lcyanogenmod/app/CustomTile$ExpandedStyle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/app/CustomTile$ExpandedStyle;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 511
    new-instance v0, Lcyanogenmod/app/CustomTile$ExpandedStyle;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcyanogenmod/app/CustomTile$ExpandedStyle;-><init>(Landroid/os/Parcel;Lcyanogenmod/app/CustomTile$ExpandedStyle;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 510
    invoke-virtual {p0, p1}, Lcyanogenmod/app/CustomTile$ExpandedStyle$1;->createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/app/CustomTile$ExpandedStyle;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcyanogenmod/app/CustomTile$ExpandedStyle;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 516
    new-array v0, p1, [Lcyanogenmod/app/CustomTile$ExpandedStyle;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 515
    invoke-virtual {p0, p1}, Lcyanogenmod/app/CustomTile$ExpandedStyle$1;->newArray(I)[Lcyanogenmod/app/CustomTile$ExpandedStyle;

    move-result-object v0

    return-object v0
.end method
