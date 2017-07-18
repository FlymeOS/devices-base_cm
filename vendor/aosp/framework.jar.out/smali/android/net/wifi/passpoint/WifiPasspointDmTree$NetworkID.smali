.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;
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
    name = "NetworkID"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public HESSID:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public nodeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 976
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID$1;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID$1;-><init>()V

    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 938
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 953
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;->readFromParcel(Landroid/os/Parcel;)V

    .line 952
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "nn"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "h"    # Ljava/lang/String;

    .prologue
    .line 943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 944
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;->nodeName:Ljava/lang/String;

    .line 945
    iput-object p2, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;->SSID:Ljava/lang/String;

    .line 946
    iput-object p3, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;->HESSID:Ljava/lang/String;

    .line 943
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 957
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 967
    if-nez p1, :cond_0

    .line 966
    :goto_0
    return-void

    .line 970
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;->nodeName:Ljava/lang/String;

    .line 971
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;->SSID:Ljava/lang/String;

    .line 972
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;->HESSID:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 961
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;->nodeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 962
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 963
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;->HESSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 960
    return-void
.end method
