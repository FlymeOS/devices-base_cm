.class public Landroid/net/NetworkMisc;
.super Ljava/lang/Object;
.source "NetworkMisc.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkMisc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allowBypass:Z

.field public explicitlySelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Landroid/net/NetworkMisc$1;

    invoke-direct {v0}, Landroid/net/NetworkMisc$1;-><init>()V

    sput-object v0, Landroid/net/NetworkMisc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkMisc;)V
    .locals 1
    .param p1, "nm"    # Landroid/net/NetworkMisc;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-eqz p1, :cond_0

    .line 49
    iget-boolean v0, p1, Landroid/net/NetworkMisc;->allowBypass:Z

    iput-boolean v0, p0, Landroid/net/NetworkMisc;->allowBypass:Z

    .line 50
    iget-boolean v0, p1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    iput-boolean v0, p0, Landroid/net/NetworkMisc;->explicitlySelected:Z

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    iget-boolean v0, p0, Landroid/net/NetworkMisc;->allowBypass:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-boolean v0, p0, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return-void

    :cond_0
    move v0, v2

    .line 61
    goto :goto_0

    :cond_1
    move v1, v2

    .line 62
    goto :goto_1
.end method
