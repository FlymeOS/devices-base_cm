.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;
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
    name = "PolicyUpdate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Other:Ljava/lang/String;

.field public Restriction:Ljava/lang/String;

.field public URI:Ljava/lang/String;

.field public UpdateInterval:Ljava/lang/String;

.field public UpdateMethod:Ljava/lang/String;

.field public trustRoot:Landroid/net/wifi/passpoint/WifiPasspointDmTree$TrustRoot;

.field public usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 474
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate$1;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate$1;-><init>()V

    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 429
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    .line 436
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$TrustRoot;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$TrustRoot;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->trustRoot:Landroid/net/wifi/passpoint/WifiPasspointDmTree$TrustRoot;

    .line 438
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    .line 436
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$TrustRoot;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$TrustRoot;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->trustRoot:Landroid/net/wifi/passpoint/WifiPasspointDmTree$TrustRoot;

    .line 442
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->readFromParcel(Landroid/os/Parcel;)V

    .line 441
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 461
    if-nez p1, :cond_0

    .line 460
    :goto_0
    return-void

    .line 464
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->UpdateInterval:Ljava/lang/String;

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->UpdateMethod:Ljava/lang/String;

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->Restriction:Ljava/lang/String;

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->URI:Ljava/lang/String;

    .line 468
    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->Other:Ljava/lang/String;

    .line 470
    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$TrustRoot;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$TrustRoot;

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->trustRoot:Landroid/net/wifi/passpoint/WifiPasspointDmTree$TrustRoot;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 450
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->UpdateInterval:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->UpdateMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->Restriction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->URI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 455
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->Other:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->trustRoot:Landroid/net/wifi/passpoint/WifiPasspointDmTree$TrustRoot;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 449
    return-void
.end method
