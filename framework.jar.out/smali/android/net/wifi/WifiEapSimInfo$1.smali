.class final Landroid/net/wifi/WifiEapSimInfo$1;
.super Ljava/lang/Object;
.source "WifiEapSimInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiEapSimInfo;
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
        "Landroid/net/wifi/WifiEapSimInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiEapSimInfo;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 168
    new-instance v2, Landroid/net/wifi/WifiEapSimInfo;

    invoke-direct {v2}, Landroid/net/wifi/WifiEapSimInfo;-><init>()V

    .line 169
    .local v2, "mWifiEapSimInfo":Landroid/net/wifi/WifiEapSimInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/net/wifi/WifiEapSimInfo;->mNumOfSims:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "count":I
    move v1, v0

    .line 172
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    if-lez v1, :cond_0

    .line 173
    iget-object v3, v2, Landroid/net/wifi/WifiEapSimInfo;->mSimTypes:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 175
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_0
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEapSimInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiEapSimInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiEapSimInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 179
    new-array v0, p1, [Landroid/net/wifi/WifiEapSimInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEapSimInfo$1;->newArray(I)[Landroid/net/wifi/WifiEapSimInfo;

    move-result-object v0

    return-object v0
.end method
