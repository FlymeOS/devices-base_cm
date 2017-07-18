.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;
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
    name = "RequiredProtoPortTuple"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public IPProtocol:Ljava/lang/String;

.field public PortNumber:Ljava/lang/String;

.field public nodeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 574
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple$1;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple$1;-><init>()V

    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 536
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->readFromParcel(Landroid/os/Parcel;)V

    .line 550
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "nn"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;

    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->nodeName:Ljava/lang/String;

    .line 546
    iput-object p2, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->IPProtocol:Ljava/lang/String;

    .line 547
    iput-object p3, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->PortNumber:Ljava/lang/String;

    .line 544
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 555
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 565
    if-nez p1, :cond_0

    .line 564
    :goto_0
    return-void

    .line 568
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->nodeName:Ljava/lang/String;

    .line 569
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->IPProtocol:Ljava/lang/String;

    .line 570
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->PortNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 559
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->nodeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->IPProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->PortNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 558
    return-void
.end method
