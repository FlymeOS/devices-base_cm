.class final Lcyanogenmod/app/ProfileGroup$1;
.super Ljava/lang/Object;
.source "ProfileGroup.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/ProfileGroup;
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
        "Lcyanogenmod/app/ProfileGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/app/ProfileGroup;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 70
    new-instance v0, Lcyanogenmod/app/ProfileGroup;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcyanogenmod/app/ProfileGroup;-><init>(Landroid/os/Parcel;Lcyanogenmod/app/ProfileGroup;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcyanogenmod/app/ProfileGroup$1;->createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/app/ProfileGroup;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcyanogenmod/app/ProfileGroup;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 75
    new-array v0, p1, [Lcyanogenmod/app/ProfileGroup;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcyanogenmod/app/ProfileGroup$1;->newArray(I)[Lcyanogenmod/app/ProfileGroup;

    move-result-object v0

    return-object v0
.end method
