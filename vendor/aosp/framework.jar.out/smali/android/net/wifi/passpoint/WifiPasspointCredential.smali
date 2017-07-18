.class public Landroid/net/wifi/passpoint/WifiPasspointCredential;
.super Ljava/lang/Object;
.source "WifiPasspointCredential.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointCredential$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointCredential;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "PasspointCredential"


# instance fields
.field private mAaaCertUrl:Ljava/lang/String;

.field private mAaaSha256Fingerprint:Ljava/lang/String;

.field private mCaRootCert:Ljava/lang/String;

.field private mCertSha256Fingerprint:Ljava/lang/String;

.field private mCertType:Ljava/lang/String;

.field private mCheckAaaServerCertStatus:Z

.field private mClientCert:Ljava/lang/String;

.field private mCreationDate:Ljava/lang/String;

.field private mCredentialName:Ljava/lang/String;

.field private mCrednetialPriority:I

.field private mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

.field private mExpirationDate:Ljava/lang/String;

.field private mFriendlyName:Ljava/lang/String;

.field private mHomeOIList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeSpFqdn:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mInnerMethod:Ljava/lang/String;

.field private mIsMachineRemediation:Z

.field private mMaxBssLoad:Ljava/lang/String;

.field private mMcc:Ljava/lang/String;

.field private mMinBackhaulThresholdNetwork:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mMnc:Ljava/lang/String;

.field private mOtherHomePartnerList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$OtherHomePartners;",
            ">;"
        }
    .end annotation
.end field

.field private mPasswd:Ljava/lang/String;

.field private mPolicyUpdateInterval:Ljava/lang/String;

.field private mPolicyUpdateMethod:Ljava/lang/String;

.field private mPolicyUpdatePassword:Ljava/lang/String;

.field private mPolicyUpdateRestriction:Ljava/lang/String;

.field private mPolicyUpdateUri:Ljava/lang/String;

.field private mPolicyUpdateUsername:Ljava/lang/String;

.field private mPreferredRoamingPartnerList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;",
            ">;"
        }
    .end annotation
.end field

.field private mRealm:Ljava/lang/String;

.field private mRequiredProtoPortTuple:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;",
            ">;"
        }
    .end annotation
.end field

.field private mSpExclusionList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionUpdateInterval:Ljava/lang/String;

.field private mSubscriptionUpdateMethod:Ljava/lang/String;

.field private mSubscriptionUpdatePassword:Ljava/lang/String;

.field private mSubscriptionUpdateRestriction:Ljava/lang/String;

.field private mSubscriptionUpdateURI:Ljava/lang/String;

.field private mSubscriptionUpdateUsername:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private mUpdateIdentifier:Ljava/lang/String;

.field private mUserPreferred:Z

.field private mUsername:Ljava/lang/String;

.field private mWifiSpFqdn:Ljava/lang/String;

.field private mWifiTreePath:Ljava/lang/String;


# direct methods
.method static synthetic -set0(Landroid/net/wifi/passpoint/WifiPasspointCredential;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCredentialName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Landroid/net/wifi/passpoint/WifiPasspointCredential;I)I
    .locals 0

    iput p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    return p1
.end method

