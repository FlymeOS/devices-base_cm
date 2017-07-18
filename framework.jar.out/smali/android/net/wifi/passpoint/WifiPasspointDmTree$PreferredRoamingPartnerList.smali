.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;
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
    name = "PreferredRoamingPartnerList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Country:Ljava/lang/String;

.field public FQDN_Match:Ljava/lang/String;

.field public Priority:Ljava/lang/String;

.field public nodeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 358
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList$1;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList$1;-><init>()V

    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 316
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;->readFromParcel(Landroid/os/Parcel;)V

    .line 332
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "nn"    # Ljava/lang/String;
    .param p2, "f"    # Ljava/lang/String;
    .param p3, "p"    # Ljava/lang/String;
    .param p4, "c"    # Ljava/lang/String;

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;->nodeName:Ljava/lang/String;

    .line 324
    iput-object p2, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;->FQDN_Match:Ljava/lang/String;

    .line 325
    iput-object p3, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;->Priority:Ljava/lang/String;

    .line 326
    iput-object p4, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;->Country:Ljava/lang/String;

    .line 322
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 348
    if-nez p1, :cond_0

    .line 347
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;->nodeName:Ljava/lang/String;

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;->FQDN_Match:Ljava/lang/String;

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;->Priority:Ljava/lang/String;

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;->Country:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 341
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;->nodeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;->FQDN_Match:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;->Priority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;->Country:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    return-void
.end method
