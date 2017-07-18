.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;
.super Ljava/lang/Object;
.source "WifiPasspointDmTree.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/WifiPasspointDmTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeOIList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public HomeOI:Ljava/lang/String;

.field public HomeOIRequired:Z

.field public nodeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1029
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList$1;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList$1;-><init>()V

    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 991
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1006
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;->readFromParcel(Landroid/os/Parcel;)V

    .line 1005
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "nn"    # Ljava/lang/String;
    .param p2, "h"    # Ljava/lang/String;
    .param p3, "r"    # Z

    .prologue
    .line 996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 997
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;->nodeName:Ljava/lang/String;

    .line 998
    iput-object p2, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;->HomeOI:Ljava/lang/String;

    .line 999
    iput-boolean p3, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;->HomeOIRequired:Z

    .line 996
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1010
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 1020
    if-nez p1, :cond_0

    .line 1019
    :goto_0
    return-void

    .line 1023
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;->nodeName:Ljava/lang/String;

    .line 1024
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;->HomeOI:Ljava/lang/String;

    .line 1025
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_1
    iput-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;->HomeOIRequired:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1014
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;->nodeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1015
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;->HomeOI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1016
    iget-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;->HomeOIRequired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1013
    return-void

    .line 1016
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
