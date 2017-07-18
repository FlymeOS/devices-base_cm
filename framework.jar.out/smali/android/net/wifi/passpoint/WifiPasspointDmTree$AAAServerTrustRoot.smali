.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;
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
    name = "AAAServerTrustRoot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public CertSHA256Fingerprint:Ljava/lang/String;

.field public CertURL:Ljava/lang/String;

.field public nodeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 626
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot$1;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot$1;-><init>()V

    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 588
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->readFromParcel(Landroid/os/Parcel;)V

    .line 602
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "nn"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "fp"    # Ljava/lang/String;

    .prologue
    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->nodeName:Ljava/lang/String;

    .line 595
    iput-object p2, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->CertURL:Ljava/lang/String;

    .line 596
    iput-object p3, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->CertSHA256Fingerprint:Ljava/lang/String;

    .line 593
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 617
    if-nez p1, :cond_0

    .line 616
    :goto_0
    return-void

    .line 620
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->nodeName:Ljava/lang/String;

    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->CertURL:Ljava/lang/String;

    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->CertSHA256Fingerprint:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 611
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->nodeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->CertURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->CertSHA256Fingerprint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 610
    return-void
.end method
