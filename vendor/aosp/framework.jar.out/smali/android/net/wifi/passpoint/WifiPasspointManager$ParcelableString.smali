.class public Landroid/net/wifi/passpoint/WifiPasspointManager$ParcelableString;
.super Ljava/lang/Object;
.source "WifiPasspointManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/WifiPasspointManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParcelableString"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointManager$ParcelableString$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointManager$ParcelableString;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 368
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointManager$ParcelableString$1;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointManager$ParcelableString$1;-><init>()V

    .line 367
    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointManager$ParcelableString;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 354
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 364
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$ParcelableString;->string:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 363
    return-void
.end method
