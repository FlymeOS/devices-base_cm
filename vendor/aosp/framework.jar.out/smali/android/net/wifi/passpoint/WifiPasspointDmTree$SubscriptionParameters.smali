.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;
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
    name = "SubscriptionParameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public CreationDate:Ljava/lang/String;

.field public ExpirationDate:Ljava/lang/String;

.field public TypeOfSubscription:Ljava/lang/String;

.field public usageLimits:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1128
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters$1;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters$1;-><init>()V

    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1093
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1099
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1097
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;->usageLimits:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;

    .line 1099
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1097
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;->usageLimits:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;

    .line 1103
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;->readFromParcel(Landroid/os/Parcel;)V

    .line 1102
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1107
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1118
    if-nez p1, :cond_0

    .line 1117
    :goto_0
    return-void

    .line 1121
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;->CreationDate:Ljava/lang/String;

    .line 1122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;->ExpirationDate:Ljava/lang/String;

    .line 1123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;->TypeOfSubscription:Ljava/lang/String;

    .line 1124
    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;->usageLimits:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1111
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;->CreationDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1112
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;->ExpirationDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1113
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;->TypeOfSubscription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1114
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;->usageLimits:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1110
    return-void
.end method