.method static synthetic -set2(Landroid/net/wifi/passpoint/WifiPasspointCredential;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Landroid/net/wifi/passpoint/WifiPasspointCredential;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Landroid/net/wifi/passpoint/WifiPasspointCredential;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Landroid/net/wifi/passpoint/WifiPasspointCredential;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mWifiSpFqdn:Ljava/lang/String;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 613
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointCredential$1;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointCredential$1;-><init>()V

    .line 612
    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUserPreferred:Z

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 1
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "fqdn"    # Ljava/lang/String;
    .param p3, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUserPreferred:Z

    .line 115
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    .line 116
    invoke-virtual {p3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 119
    :pswitch_0
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0, p3}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "caroot"    # Ljava/lang/String;
    .param p3, "clientcert"    # Ljava/lang/String;
    .param p4, "mcc"    # Ljava/lang/String;
    .param p5, "mnc"    # Ljava/lang/String;
    .param p6, "sp"    # Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;
    .param p7, "credinfo"    # Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUserPreferred:Z

    .line 135
    if-nez p7, :cond_0

    .line 136
    return-void

    .line 139
    :cond_0
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCaRootCert:Ljava/lang/String;

    .line 141
    iput-object p3, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mClientCert:Ljava/lang/String;

    .line 143
    iget-object v4, p6, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;->nodeName:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mWifiSpFqdn:Ljava/lang/String;

    .line 144
    iget-object v4, p6, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;->perProviderSubscription:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;->UpdateIdentifier:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUpdateIdentifier:Ljava/lang/String;

    .line 146
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->nodeName:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCredentialName:Ljava/lang/String;

    .line 147
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->homeSP:Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->otherHomePartners:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mOtherHomePartnerList:Ljava/util/Collection;

    .line 149
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->aAAServerTrustRoot:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 150
    .local v3, "set":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 151
    .local v2, "i":Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 152
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 153
    .local v1, "entry3":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;

    .line 154
    .local v0, "aaa":Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;
    iget-object v4, v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->CertURL:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mAaaCertUrl:Ljava/lang/String;

    .line 155
    iget-object v4, v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->CertSHA256Fingerprint:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mAaaSha256Fingerprint:Ljava/lang/String;

    .line 158
    .end local v0    # "aaa":Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;
    .end local v1    # "entry3":Ljava/util/Map$Entry;
    :cond_1
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->digitalCertificate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;->CertificateType:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCertType:Ljava/lang/String;

    .line 159
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->digitalCertificate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;->CertSHA256Fingerprint:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCertSha256Fingerprint:Ljava/lang/String;

    .line 160
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Username:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUsername:Ljava/lang/String;

    .line 161
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Password:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPasswd:Ljava/lang/String;

    .line 162
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    iget-boolean v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->MachineManaged:Z

    iput-boolean v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mIsMachineRemediation:Z

    .line 163
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->eAPMethod:Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->InnerMethod:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mInnerMethod:Ljava/lang/String;

    .line 164
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->sim:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;->IMSI:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mImsi:Ljava/lang/String;

    .line 165
    iput-object p4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMcc:Ljava/lang/String;

    .line 166
    iput-object p5, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMnc:Ljava/lang/String;

    .line 167
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->CreationDate:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCreationDate:Ljava/lang/String;

    .line 168
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->ExpirationDate:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mExpirationDate:Ljava/lang/String;

    .line 169
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->Realm:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    .line 171
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credentialPriority:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 172
    const/16 v4, 0x80

    iput v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    .line 177
    :goto_0
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->homeSP:Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->FQDN:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    .line 179
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;->UpdateInterval:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateInterval:Ljava/lang/String;

    .line 180
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;->UpdateMethod:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateMethod:Ljava/lang/String;

    .line 181
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;->Restriction:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateRestriction:Ljava/lang/String;

    .line 182
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;->URI:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateURI:Ljava/lang/String;

    .line 183
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Username:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateUsername:Ljava/lang/String;

    .line 184
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Password:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdatePassword:Ljava/lang/String;

    .line 186
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->URI:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateUri:Ljava/lang/String;

    .line 187
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->UpdateInterval:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateInterval:Ljava/lang/String;

    .line 188
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Username:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateUsername:Ljava/lang/String;

    .line 189
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Password:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdatePassword:Ljava/lang/String;

    .line 190
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->Restriction:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateRestriction:Ljava/lang/String;

    .line 191
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->UpdateMethod:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateMethod:Ljava/lang/String;

    .line 192
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->preferredRoamingPartnerList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPreferredRoamingPartnerList:Ljava/util/Collection;

    .line 193
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->minBackhaulThreshold:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMinBackhaulThresholdNetwork:Ljava/util/Collection;

    .line 194
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->requiredProtoPortTuple:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRequiredProtoPortTuple:Ljava/util/Collection;

    .line 195
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->maximumBSSLoadValue:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMaxBssLoad:Ljava/lang/String;

    .line 196
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->sPExclusionList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSpExclusionList:Ljava/util/Collection;

    .line 198
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->homeSP:Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->homeOIList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeOIList:Ljava/util/Collection;

    .line 199
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->homeSP:Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->FriendlyName:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mFriendlyName:Ljava/lang/String;

    .line 200
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    iget-boolean v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->CheckAAAServerCertStatus:Z

    iput-boolean v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCheckAaaServerCertStatus:Z

    .line 133
    return-void

    .line 174
    :cond_2
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credentialPriority:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    goto/16 :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/net/wifi/passpoint/WifiPasspointCredential;)I
    .locals 2
    .param p1, "another"    # Landroid/net/wifi/passpoint/WifiPasspointCredential;

    .prologue
    .line 634
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    iget v1, p1, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    if-ge v0, v1, :cond_0

    .line 635
    const/4 v0, -0x1

    return v0

    .line 636
    :cond_0
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    iget v1, p1, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    if-ne v0, v1, :cond_1

    .line 637
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 639
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 482
    const/4 v1, 0x0

    .line 483
    .local v1, "result":Z
    instance-of v2, p1, Landroid/net/wifi/passpoint/WifiPasspointCredential;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 484
    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;

    .line 485
    .local v0, "other":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 486
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    const-string/jumbo v3, "TTLS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUsername:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUsername:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 488
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPasswd:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPasswd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 487
    if-eqz v2, :cond_3

    .line 489
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 487
    if-eqz v2, :cond_3

    .line 490
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 492
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    const-string/jumbo v3, "TLS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 493
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 494
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 493
    if-eqz v2, :cond_4

    .line 495
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mClientCert:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mClientCert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 497
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    const-string/jumbo v3, "SIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 498
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMcc:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMcc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 499
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMnc:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMnc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 498
    if-eqz v2, :cond_5

    .line 500
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mImsi:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 498
    if-eqz v2, :cond_5

    .line 501
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 505
    .end local v0    # "other":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    :cond_2
    :goto_2
    return v1

    .line 487
    .restart local v0    # "other":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    .restart local v1    # "result":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 493
    .end local v1    # "result":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_1

    .line 498
    .end local v1    # "result":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_2
