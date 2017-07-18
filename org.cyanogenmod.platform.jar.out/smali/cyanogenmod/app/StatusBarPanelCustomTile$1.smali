.class final Lcyanogenmod/app/StatusBarPanelCustomTile$1;
.super Ljava/lang/Object;
.source "StatusBarPanelCustomTile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/StatusBarPanelCustomTile;
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
        "Lcyanogenmod/app/StatusBarPanelCustomTile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/app/StatusBarPanelCustomTile;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 145
    new-instance v0, Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-direct {v0, p1}, Lcyanogenmod/app/StatusBarPanelCustomTile;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcyanogenmod/app/StatusBarPanelCustomTile$1;->createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/app/StatusBarPanelCustomTile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcyanogenmod/app/StatusBarPanelCustomTile;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 150
    new-array v0, p1, [Lcyanogenmod/app/StatusBarPanelCustomTile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcyanogenmod/app/StatusBarPanelCustomTile$1;->newArray(I)[Lcyanogenmod/app/StatusBarPanelCustomTile;

    move-result-object v0

    return-object v0
.end method
