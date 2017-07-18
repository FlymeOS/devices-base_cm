.class final Landroid/telecom/VideoProfile$1;
.super Ljava/lang/Object;
.source "VideoProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoProfile;
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
        "Landroid/telecom/VideoProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/VideoProfile;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 160
    .local v2, "state":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 162
    .local v1, "quality":I
    const-class v3, Landroid/telecom/VideoProfile;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 163
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    new-instance v3, Landroid/telecom/VideoProfile;

    invoke-direct {v3, v2, v1}, Landroid/telecom/VideoProfile;-><init>(II)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Landroid/telecom/VideoProfile$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/VideoProfile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telecom/VideoProfile;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 168
    new-array v0, p1, [Landroid/telecom/VideoProfile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Landroid/telecom/VideoProfile$1;->newArray(I)[Landroid/telecom/VideoProfile;

    move-result-object v0

    return-object v0
.end method
