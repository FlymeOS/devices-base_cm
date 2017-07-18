.class public Lcom/android/server/wifi/hotspot2/pps/Credential;
.super Ljava/lang/Object;
.source "Credential.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;
    }
.end annotation


# static fields
.field public static final CertTypeIEEE:Ljava/lang/String; = "802.1ar"

.field public static final CertTypeX509:Ljava/lang/String; = "x509v3"


# instance fields
.field private final mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

.field private final mCheckAAACert:Z

.field private final mCtime:J

.field private final mDisregardPassword:Z

.field private final mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

.field private final mExpTime:J

.field private final mFingerPrint:[B

.field private final mImsi:Lcom/android/server/wifi/IMSIParameter;

.field private final mMachineManaged:Z

.field private final mPassword:Ljava/lang/String;

.field private final mRealm:Ljava/lang/String;

.field private final mSTokenApp:Ljava/lang/String;

.field private final mShare:Z

.field private final mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Lcom/android/server/wifi/IMSIParameter;)V
    .locals 3
    .param p1, "ctime"    # J
    .param p3, "expTime"    # J
    .param p5, "realm"    # Ljava/lang/String;
    .param p6, "checkAAACert"    # Z
    .param p7, "eapMethod"    # Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .param p8, "imsi"    # Lcom/android/server/wifi/IMSIParameter;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-wide p1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    .line 98
    iput-wide p3, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    .line 99
    iput-object p5, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    .line 100
    iput-boolean p6, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    .line 101
    iput-object p7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    .line 102
    iput-object p8, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    .line 104
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    .line 105
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    .line 107
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    .line 109
    iput-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    .line 110
    iput-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    .line 111
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    .line 112
    iput-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    .line 96
    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;[B)V
    .locals 3
    .param p1, "ctime"    # J
    .param p3, "expTime"    # J
    .param p5, "realm"    # Ljava/lang/String;
    .param p6, "checkAAACert"    # Z
    .param p7, "eapMethod"    # Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .param p8, "certType"    # Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;
    .param p9, "fingerPrint"    # [B

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-wide p1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    .line 78
    iput-wide p3, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    .line 79
    iput-object p5, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    .line 80
    iput-boolean p6, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    .line 81
    iput-object p7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    .line 82
    iput-object p8, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    .line 83
    iput-object p9, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    .line 85
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    .line 87
    iput-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    .line 89
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    .line 90
    iput-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    .line 92
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    .line 76
    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 3
    .param p1, "ctime"    # J
    .param p3, "expTime"    # J
    .param p5, "realm"    # Ljava/lang/String;
    .param p6, "checkAAACert"    # Z
    .param p7, "eapMethod"    # Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .param p8, "userName"    # Ljava/lang/String;
    .param p9, "password"    # Ljava/lang/String;
    .param p10, "machineManaged"    # Z
    .param p11, "stApp"    # Ljava/lang/String;
    .param p12, "share"    # Z

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    .line 51
    iput-wide p3, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    .line 52
    iput-object p5, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    .line 53
    iput-boolean p6, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    .line 54
    iput-object p7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    .line 55
    iput-object p8, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    .line 57
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    const/4 v1, 0x0

    invoke-static {p9, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 59
    .local v0, "pwOctets":[B
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    .line 63
    .end local v0    # "pwOctets":[B
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    .line 65
    iput-boolean p10, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    .line 66
    iput-object p11, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    .line 67
    iput-boolean p12, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    .line 70
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    .line 49
    return-void

    .line 61
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/security/KeyStore;Z)V
    .locals 12
    .param p1, "enterpriseConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-wide v10, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    .line 135
    iput-wide v10, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    .line 136
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getRealm()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    .line 137
    iput-boolean v9, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    .line 138
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v7

    .line 139
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v10

    .line 138
    invoke-static {v7, v10}, Lcom/android/server/wifi/hotspot2/pps/Credential;->mapEapMethod(II)Lcom/android/server/wifi/anqp/eap/EAPMethod;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    .line 140
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    invoke-virtual {v7}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v7

    sget-object v10, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    if-ne v7, v10, :cond_1

    sget-object v7, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;->x509v3:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    :goto_0
    iput-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    .line 143
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 146
    :try_start_0
    const-string/jumbo v7, "SHA-256"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 147
    .local v1, "digester":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 177
    .end local v1    # "digester":Ljava/security/MessageDigest;
    :goto_1
    iput-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    .line 178
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPlmn()Ljava/lang/String;

    move-result-object v5

    .line 179
    .local v5, "imsi":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    :cond_0
    move-object v7, v8

    :goto_2
    iput-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    .line 180
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    .line 182
    if-eqz p3, :cond_6

    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, 0x2

    if-ge v7, v10, :cond_6

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    .line 183
    iput-boolean v9, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    .line 184
    iput-object v8, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    .line 185
    iput-boolean v9, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    .line 133
    return-void

    .end local v5    # "imsi":Ljava/lang/String;
    :cond_1
    move-object v7, v8

    .line 140
    goto :goto_0

    .line 148
    :catch_0
    move-exception v3

    .line 149
    .local v3, "gse":Ljava/security/GeneralSecurityException;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    .line 150
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to generate certificate fingerprint: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 149
    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v2, 0x0

    .local v2, "fingerPrint":[B
    goto :goto_1

    .line 153
    .end local v2    # "fingerPrint":[B
    .end local v3    # "gse":Ljava/security/GeneralSecurityException;
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 154
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "alias":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "USRCERT_"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v6

    .line 156
    .local v6, "octets":[B
    if-eqz v6, :cond_3

    .line 158
    :try_start_1
    const-string/jumbo v7, "SHA-256"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 159
    .restart local v1    # "digester":Ljava/security/MessageDigest;
    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .local v2, "fingerPrint":[B
    goto/16 :goto_1

    .line 160
    .end local v1    # "digester":Ljava/security/MessageDigest;
    .end local v2    # "fingerPrint":[B
    :catch_1
    move-exception v3

    .line 161
    .restart local v3    # "gse":Ljava/security/GeneralSecurityException;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to construct digest: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v2, 0x0

    .local v2, "fingerPrint":[B
    goto/16 :goto_1

    .line 167
    .end local v2    # "fingerPrint":[B
    .end local v3    # "gse":Ljava/security/GeneralSecurityException;
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v7

    .line 168
    const/4 v10, 0x0

    .line 167
    invoke-static {v7, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .local v2, "fingerPrint":[B
    goto/16 :goto_1

    .line 169
    .end local v2    # "fingerPrint":[B
    :catch_2
    move-exception v4

    .line 170
    .local v4, "ie":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "Bad base 64 alias"

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v2, 0x0

    .local v2, "fingerPrint":[B
    goto/16 :goto_1

    .line 175
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "fingerPrint":[B
    .end local v4    # "ie":Ljava/lang/IllegalArgumentException;
    .end local v6    # "octets":[B
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "fingerPrint":[B
    goto/16 :goto_1

    .line 179
    .end local v2    # "fingerPrint":[B
    .restart local v5    # "imsi":Ljava/lang/String;
    :cond_5
    new-instance v7, Lcom/android/server/wifi/IMSIParameter;

    invoke-direct {v7, v5}, Lcom/android/server/wifi/IMSIParameter;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    move v7, v9

    .line 182
    goto/16 :goto_3
.end method

.method public constructor <init>(Lcom/android/server/wifi/hotspot2/pps/Credential;Ljava/lang/String;)V
    .locals 2
    .param p1, "other"    # Lcom/android/server/wifi/hotspot2/pps/Credential;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iget-wide v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    .line 117
    iget-wide v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    .line 118
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    .line 119
    iget-boolean v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    .line 120
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    .line 122
    iget-boolean v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    .line 123
    iget-boolean v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    .line 124
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    .line 125
    iget-boolean v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    .line 126
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    .line 127
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    .line 128
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    .line 129
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    .line 115
    return-void
.end method

.method public static mapCertType(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;
    .locals 3
    .param p0, "certType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 189
    const-string/jumbo v0, "x509v3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;->x509v3:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    return-object v0

    .line 191
    :cond_0
    const-string/jumbo v0, "802.1ar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    sget-object v0, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;->IEEE:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    return-object v0

    .line 194
    :cond_1
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid cert type: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static mapEapMethod(II)Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .locals 5
    .param p0, "eapMethod"    # I
    .param p1, "phase2Method"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 199
    packed-switch p0, :pswitch_data_0

    .line 228
    :pswitch_0
    if-ltz p0, :cond_0

    sget-object v2, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    array-length v2, v2

    if-ge p0, v2, :cond_0

    .line 229
    sget-object v2, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    aget-object v1, v2, p0

    .line 233
    .local v1, "methodName":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EAP method id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not valid for Passpoint"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    .end local v1    # "methodName":Ljava/lang/String;
    :pswitch_1
    new-instance v2, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    sget-object v3, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-direct {v2, v3, v4}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    return-object v2

    .line 205
    :pswitch_2
    packed-switch p1, :pswitch_data_1

    .line 216
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TTLS phase2 method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 217
    const-string/jumbo v4, " not valid for Passpoint"

    .line 216
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    :pswitch_3
    new-instance v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    sget-object v2, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->PAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    invoke-direct {v0, v2}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;-><init>(Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;)V

    .line 219
    .local v0, "inner":Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;
    :goto_1
    new-instance v2, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    sget-object v3, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TTLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-direct {v2, v3, v0}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    return-object v2

    .line 210
    .end local v0    # "inner":Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;
    :pswitch_4
    new-instance v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    sget-object v2, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->MSCHAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    invoke-direct {v0, v2}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;-><init>(Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;)V

    .line 211
    .restart local v0    # "inner":Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;
    goto :goto_1

    .line 213
    .end local v0    # "inner":Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;
    :pswitch_5
    new-instance v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    sget-object v2, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->MSCHAPv2:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    invoke-direct {v0, v2}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;-><init>(Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;)V

    .line 214
    .restart local v0    # "inner":Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;
    goto :goto_1

    .line 221
    .end local v0    # "inner":Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;
    :pswitch_6
    new-instance v2, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    sget-object v3, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SIM:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-direct {v2, v3, v4}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    return-object v2

    .line 223
    :pswitch_7
    new-instance v2, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    sget-object v3, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-direct {v2, v3, v4}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    return-object v2

    .line 225
    :pswitch_8
    new-instance v2, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    sget-object v3, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKAPrim:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-direct {v2, v3, v4}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    return-object v2

    .line 231
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "methodName":Ljava/lang/String;
    goto/16 :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 205
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "s1"    # Ljava/lang/Object;
    .param p1, "s2"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 312
    if-nez p0, :cond_1

    .line 313
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 316
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_2
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 279
    if-ne p0, p1, :cond_0

    return v7

    .line 280
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    return v6

    :cond_2
    move-object v0, p1

    .line 282
    check-cast v0, Lcom/android/server/wifi/hotspot2/pps/Credential;

    .line 284
    .local v0, "that":Lcom/android/server/wifi/hotspot2/pps/Credential;
    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    iget-boolean v2, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    if-eq v1, v2, :cond_3

    return v6

    .line 285
    :cond_3
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    iget-wide v4, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    return v6

    .line 286
    :cond_4
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    iget-wide v4, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    return v6

    .line 287
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    iget-boolean v2, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    if-eq v1, v2, :cond_6

    return v6

    .line 288
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    iget-boolean v2, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    if-eq v1, v2, :cond_7

    return v6

    .line 289
    :cond_7
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    if-eq v1, v2, :cond_8

    return v6

    .line 290
    :cond_8
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v6

    .line 291
    :cond_9
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_a

    return v6

    .line 292
    :cond_a
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    invoke-static {v1, v2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 293
    return v6

    .line 296
    :cond_b
    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 300
    :cond_c
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v6

    .line 297
    :cond_d
    return v6

    .line 301
    :cond_e
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 302
    return v6

    .line 304
    :cond_f
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 305
    return v6

    .line 308
    :cond_10
    return v7
.end method

.method public getCertType()Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    return-object v0
.end method

.method public getCtime()J
    .locals 2

    .prologue
    .line 270
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    return-wide v0
.end method

.method public getEAPMethod()Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    return-object v0
.end method

.method public getExpTime()J
    .locals 2

    .prologue
    .line 274
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    return-wide v0
.end method

.method public getFingerPrint()[B
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    return-object v0
.end method

.method public getImsi()Lcom/android/server/wifi/IMSIParameter;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public hasDisregardPassword()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    return v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 322
    iget-wide v4, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v0, v4

    .line 323
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 324
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    .line 325
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    add-int v0, v4, v1

    .line 326
    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v4, v1

    .line 327
    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int v0, v4, v1

    .line 328
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    add-int v0, v4, v1

    .line 329
    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int v0, v4, v1

    .line 330
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    if-eqz v4, :cond_6

    :goto_5
    add-int v0, v1, v2

    .line 331
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    invoke-virtual {v2}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 332
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;->hashCode()I

    move-result v1

    :goto_6
    add-int v0, v2, v1

    .line 333
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    :goto_7
    add-int v0, v2, v1

    .line 334
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    invoke-virtual {v2}, Lcom/android/server/wifi/IMSIParameter;->hashCode()I

    move-result v3

    :cond_0
    add-int v0, v1, v3

    .line 335
    return v0

    :cond_1
    move v1, v3

    .line 325
    goto :goto_0

    :cond_2
    move v1, v3

    .line 326
    goto :goto_1

    :cond_3
    move v1, v3

    .line 327
    goto :goto_2

    :cond_4
    move v1, v3

    .line 328
    goto :goto_3

    :cond_5
    move v1, v3

    .line 329
    goto :goto_4

    :cond_6
    move v2, v3

    .line 330
    goto :goto_5

    :cond_7
    move v1, v3

    .line 332
    goto :goto_6

    :cond_8
    move v1, v3

    .line 333
    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Credential{mCtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 341
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    invoke-static {v2, v3}, Lcom/android/server/wifi/hotspot2/Utils;->toUTCString(J)Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 342
    const-string/jumbo v1, ", mExpTime="

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 342
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    invoke-static {v2, v3}, Lcom/android/server/wifi/hotspot2/Utils;->toUTCString(J)Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 343
    const-string/jumbo v1, ", mRealm=\'"

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 344
    const-string/jumbo v1, ", mCheckAAACert="

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 344
    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 345
    const-string/jumbo v1, ", mUserName=\'"

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 346
    const-string/jumbo v1, ", mPassword=\'"

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 347
    const-string/jumbo v1, ", mDisregardPassword="

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 347
    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 348
    const-string/jumbo v1, ", mMachineManaged="

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 348
    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 349
    const-string/jumbo v1, ", mSTokenApp=\'"

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 350
    const-string/jumbo v1, ", mShare="

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 350
    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 351
    const-string/jumbo v1, ", mEAPMethod="

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 352
    const-string/jumbo v1, ", mCertType="

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 352
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 353
    const-string/jumbo v1, ", mFingerPrint="

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 354
    const-string/jumbo v1, ", mImsi=\'"

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 355
    const/16 v1, 0x7d

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
