.class final Landroid/net/NetworkMisc$1;
.super Ljava/lang/Object;
.source "NetworkMisc.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkMisc;
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
        "Landroid/net/NetworkMisc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkMisc;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 87
    new-instance v0, Landroid/net/NetworkMisc;

    invoke-direct {v0}, Landroid/net/NetworkMisc;-><init>()V

    .line 88
    .local v0, "networkMisc":Landroid/net/NetworkMisc;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Landroid/net/NetworkMisc;->allowBypass:Z

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Landroid/net/NetworkMisc;->explicitlySelected:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    iput-boolean v2, v0, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    .line 92
    return-object v0

    :cond_0
    move v1, v3

    .line 88
    goto :goto_0

    :cond_1
    move v1, v3

    .line 89
    goto :goto_1

    :cond_2
    move v2, v3

    .line 90
    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Landroid/net/NetworkMisc$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkMisc;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/NetworkMisc;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 97
    new-array v0, p1, [Landroid/net/NetworkMisc;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/NetworkMisc$1;->newArray(I)[Landroid/net/NetworkMisc;

    move-result-object v0

    return-object v0
.end method
