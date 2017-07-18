.class public final Lcyanogenmod/os/Concierge;
.super Ljava/lang/Object;
.source "Concierge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/os/Concierge$ParcelInfo;
    }
.end annotation


# static fields
.field public static final PARCELABLE_VERSION:I = 0x6


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;
    .locals 2
    .param p0, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 90
    new-instance v0, Lcyanogenmod/os/Concierge$ParcelInfo;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcyanogenmod/os/Concierge$ParcelInfo;-><init>(Landroid/os/Parcel;I)V

    return-object v0
.end method

.method public static receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 78
    new-instance v0, Lcyanogenmod/os/Concierge$ParcelInfo;

    invoke-direct {v0, p0}, Lcyanogenmod/os/Concierge$ParcelInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
