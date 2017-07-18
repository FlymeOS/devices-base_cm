.class final Lcyanogenmod/profiles/ConnectionSettings$1;
.super Ljava/lang/Object;
.source "ConnectionSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/profiles/ConnectionSettings;
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
        "Lcyanogenmod/profiles/ConnectionSettings;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/profiles/ConnectionSettings;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 149
    new-instance v0, Lcyanogenmod/profiles/ConnectionSettings;

    invoke-direct {v0, p1}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcyanogenmod/profiles/ConnectionSettings$1;->createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/profiles/ConnectionSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcyanogenmod/profiles/ConnectionSettings;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 154
    new-array v0, p1, [Lcyanogenmod/profiles/ConnectionSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcyanogenmod/profiles/ConnectionSettings$1;->newArray(I)[Lcyanogenmod/profiles/ConnectionSettings;

    move-result-object v0

    return-object v0
.end method
