.class final Lorg/codeaurora/ims/csvt/CallForwardInfoP$1;
.super Ljava/lang/Object;
.source "CallForwardInfoP.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/csvt/CallForwardInfoP;
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
        "Lorg/codeaurora/ims/csvt/CallForwardInfoP;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/csvt/CallForwardInfoP$1;->createFromParcel(Landroid/os/Parcel;)Lorg/codeaurora/ims/csvt/CallForwardInfoP;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/codeaurora/ims/csvt/CallForwardInfoP;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 65
    new-instance v0, Lorg/codeaurora/ims/csvt/CallForwardInfoP;

    invoke-direct {v0, p1}, Lorg/codeaurora/ims/csvt/CallForwardInfoP;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/csvt/CallForwardInfoP$1;->newArray(I)[Lorg/codeaurora/ims/csvt/CallForwardInfoP;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lorg/codeaurora/ims/csvt/CallForwardInfoP;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 70
    new-array v0, p1, [Lorg/codeaurora/ims/csvt/CallForwardInfoP;

    return-object v0
.end method
