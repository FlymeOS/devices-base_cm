.class public Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "AndroidKeyStoreSecretKeyFactorySpi.java"


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    .line 43
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    .line 41
    return-void
.end method

.method static getKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Landroid/security/keystore/KeyInfo;
    .locals 36
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "entryAlias"    # Ljava/lang/String;
    .param p2, "keyAliasInKeystore"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v25, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct/range {v25 .. v25}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 76
    .local v25, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I

    move-result v23

    .line 77
    .local v23, "errorCode":I
    const/4 v4, 0x1

    move/from16 v0, v23

    if-eq v0, v4, :cond_0

    .line 78
    new-instance v4, Ljava/security/ProviderException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Failed to obtain information about key. Keystore error: "

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 93
    :cond_0
    :try_start_0
    move-object/from16 v0, v25

    iget-object v4, v0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v5, 0x100002be

    invoke-virtual {v4, v5}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    const/4 v6, 0x1

    .line 96
    .local v6, "insideSecureHardware":Z
    move-object/from16 v0, v25

    iget-object v4, v0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v5, 0x100002be

    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v4

    .line 95
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$Origin;->fromKeymaster(I)I

    move-result v7

    .line 105
    .local v7, "origin":I
    :goto_0
    const-wide/16 v4, -0x1

    const v18, 0x30000003

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4, v5}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    move-result-wide v26

    .line 106
    .local v26, "keySizeUnsigned":J
    const-wide/16 v4, -0x1

    cmp-long v4, v26, v4

    if-nez v4, :cond_3

    .line 107
    new-instance v4, Ljava/security/ProviderException;

    const-string/jumbo v5, "Key size not available"

    invoke-direct {v4, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v6    # "insideSecureHardware":Z
    .end local v7    # "origin":I
    .end local v26    # "keySizeUnsigned":J
    :catch_0
    move-exception v20

    .line 149
    .local v20, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/security/ProviderException;

    const-string/jumbo v5, "Unsupported key characteristic"

    move-object/from16 v0, v20

    invoke-direct {v4, v5, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 97
    .end local v20    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :try_start_1
    move-object/from16 v0, v25

    iget-object v4, v0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v5, 0x100002be

    invoke-virtual {v4, v5}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 98
    const/4 v6, 0x0

    .line 100
    .restart local v6    # "insideSecureHardware":Z
    move-object/from16 v0, v25

    iget-object v4, v0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v5, 0x100002be

    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v4

    .line 99
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$Origin;->fromKeymaster(I)I

    move-result v7

    .restart local v7    # "origin":I
    goto :goto_0

    .line 102
    .end local v6    # "insideSecureHardware":Z
    .end local v7    # "origin":I
    :cond_2
    new-instance v4, Ljava/security/ProviderException;

    const-string/jumbo v5, "Key origin not available"

    invoke-direct {v4, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 108
    .restart local v6    # "insideSecureHardware":Z
    .restart local v7    # "origin":I
    .restart local v26    # "keySizeUnsigned":J
    :cond_3
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v26, v4

    if-lez v4, :cond_4

    .line 109
    new-instance v4, Ljava/security/ProviderException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Key too large: "

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v18, " bits"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 111
    :cond_4
    move-wide/from16 v0, v26

    long-to-int v8, v0

    .line 113
    .local v8, "keySize":I
    const v4, 0x20000001

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v4

    .line 112
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$Purpose;->allFromKeymaster(Ljava/util/Collection;)I

    move-result v12

    .line 115
    .local v12, "purposes":I
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v22, "encryptionPaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v33, "signaturePaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v4, 0x20000006

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, "keymasterPadding$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v29

    .line 121
    .local v29, "keymasterPadding":I
    :try_start_2
    invoke-static/range {v29 .. v29}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v24

    .line 122
    .local v24, "jcaPadding":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 123
    .end local v24    # "jcaPadding":Ljava/lang/String;
    :catch_1
    move-exception v20

    .line 126
    .restart local v20    # "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-static/range {v29 .. v29}, Landroid/security/keystore/KeyProperties$SignaturePadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v32

    .line 127
    .local v32, "padding":Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 128
    .end local v32    # "padding":Ljava/lang/String;
    :catch_2
    move-exception v21

    .line 129
    .local v21, "e2":Ljava/lang/IllegalArgumentException;
    :try_start_4
    new-instance v4, Ljava/security/ProviderException;

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Unsupported encryption padding: "

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-direct {v4, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 136
    .end local v20    # "e":Ljava/lang/IllegalArgumentException;
    .end local v21    # "e2":Ljava/lang/IllegalArgumentException;
    .end local v29    # "keymasterPadding":I
    :cond_5
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    .line 138
    .local v13, "encryptionPaddings":[Ljava/lang/String;
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    .line 141
    .local v14, "signaturePaddings":[Ljava/lang/String;
    const v4, 0x20000005

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v4

    .line 140
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$Digest;->allFromKeymaster(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v15

    .line 143
    .local v15, "digests":[Ljava/lang/String;
    const v4, 0x20000004

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v4

    .line 142
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$BlockMode;->allFromKeymaster(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v16

    .line 145
    .local v16, "blockModes":[Ljava/lang/String;
    move-object/from16 v0, v25

    iget-object v4, v0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v5, 0x100001f8

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v31

    .line 147
    .local v31, "keymasterSwEnforcedUserAuthenticators":I
    move-object/from16 v0, v25

    iget-object v4, v0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v5, 0x100001f8

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v28

    .line 152
    .local v28, "keymasterHwEnforcedUserAuthenticators":I
    const v4, 0x60000190

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    move-result-object v9

    .line 154
    .local v9, "keyValidityStart":Ljava/util/Date;
    const v4, 0x60000191

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    move-result-object v10

    .line 156
    .local v10, "keyValidityForOriginationEnd":Ljava/util/Date;
    const v4, 0x60000192

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    move-result-object v11

    .line 158
    .local v11, "keyValidityForConsumptionEnd":Ljava/util/Date;
    const v4, 0x700001f7

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/security/keymaster/KeyCharacteristics;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v17, 0x0

    .line 160
    .local v17, "userAuthenticationRequired":Z
    :goto_2
    const-wide/16 v4, -0x1

    const v18, 0x300001f9

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4, v5}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    move-result-wide v34

    .line 161
    .local v34, "userAuthenticationValidityDurationSeconds":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v34, v4

    if-lez v4, :cond_7

    .line 162
    new-instance v4, Ljava/security/ProviderException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "User authentication timeout validity too long: "

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v34

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 163
    const-string/jumbo v18, " seconds"

    .line 162
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 158
    .end local v17    # "userAuthenticationRequired":Z
    .end local v34    # "userAuthenticationValidityDurationSeconds":J
    :cond_6
    const/16 v17, 0x1

    .restart local v17    # "userAuthenticationRequired":Z
    goto :goto_2

    .line 165
    .restart local v34    # "userAuthenticationValidityDurationSeconds":J
    :cond_7
    if-eqz v17, :cond_9

    .line 166
    if-eqz v28, :cond_9

    .line 167
    if-nez v31, :cond_8

    const/16 v19, 0x1

    .line 169
    .local v19, "userAuthenticationRequirementEnforcedBySecureHardware":Z
    :goto_3
    new-instance v4, Landroid/security/keystore/KeyInfo;

    .line 182
    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v5, p1

    .line 169
    invoke-direct/range {v4 .. v19}, Landroid/security/keystore/KeyInfo;-><init>(Ljava/lang/String;ZIILjava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZIZ)V

    return-object v4

    .line 167
    .end local v19    # "userAuthenticationRequirementEnforcedBySecureHardware":Z
    :cond_8
    const/16 v19, 0x0

    .restart local v19    # "userAuthenticationRequirementEnforcedBySecureHardware":Z
    goto :goto_3

    .line 165
    .end local v19    # "userAuthenticationRequirementEnforcedBySecureHardware":Z
    :cond_9
    const/16 v19, 0x0

    .restart local v19    # "userAuthenticationRequirementEnforcedBySecureHardware":Z
    goto :goto_3
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 3
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "To generate secret key in Android Keystore, use KeyGenerator initialized with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 190
    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 5
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .param p2, "keySpecClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 48
    if-nez p2, :cond_0

    .line 49
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v3, "keySpecClass == null"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_0
    instance-of v2, p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-nez v2, :cond_2

    .line 52
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Only Android KeyStore secret keys supported: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 53
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 52
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    :cond_1
    const-string/jumbo v2, "null"

    goto :goto_0

    .line 55
    :cond_2
    const-class v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 56
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    .line 57
    const-string/jumbo v3, "Key material export of Android KeyStore keys is not supported"

    .line 56
    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_3
    const-class v2, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 60
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported key spec: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_4
    check-cast p1, Landroid/security/keystore/AndroidKeyStoreKey;

    .end local p1    # "key":Ljavax/crypto/SecretKey;
    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "keyAliasInKeystore":Ljava/lang/String;
    const-string/jumbo v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 65
    const-string/jumbo v2, "USRSKEY_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "entryAlias":Ljava/lang/String;
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v2, v0, v1}, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->getKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Landroid/security/keystore/KeyInfo;

    move-result-object v2

    return-object v2

    .line 67
    .end local v0    # "entryAlias":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid key alias: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 2
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 195
    if-nez p1, :cond_0

    .line 196
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-nez v0, :cond_1

    .line 198
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 199
    const-string/jumbo v1, "To import a secret key into Android Keystore, use KeyStore.setEntry"

    .line 198
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    return-object p1
.end method