.end method

.method public getAaaCertUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mAaaCertUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAaaSha256Fingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mAaaSha256Fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public getBackhaulThresholdList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMinBackhaulThresholdNetwork:Ljava/util/Collection;

    return-object v0
.end method

.method public getCaRootCertPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCaRootCert:Ljava/lang/String;

    return-object v0
.end method

.method public getCertSha256Fingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCertSha256Fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public getCertType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCertType:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckAaaServerCertStatus()Z
    .locals 1

    .prologue
    .line 471
    iget-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCheckAaaServerCertStatus:Z

    return v0
.end method

.method public getClientCertPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mClientCert:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCreationDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCredName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCredentialName:Ljava/lang/String;

    return-object v0
.end method

.method public getEnterpriseConfig()Landroid/net/wifi/WifiEnterpriseConfig;
    .locals 2

    .prologue
    .line 239
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    return-object v0
.end method

.method public getExpirationDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mExpirationDate:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeOiList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeOIList:Ljava/util/Collection;

    return-object v0
.end method

.method public getHomeSpFqdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMachineRemediation()Z
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mIsMachineRemediation:Z

    return v0
.end method

.method public getMaxBssLoad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMaxBssLoad:Ljava/lang/String;

    return-object v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMcc:Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMnc:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherHomePartnerList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$OtherHomePartners;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mOtherHomePartnerList:Ljava/util/Collection;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPasswd:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyUpdateInterval()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateInterval:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyUpdateMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyUpdatePassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdatePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyUpdateRestriction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateRestriction:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyUpdateUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyUpdateUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredRoamingPartnerList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPreferredRoamingPartnerList:Ljava/util/Collection;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUserPreferred:Z

    if-eqz v0, :cond_0

    .line 316
    const/4 v0, 0x0

    return v0

    .line 319
    :cond_0
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    return v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredProtoPortList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRequiredProtoPortTuple:Ljava/util/Collection;

    return-object v0
.end method

.method public getSPExclusionList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSpExclusionList:Ljava/util/Collection;

    return-object v0
.end method

.method public getSubscriptionUpdateInterval()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateInterval:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionUpdatePassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdatePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionUpdateRestriction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateRestriction:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionUpdateURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateURI:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionUpdateUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUpdateIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPreference()Z
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUserPreferred:Z

    return v0
.end method

.method public getWifiSpFqdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mWifiSpFqdn:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 646
    const/16 v0, 0xd0

    .line 647
    .local v0, "hash":I
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 648
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0xd0

    .line 650
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 651
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 653
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 654
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 656
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUsername:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 657
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUsername:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 659
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPasswd:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 660
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPasswd:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 663
    :cond_4
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 603
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mWifiSpFqdn:Ljava/lang/String;

    .line 604
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCredentialName:Ljava/lang/String;

    .line 605
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    .line 606
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    .line 607
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    .line 608
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    .line 602
    return-void
.end method

.method public setEnterpriseConfig(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    .line 247
    return-void
.end method

.method public setExpirationDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "expirationdate"    # Ljava/lang/String;

    .prologue
    .line 396
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mExpirationDate:Ljava/lang/String;

    .line 395
    return-void
.end method

.method public setHomeFqdn(Ljava/lang/String;)V
    .locals 0
    .param p1, "fqdn"    # Ljava/lang/String;

    .prologue
    .line 335
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0
    .param p1, "realm"    # Ljava/lang/String;

    .prologue
    .line 310
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public setUpdateMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateMethod:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setUserPreference(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 476
    iput-boolean p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUserPreferred:Z

    .line 475
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 511
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 512
    .local v9, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v6, "<none>"

    .line 517
    .local v6, "none":Ljava/lang/String;
    const-string/jumbo v10, ", UpdateIdentifier: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 518
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUpdateIdentifier:Ljava/lang/String;

    if-nez v10, :cond_0

    move-object v10, v6

    .line 517
    :goto_0
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 519
    const-string/jumbo v11, ", SubscriptionUpdateMethod: "

    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 520
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateMethod:Ljava/lang/String;

    if-nez v10, :cond_1

    move-object v10, v6

    .line 517
    :goto_1
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 521
    const-string/jumbo v11, ", Type: "

    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 521
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    if-nez v10, :cond_2

    move-object v10, v6

    .line 517
    :goto_2
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 522
    const-string/jumbo v11, ", Username: "

    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 522
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUsername:Ljava/lang/String;

    if-nez v10, :cond_3

    move-object v10, v6

    .line 517
    :goto_3
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 523
    const-string/jumbo v11, ", Passwd: "

    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 523
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPasswd:Ljava/lang/String;

    if-nez v10, :cond_4

    move-object v10, v6

    .line 517
    :goto_4
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 524
    const-string/jumbo v11, ", SubDMAccUsername: "

    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 525
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateUsername:Ljava/lang/String;

    if-nez v10, :cond_5

    move-object v10, v6

    .line 517
    :goto_5
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 526
    const-string/jumbo v11, ", SubDMAccPassword: "

    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 527
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdatePassword:Ljava/lang/String;

    if-nez v10, :cond_6

    move-object v10, v6

    .line 517
    :goto_6
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 528
    const-string/jumbo v11, ", PolDMAccUsername: "

    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 529
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateUsername:Ljava/lang/String;

    if-nez v10, :cond_7

    move-object v10, v6

    .line 517
    :goto_7
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 530
    const-string/jumbo v11, ", PolDMAccPassword: "

    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 531
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdatePassword:Ljava/lang/String;

    if-nez v10, :cond_8

    move-object v10, v6

    .line 517
    :goto_8
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 532
    const-string/jumbo v11, ", Imsi: "

    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 532
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mImsi:Ljava/lang/String;

    if-nez v10, :cond_9

    move-object v10, v6

    .line 517
    :goto_9
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 533
    const-string/jumbo v11, ", Mcc: "

    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 533
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMcc:Ljava/lang/String;

    if-nez v10, :cond_a

    move-object v10, v6

    .line 517
    :goto_a
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 534
    const-string/jumbo v11, ", Mnc: "

    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 534
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMnc:Ljava/lang/String;

    if-nez v10, :cond_b

    move-object v10, v6

    .line 517
    :goto_b
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 535
    const-string/jumbo v11, ", CaRootCert: "

    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 535
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCaRootCert:Ljava/lang/String;

    if-nez v10, :cond_c

    move-object v10, v6

    .line 517
    :goto_c
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 536
    const-string/jumbo v11, ", Realm: "

    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 536
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    if-nez v10, :cond_d

    move-object v10, v6

    .line 517
    :goto_d
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 537
    const-string/jumbo v11, ", Priority: "

    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 537
    iget v11, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 538
    const-string/jumbo v11, ", Fqdn: "

    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 538
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    if-nez v10, :cond_e

    move-object v10, v6

    .line 517
    :goto_e
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 539
    const-string/jumbo v11, ", Otherhomepartners: "

    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 540
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mOtherHomePartnerList:Ljava/util/Collection;

    if-nez v10, :cond_f

    move-object v10, v6

    .line 517
    :goto_f
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 541
    const-string/jumbo v11, ", ExpirationDate: "

    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 542
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mExpirationDate:Ljava/lang/String;

    if-nez v10, :cond_10

    move-object v10, v6

    .line 517
    :goto_10
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 543
    const-string/jumbo v11, ", MaxBssLoad: "

    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 543
    iget-object v11, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMaxBssLoad:Ljava/lang/String;

    if-nez v11, :cond_11

    .line 517
    .end local v6    # "none":Ljava/lang/String;
    :goto_11
    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 544
    const-string/jumbo v11, ", SPExclusionList: "

    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 544
    iget-object v11, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSpExclusionList:Ljava/util/Collection;

    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 546
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPreferredRoamingPartnerList:Ljava/util/Collection;

    if-eqz v10, :cond_12

    .line 547
    const-string/jumbo v10, "PreferredRoamingPartnerList:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 548
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPreferredRoamingPartnerList:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "prpListItem$iterator":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;

    .line 549
    .local v7, "prpListItem":Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;
    const-string/jumbo v10, "[fqdnmatch:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    iget-object v11, v7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;->FQDN_Match:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 550
    const-string/jumbo v11, ", priority:"

    .line 549
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 550
    iget-object v11, v7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;->Priority:Ljava/lang/String;

    .line 549
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 551
    const-string/jumbo v11, ", country:"

    .line 549
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 551
    iget-object v11, v7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;->Country:Ljava/lang/String;

    .line 549
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 551
    const-string/jumbo v11, "]"

    .line 549
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_12

    .line 518
    .end local v7    # "prpListItem":Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;
    .end local v8    # "prpListItem$iterator":Ljava/util/Iterator;
    .restart local v6    # "none":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUpdateIdentifier:Ljava/lang/String;

    goto/16 :goto_0

    .line 520
    :cond_1
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateMethod:Ljava/lang/String;

    goto/16 :goto_1

    .line 521
    :cond_2
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    goto/16 :goto_2

    .line 522
    :cond_3
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUsername:Ljava/lang/String;

    goto/16 :goto_3

    .line 523
    :cond_4
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPasswd:Ljava/lang/String;

    goto/16 :goto_4

    .line 525
    :cond_5
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateUsername:Ljava/lang/String;

    goto/16 :goto_5

    .line 527
    :cond_6
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdatePassword:Ljava/lang/String;

    goto/16 :goto_6

    .line 529
    :cond_7
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateUsername:Ljava/lang/String;

    goto/16 :goto_7

    .line 531
    :cond_8
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdatePassword:Ljava/lang/String;

    goto/16 :goto_8

    .line 532
    :cond_9
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mImsi:Ljava/lang/String;

    goto/16 :goto_9

    .line 533
    :cond_a
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMcc:Ljava/lang/String;

    goto/16 :goto_a

    .line 534
    :cond_b
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMnc:Ljava/lang/String;

    goto/16 :goto_b

    .line 535
    :cond_c
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCaRootCert:Ljava/lang/String;

    goto/16 :goto_c

    .line 536
    :cond_d
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    goto/16 :goto_d

    .line 538
    :cond_e
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    goto/16 :goto_e

    .line 540
    :cond_f
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mOtherHomePartnerList:Ljava/util/Collection;

    goto/16 :goto_f

    .line 542
    :cond_10
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mExpirationDate:Ljava/lang/String;

    goto/16 :goto_10

    .line 543
    :cond_11
    iget-object v6, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMaxBssLoad:Ljava/lang/String;

    goto/16 :goto_11

    .line 555
    .end local v6    # "none":Ljava/lang/String;
    :cond_12
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeOIList:Ljava/util/Collection;

    if-eqz v10, :cond_13

    .line 556
    const-string/jumbo v10, "HomeOIList:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 557
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeOIList:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "HomeOIListItem$iterator":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;

    .line 558
    .local v2, "HomeOIListItem":Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;
    const-string/jumbo v10, "[HomeOI:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    iget-object v11, v2, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;->HomeOI:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 559
    const-string/jumbo v11, ", HomeOIRequired:"

    .line 558
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 559
    iget-boolean v11, v2, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;->HomeOIRequired:Z

    .line 558
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 560
    const-string/jumbo v11, "]"

    .line 558
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13

    .line 564
    .end local v2    # "HomeOIListItem":Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;
    .end local v3    # "HomeOIListItem$iterator":Ljava/util/Iterator;
    :cond_13
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMinBackhaulThresholdNetwork:Ljava/util/Collection;

    if-eqz v10, :cond_14

    .line 565
    const-string/jumbo v10, "BackHaulThreshold:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 566
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMinBackhaulThresholdNetwork:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "BhtListItem$iterator":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;

    .line 567
    .local v0, "BhtListItem":Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;
    const-string/jumbo v10, "[networkType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    iget-object v11, v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;->NetworkType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 568
    const-string/jumbo v11, ", dlBandwidth:"

    .line 567
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 568
    iget-object v11, v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;->DLBandwidth:Ljava/lang/String;

    .line 567
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 569
    const-string/jumbo v11, ", ulBandwidth:"

    .line 567
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 569
    iget-object v11, v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;->ULBandwidth:Ljava/lang/String;

    .line 567
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 570
    const-string/jumbo v11, "]"

    .line 567
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14

    .line 574
    .end local v0    # "BhtListItem":Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;
    .end local v1    # "BhtListItem$iterator":Ljava/util/Iterator;
    :cond_14
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRequiredProtoPortTuple:Ljava/util/Collection;

    if-eqz v10, :cond_15

    .line 575
    const-string/jumbo v10, "WifiMORequiredProtoPortTupleList:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 576
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRequiredProtoPortTuple:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "RpptListItem$iterator":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;

    .line 577
    .local v4, "RpptListItem":Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;
    const-string/jumbo v10, "[IPProtocol:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    iget-object v11, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->IPProtocol:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 578
    const-string/jumbo v11, ", PortNumber:"

    .line 577
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 578
    iget-object v11, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->PortNumber:Ljava/lang/String;

    .line 577
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 579
    const-string/jumbo v11, "]"

    .line 577
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 583
    .end local v4    # "RpptListItem":Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;
    .end local v5    # "RpptListItem$iterator":Ljava/util/Iterator;
    :cond_15
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 593
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mWifiSpFqdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCredentialName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 596
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 592
    return-void
.end method
